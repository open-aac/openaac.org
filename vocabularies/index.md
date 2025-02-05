---
layout: page
title: Vocabularies
page_title: Vocabularies
description: Apples-to-Apples Comparisons
include_nav: true
bg: 3
---
<style>
  #vocabs .name img {
    display: block;
    width: 140px;
    height: 140px;
    object-fit: contain;
    object-position: center;
  }
  #vocabs .apps {
    font-size: 13px;
    line-height: 18px;
    margin-top: 10px;
  }
  #vocabs .care.top {
    font-size: 18px;
    color: #999
    /*color: rgb(78, 72, 82);*/
    white-space: nowrap;
  }
  #vocabs .care div {
    font-size: 16px;
    color: #999;
    white-space: nowrap;
  }
  #vocabs .care div.top {
    font-size: 18px;
    /* color: rgb(78, 72, 82); */
  }
  #vocabs .care div.full {
    font-size: 24px;
    color: rgb(78, 72, 82);
    margin-bottom: 10px;
  }
  #vocabs .care div.full > div {
    font-size: 13px;
    font-style: italic;
    margin-top: -5px;
    font-weight: normal;
  }
  a.caption {
    display: inline-block;
    padding: 5px 10px;
    border: 1px solid #aaa;
    border-radius: 10px;
    margin-bottom: 10px;
    text-align: center;
    max-width: 50%;
    margin-right: 15px;
  }
  a.caption img {
    height: 110px;
    object-fit: contain;
    object-position: center;
    display: block;
    margin: 0 auto;
    max-width: 200px;
  }
  a.caption.wide {
    min-width: 225px;
    max-width: 50%;
  }
  a.caption .sub {
    display: block;
    height: 43px;
    color: #888;
    overflow: hidden;
    font-weight: normal;
    max-width: 200px;
    font-size: 13px;
    line-height: 14px;
    margin: 0 auto;
  }
  #apps_list {
    margin: 20px 0;
  }
  .vocab_preview {
    width: 400px; 
    max-width: 100%; 
    max-height: 400px;
    object-fit: contain;
    object-position: center;
    float: right; 
    border: 1px solid #888; 
    border-radius: 5px; 
    padding: 5px;
    margin: 5px; 
  }
</style>
<h2>AAC Vocabulary</h2>
<img id='pic1' class='vocab_preview' style='display: none; float: right;'/>
<p>If you haven't been involved in AAC for long, you may not 
realize just how different AAC layouts can be. 
Some approaches work to include as
many fringe words as possible, some focus on minimizing button hits or keeping organization intuitive. It's great to have
variety! It's also important to understand what approaches
are used where, which can affect which apps you choose
to work with.</p>
<div style='clear: both;'></div>
<h2>Vocabularies aren't Apps</h2>
<img id='pic2' class='vocab_preview' style='display: none; float: right;'/>
<p>
  Sometimes people start equating AAC <i>apps</i> with AAC
  <i>vocabularies</i>, especially since some apps only offer
  a single vocabulary. It's important, though, to remember
  that the organization and strategy of an AAC 
  vocabulary is different than the technical features
  of the apps that deliver the vocabulary. Thinking
  vocabulary-specific helps us identify patterns and 
  approaches that are used across apps, and that work
  best for different use cases.
</p>
<img src='https://www.openboardformat.org/care_report.svg' style='float: left; margin-right: 10px; width: 100px;'/>
<p>
  We have created an evaluation engine that measures the
  efficiency of selecting a collection of core and fringe words,
  specific sequenced sentences, and other criteria, to come
  up with an apples-to-apples comparison of different AAC
  vocabularies. We call this the <a href="https://www.openboardformat.org/analysis">CARE (Core, Access, Repeatability, Effort) Efficiency Score</a>, and we hope it can
  provide value as people consider different AAC apps
  and vocabularies for use.
</p>
<div style='clear: both;'></div>

<h2>AAC Vocabularies</h2>
<!--
  Vocabulary categories/approaches:
    - semantic compaction
    - core + motor planning
    - core + categories
    - natural sequencing
    - pragmatic organization
  Criteria
    - max depth (quant)
    - conjugation (quant)
    - research behind vocab
    - motor planning
    - editability
    - medical vocabulary (body parts, sexuality)
    - adult vocabulary (life topics)
    - disability advocacy vocabulary
    - swear words


I want to go home
I need mom
Where are we going now
Thing Explainer examples
Let's go! Can we go to the park now?
One fish two fish red fish blue fish, other books
My name is Donnie, my pronouns are they/them or xe/xem. I am a master's of public health student at [school name] and an autistic self-advocate. My research focuses on the needs of disabled adults in accessing sexual and reproductive health care. I work for my school's newspaper and I enjoy knitting, crochet, and graphic design in my spare time.
I don't like pineapple on my pizza. 
Can you show me how to do it? 
Look what I see.
I'm sad because my pet is dead
Can you come to my house for tea?
My head hurts. 
She is pretty. 
I don't like that. 
Go away. 
Put it in there. 
My mom likes bread.
I have something to say, 
That's not what I meant
Let me speak. 
I use this device to speak. 
I can speak for myself.
A moment, please.
*It takes me longer to type that it does you to speak.
*I'm an adult. Treat me like one.
*Don't touch my device/don't touch me at all.
*I don't do eye contact.
I didn’t mean to say that.
Leave me alone.
Don’t touch me.
I can do it.
abrupt, accept, hope, wish, meal, comply
    - 
-->
<div style='margin-bottom: 25px;'>
  Filter:
  <select id='filter_platform' style='display: inline-block; width: 200px;'>
    <option value='all'>All Platforms</option>
    <option value='ios'>iOS</option>
    <option value='windows'>Windows</option>
    <option value='android'>Android</option>
    <option value='web'>Web</option>
  </select>
  <select id='filter_grid' style='display: inline-block; width: 200px;'>
    <option value='all'>All Grid Sizes</option>
    <option value='0-19'>Under 20 Buttons</option>
    <option value='20-40'>20-40 Buttons</option>
    <option value='41-60'>41-60 Buttons</option>
    <option value='61-999'>61+ Buttons</option>
  </select>
  <select id='filter_category' style='display: inline-block; width: 200px;'>
    <option value='all'>All Categories</option>
    <option value='motor'>Motor Planning</option>
    <option value='category'>Category-Based</option>
    <option value='pragmatic'>Pragmatic</option>
    <option value='keyboard'>Keyboard</option>
  </select>
  <select id='filter_license' style='display: inline-block; width: 200px;'>
    <option value='all'>All Licenses</option>
    <option value='open'>Open Vocabularies</option>
    <option value='closed'>Proprietary Vocabularies</option>
  </select>
  <a href="#" id='filter_clear'>clear filters</a>
</div>
<div style='max-width: 100%; overflow: auto;'>
<table id='vocabs'>
  <thead>
    <tr>
      <th><a href="#" id='sort_vocab'>Vocabulary</a> (<span id='result_count'></span>)</th>
      <th>License & Apps</th>
      <th><a href="#" id='sort_care'>CARE Scores</a>
        <a href="https://www.openboardformat.org/analysis" style='border-bottom: 0;'>
          <span class='icon fa-info' style='display: inline-block; border: 2px solid #fff; color: #fff; background: rgba(0, 0, 0, 0.6); text-align: center; text-decoration: none; border-radius: 50px; width: 30px; height: 30px;'></span>
        </a>
      </th>
      <th>Description</th>
    </tr>
  </thead>
  <tbody>
    <tr class='template' style='display: none;'>
      <td><a class='name'>Quick Core 24</a></td>
      <td>
        <div class='license'>CC-By</div>
        <div class='apps'>CoughDrop</div>
      </td>
      <td class='care'>153.0</td>
      <td class='desc'>...</td>
    </tr>
  </tbody>
</table>
</div>
<script>
  document.querySelector('#filter_category').addEventListener('change', function(e) {
    render.filter_category = document.querySelector('#filter_category').value;
    render();
  });
  document.querySelector('#filter_grid').addEventListener('change', function(e) {
    render.filter_grid = document.querySelector('#filter_grid').value;
    render();
  });
  document.querySelector('#filter_license').addEventListener('change', function(e) {
    render.filter_license = document.querySelector('#filter_license').value;
    render();
  });
  document.querySelector('#filter_platform').addEventListener('change', function(e) {
    render.filter_platform = document.querySelector('#filter_platform').value;
    render();
  });
  document.querySelector('#filter_clear').addEventListener('click', function(e) {
    e.preventDefault();
    document.querySelector('#filter_category').value = 'all';
    document.querySelector('#filter_grid').value = 'all';
    document.querySelector('#filter_license').value = 'all';
    document.querySelector('#filter_platform').value = 'all';
    render.filter_category = false;
    render.filter_grid = false;
    render.filter_license = false;
    render.filter_platform = false;
    render();
  });
  document.querySelector('#sort_vocab').addEventListener('click', function(e) {
    e.preventDefault();
    if(render.sort == 'vocaba') {
      render.sort = 'vocabz';
    } else {
      render.sort = 'vocaba';
    }
    render();
  });
  document.querySelector('#sort_care').addEventListener('click', function(e) {
    e.preventDefault();
    if(render.sort == 'care9') {
      render.sort = 'care0';
    } else {
      render.sort = 'care9';
    }
    render();
  });
  var apps_hash = {}
  window.app_list.forEach(function(app) {
    apps_hash[app.id] = app;
  });
  var rendered = false;
  var render = function() {
    var vocabs = document.getElementById('vocabs');
    var template = vocabs.querySelectorAll('tr.template')[0];
    vocabs.querySelectorAll('tbody tr:not(.template)').forEach(function(elem) {
      elem.parentNode.removeChild(elem);
    });
    var list = [].concat(window.vocab_list || []);
    if(list.length == 0) {
      list.push({name: "None available", desc: " ", rank: 1});
    }
    var day = (new Date()).getDate();
    list = window.shuffle(list, day);
    var start_num = (day / 31) - 0.5;
    if(day % 2 == 0) { start_num = start_num * -1; }
    list = list.sort(function(a, b) {
      if(render.sort == 'vocaba') {
        return a.name.localeCompare(b.name);
      } else if(render.sort == 'vocabz') {
        return b.name.localeCompare(a.name);
      } else if(render.sort == 'care9') {
        return b.care_combined - a.care_combined;
        return ((b.care_score || 0) + (b.care_rating || [0])[0]) - ((a.care_score || 0) + (a.care_rating || [0])[0]);
      } else if(render.sort == 'care0') {
        return a.care_combined - b.care_combined;
        return ((a.care_score || 0) + (a.care_rating || [0])[0]) - ((b.care_score || 0) + (b.care_rating || [0])[0]);
      }
      if(a.rank != b.rank) {
        return a.rank - b.rank;
      }
      start_num = start_num + 0.25;
      if(start_num > 1.0) { start_num = -1; }
      return start_num;
      // return Math.random() - 0.5;
      // return a.name.localeCompare(b.name);
    })
    var valids = list.filter(function(i) { 
      if(render.filter_category && render.filter_category != 'all') {
        if(!i.categories || i.categories.indexOf(render.filter_category) == -1) { 
          return false;
        }
      }
      if(render.filter_grid && render.filter_grid != 'all') {
        var parts = render.filter_grid.split(/-/);
        var min = parseInt(parts[0], 10);
        var max = parseInt(parts[1], 10);
        var sizes = i.sizes || [i];
        var any_match = false;
        sizes.forEach(function(s) {
          var grid = s.rows * s.columns;
          if(grid >= min && grid <= max) {
            any_match = true;
          }
        });
        if(!any_match) { return false; }
      }
      if(render.filter_license && render.filter_license != 'all') {
        if(render.filter_license == 'open' && (i.license || 'Private').match(/private/i)) {
          return false;
        } else if(render.filter_license == 'closed' && !(i.license || 'Private').match(/private/i)) {
          return false;
        }
      }
      if(render.filter_platform && render.filter_platform != 'all') {
        var match = (i.platforms).find(function(p) { return p.toLowerCase() == render.filter_platform; });
        if(!match) { return false; }
      }
      return i.reviewed; 
    });
    if(!rendered) {
      pics = valids.filter(function(i) { return i.sizes || i.preview_url; });
      if(pics[0]) {
        var img = document.querySelector('#pic1');
        img.src = (pics[0].sizes || [pics[0]])[0].preview_url;
        img.style.display = 'inline';
      }
      if(pics[1]) {
        var img = document.querySelector('#pic2');
        img.src = (pics[1].sizes || [pics[1]])[0].preview_url;
        img.style.display = 'inline';
      }
      rendered = true;
    }
    document.querySelector('#result_count').innerText = valids.length;
    valids.forEach(function(item) {
      var vocab = template.cloneNode(true);
      vocab.classList.remove('template');
      vocab.querySelector('.name').setAttribute('href', "/vocabularies/" + item.id);
      vocab.querySelector('.name').innerText = item.name;
      if(item.image_url) {
        var img = document.createElement('img');
        img.src = item.image_url;
        vocab.querySelector('.name').appendChild(img);
      }
      vocab.querySelector('.apps').innerText = "";
      item.apps_ranked = [];
      // TODO: include 
      (item.apps).forEach(function(app) {
        var app_ref = Object.assign({}, apps_hash[app] || {name: app});
        if(app_ref.reviewed > 0) {
          app_ref.rank = 1;
        } else if(app_ref.reviewed === 0) {
          app_ref.rank = 2;
        } else {
          app_ref.rank = 3;
        }
        item.apps_ranked.push(app_ref)
      });

      item.apps_ranked = shuffle(item.apps_ranked, (new Date()).getDate()).sort(function(a, b) { return a.rank - b.rank; });
      var apps = item.apps_ranked.map(function(a) { return a.name; });
      if(apps.length > 5) {
        apps = apps.slice(0, 5)
        apps.push("...");
      }
      (apps || []).forEach(function(app) {
        var div = document.createElement('div');
        div.innerText = app;
        vocab.querySelector('.apps').appendChild(div);
      });
      vocab.querySelector('.license').innerText = item.license;
      var max_score = 0;
      if(item.sizes) {
        vocab.querySelector('.care').innerHTML = "<div style='font-size: 12px; margin-bottom: -10px;'>Grid scores:<div>";
        var top = 0;
        item.sizes.forEach(function(size) {
          if(size.care_score > top) {
            top = size.care_score;
            max_score = top;
          }
        });
        item.sizes.forEach(function(size) {
          var div = document.createElement('div');
          div.innerText = size.rows + "x" + size.columns + " - " + size.care_score;
          if(top == size.care_score) {
            div.classList.add('top');
          }
          vocab.querySelector('.care').appendChild(div);
        })
      } else {
        vocab.querySelector('.care').classList.add('top');
        vocab.querySelector('.care').innerHTML = "<div>" + item.rows + "x" + item.columns + " - " + item.care_score + "</div>";
        max_score = parseFloat(item.care_score) || 0;
      }
      var max_care_score = max_score;
      var voters = 0;
      if(item.care_rating) {
        max_score = max_score + item.care_rating[0];
        voters = item.care_rating[1] || 0;
      }
      
      var div = document.createElement('div');
      div.innerText = "Full: " + ((Math.round(max_score * 100) / 100) || "N/A");
      var d2 = document.createElement('div');
      d2.innerText = "from " + voters + " reviews";
      if(voters == 0) { d2.innerText = "incomplete, no reviews"; }
      else if(!max_care_score) { d2.innerText = "incomplete grid score"; }
      div.appendChild(d2);
      div.classList.add('full');
      vocab.querySelector('.care').prepend(div);

      vocab.querySelector('.desc').innerText = item.summary;
      vocab.style.display = 'table-row';
      vocabs.querySelector('tbody').appendChild(vocab);
    });
  };
  render();
</script>

<p>Is your vocabulary missing from our list? Let us know
and we'll get it added! Please consider providing a .obz file
containing your vocabulary to make it easier for us to
process it.</p>