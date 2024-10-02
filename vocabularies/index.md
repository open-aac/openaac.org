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
  }
  #vocabs .care div {
    font-size: 16px;
  }
  #vocabs .care div.top {
    font-size: 20px;
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
</style>
<p>
  Because 
  Part of OpenAAC's focus is to establish minimum standards of quality, and to do so in an openly-documented
  manner. We believe that standards can improve 
  technology for AAC users, developers, specialists, and 
  everyone else. Toward that work, we release
  a set of minimum standards for different aspects of the
  AAC toolset, and certify annual compliance by participating
  vendors.
</p>
<h2>AAC Vocabularies</h2>
<table id='vocabs'>
  <thead>
    <tr>
      <th>Vocabulary</th>
      <th>Available Apps</th>
      <th>License</th>
      <th>CARE Efficiency Score</th>
      <th>Description</th>
    </tr>
  </thead>
  <tbody>
    <tr class='template' style='display: none;'>
      <td class='name'>Quick Core 24</td>
      <td class='apps'>CoughDrop</td>
      <td class='license'>CC-By</td>
      <td class='care'>153.0</td>
      <td class='desc'>...</td>
    </tr>
  </tbody>
</table>

<script>
  var vocabs = document.getElementById('vocabs');
  var template = vocabs.querySelectorAll('tr.template')[0];
  var list = [].concat(window.vocab_list || []);
  if(list.length == 0) {
    list.push({name: "None available", desc: " ", rank: 1});
  }
  var start_num = ((new Date()).getDate() / 30) - 0.5;
  list = list.sort(function(a, b) {
    if(a.rank != b.rank) {
      return a.rank - b.rank;
    }
    start_num = start_num * -1;
    return start_num;
    // return Math.random() - 0.5;
    // return a.name.localeCompare(b.name);
  })
  list.forEach(function(item) {
    var vocab = template.cloneNode(true);
    vocab.querySelector('.name').innerText = item.name;
    if(item.image_url) {
      var img = document.createElement('img');
      img.src = item.image_url;
      vocab.querySelector('.name').appendChild(img);
    }
    vocab.querySelector('.apps').innerText = "";
    (item.apps || []).forEach(function(app) {
      var div = document.createElement('div');
      div.innerText = app;
      vocab.querySelector('.apps').appendChild(div);
    });
    vocab.querySelector('.license').innerText = item.license;
    if(item.sizes) {
      vocab.querySelector('.care').innerText = "";
      var top = 0;
      item.sizes.forEach(function(size) {
        if(size.care_score > top) {
          top = size.care_score;
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
      vocab.querySelector('.care').innerText = item.rows + "x" + item.columns + " - " + item.care_score;
    }
    vocab.querySelector('.desc').innerText = item.description;
    vocab.style.display = 'table-row';
    vocabs.querySelector('tbody').appendChild(vocab);
  });
</script>

<p>Interested in certifying? Review our 
<a href="https://docs.google.com/document/d/16cDEuHyfhb5xBk-UtEUOVpT0jrnEHwCabFACHM7DVGY/edit?usp=sharing">AAC Application Certification Requirements</a> for 
more information on requirements and on the review process.</p>

<h2>Additional Certifications</h2>
<p>We plan to implement additional certifications in the near-term, but are beginning with AAC applications since they provide the most opportunity for an impact of change.</p>
