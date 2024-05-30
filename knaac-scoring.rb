require 'csv'
require 'json'
public_weight = ARGV[1].to_f
judge_emails = ARGV[2].split(',')
path = File.join(Dir.pwd, ARGV[0])
csv = CSV.read(path, headers: true)
categories = {}
def split_head(str)
  (str || '').split(/\[/, 2)
end
csv.headers.each do |head|
  # parse out categories and candidates
  cat, cand = split_head(head)
  if cat && cand
    categories[cat] ||= {}
    categories[cat]['original'] ||= []
    categories[cat]['winners'] ||= []
    categories[cat]['original'] << cand[0.. -2]
    categories[cat]['current'] = [].concat(categories[cat]['original'])
  end
end
total_public = 0
total_private = 0
# calculate weight for judge email addresses
total_votes_per_cat = {}
csv.each do |row|
  voted_cats = {}
  row.each do |key, val|
    cat, cand = split_head(key)
    if cat && cand && val && val.length > 0
      voted_cats[cat] = true
    end
  end
  voted_cats.each do |cat, val|
    total_votes_per_cat[cat] ||= 0
    total_votes_per_cat[cat] += 1
  end
  if judge_emails.include?(row['Email Address'])
    total_private += 1
  else
    total_public += 1
  end
end
private_weight = (total_public / public_weight) * (1 - public_weight) / [total_private, 1].max
private_weights = {}
total_votes_per_cat.each do |cat, total|
  private_weights[cat] = (total * (1 - public_weight)) / [total_private, 1].max
end
puts private_weights.to_json

puts "JUDGES: #{total_private} #{private_weight}"
choice_positions = {'First Choice' => 0, 'Second Choice' => 1, 'Third Choice' => 2}
round = 0
# for each category, figure out the top vote, drop it
# as a candidate, then use the remaining candidates to 
# figure out the next-ranked winner
while categories.any?{|cat, hash| hash['current'].length > 0}
  round += 1
  category_votes = {}
  categories.each do |cat, hash|
    category_votes[cat] = {}
    hash['current'].each do |cand|
      category_votes[cat][cand] = 0
    end
  end
  while category_votes.any?{|cat, hash| !hash['done'] }
    # calculate the multiplier for judge-level users
    # for each user, pass one vote per category
    csv.each do |row|
      vote = {}
      # find the highest vote that works for a still-available candidate
      row.each do |header, value|
        if choice_positions[value]
          cat, cand = split_head(header)
          if cat && cand
            vote[cat] ||= []
            vote[cat][choice_positions[value]] = cand[0..-2]
          end
        end
      end
      vote.each do |cat, cands|
        first_cand = cands.compact.detect{|c| category_votes[cat][c] }
        if first_cand && !category_votes[cat]['done']
          weight = judge_emails.include?(row['Email Address']) ? (private_weights[cat] || private_weight) : 1
          category_votes[cat][first_cand] += weight
        end
      end
    end
    # puts JSON.pretty_generate(category_votes['Symbol-Centric AAC App of the Year '])

    category_votes.each do |cat, hash|
      vote_hash = hash.except('done')
      # stop dropping when everyone left has tied for votes
      total = vote_hash.to_a.map(&:last).sum
      lowest = vote_hash.to_a.map(&:last).sort.first
      highest = vote_hash.to_a.map(&:last).sort.last
      if lowest == highest
        category_votes[cat]['done'] = true
      elsif highest.to_f / total >= 0.5
        # stop if there's a majority winner
        remaining = vote_hash.to_a.select{|cand, score| score == highest }.map(&:first)
        dropped = vote_hash.to_a.map(&:first) - remaining
        dropped.each do |cand|
          category_votes[cat].delete(cand)
        end
      else
        # find the lowest-voted candidate and remove them
        remaining = vote_hash.to_a.select{|cand, score| score > lowest }.map(&:first)
        dropped = vote_hash.to_a.map(&:first) - remaining
        dropped.each do |cand|
          category_votes[cat].delete(cand)
        end
      end
      # clear prior votes to prepare for the next round
      if !category_votes[cat]['done']
        category_votes[cat].each do |cand, val|
          #category_votes[cat][cand] = 0 unless cand == 'done'
        end
      end
    end
  end
  # add the remaining candidates to the winner list
  category_votes.each do |cat, hash|
    hash.delete('done')
    categories[cat]['winners'] += hash.keys
    categories[cat]['winners_hash'] ||= {}
    if hash.keys.length > 0
      categories[cat]['winners_hash'][round] = hash
    end
    categories[cat]['current'] -= hash.keys
  end
end
puts JSON.pretty_generate(categories)
puts "\n\n\n"
