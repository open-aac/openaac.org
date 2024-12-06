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
    font-size: 20px;
    color: rgb(78, 72, 82);
    white-space: nowrap;
  }
  #vocabs .care div {
    font-size: 16px;
    color: #999;
    white-space: nowrap;
  }
  #vocabs .care div.top {
    font-size: 20px;
    color: rgb(78, 72, 82);
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
-->
<div style='max-width: 100%; overflow: auto;'>
<table id='vocabs'>
  <thead>
    <tr>
      <th>Vocabulary</th>
      <th>License & Apps</th>
      <th>CARE Efficiency Score</th>
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
  var valids = list.filter(function(i) { return i.reviewed; });
  if(valids[0]) {
    var img = document.querySelector('#pic1');
    img.src = (valids[0].sizes || [valids[0]])[0].preview_url;
    img.style.display = 'inline';
  }
  if(valids[1]) {
    var img = document.querySelector('#pic2');
    img.src = (valids[1].sizes || [valids[1]])[0].preview_url;
    img.style.display = 'inline';
  }
  valids.forEach(function(item) {
    var vocab = template.cloneNode(true);
    vocab.querySelector('.name').setAttribute('href', "/vocabularies/" + item.id);
    vocab.querySelector('.name').innerText = item.name;
    if(item.image_url) {
      var img = document.createElement('img');
      img.src = item.image_url;
      vocab.querySelector('.name').appendChild(img);
    }
    vocab.querySelector('.apps').innerText = "";
    var apps = [].concat(item.apps);
    if(apps.length > 5) {
      apps = apps.sort(function(a, b) {
        start_num = start_num * -1;
        return start_num;
      });
      apps = apps.slice(0, 5)
      apps.push("...");
    }
    (apps || []).forEach(function(app) {
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
      vocab.querySelector('.care').classList.add('top');
      vocab.querySelector('.care').innerText = item.rows + "x" + item.columns + " - " + item.care_score;
    }
    vocab.querySelector('.desc').innerText = item.summary;
    vocab.style.display = 'table-row';
    vocabs.querySelector('tbody').appendChild(vocab);
  });
</script>

<p>Is your vocabulary missing from our list? Let us know
and we'll get it added! Please consider providing a .obz file
containing your vocabulary to make it easier for us to
process it.</p>