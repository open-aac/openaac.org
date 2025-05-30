---
layout: page
title: Certifications
page_title: Certifications
description: Ensuring Quality Solutions for All
include_nav: true
bg: 3
---
<style>
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
  #apps_list a.caption {
    box-shadow: 3px 3px 5px  #777;
  }
  #other_apps_list {
    margin: 20px 0;
  }
  #other_apps_list a.caption {
    min-width: 125px;
    max-width: 25%;
    filter: grayscale(100%);
    opacity: 0.5;
    font-size: 14px;
  }
  #other_apps_list a.caption .name {
    white-space: nowrap;
    max-width: 100px;
    overflow: hidden;
    display: block;
  }
  #other_apps_list a.caption  img {
    max-width: 125px;
    height: 80px;
  }
  #other_apps_list a.caption  .sub {
    display: none;
  }
</style>
<p>
  Part of OpenAAC's focus is to establish minimum standards of quality, and to do so in an openly-documented
  manner. We believe that standards can improve 
  technology for AAC users, developers, specialists, and 
  everyone else. Toward that work, we release
  a set of minimum standards for different aspects of the
  AAC toolset, and certify annual compliance by participating
  vendors.
</p>
<h2>AAC Applications</h2>
<img src='/images/certs/open-aac-seal.png' class='preview' style='max-width: 200px; float: left; margin-right: 10px; margin-bottom: 5px;'/>
<p>
  Finding the right AAC app can be difficult. You want to find
  something that fits right, and that can take time, and trial
  and error. You don't want to waste time on a low-quality or
  unmaintained app. At OpenAAC we work to certify apps to ensure
  a minimum standard, so people have one less thing to worry 
  about when journeying through the world of AAC.</p>
<p>
  To certify, AAC apps must meet a 
  <a href="https://docs.google.com/document/d/16cDEuHyfhb5xBk-UtEUOVpT0jrnEHwCabFACHM7DVGY/edit?usp=sharing">baseline of requirements</a>,
  and they can also certify under specializations
  for things like robust
  vocabulary or symbol library, or for accessibility. Below is
  a list of common AAC applications, highlighting those that have certified in the last 18 months.
</p>

<div id='apps_list'>
<a href="https://www.inmaninnovations.com/" class="caption wide" style='display: none;'>
  <img src="/images/2024/wordpower.jpeg" alt="">
  <span class='name'>WordPower</span>
  <span class="sub">Nancy Inman’s popular sequenced vocabulary is available on many apps</span>
</a>
</div>
<div id='other_apps_list'>
<a href="https://www.inmaninnovations.com/" class="caption wide" style='display: none;'>
  <img src="/images/2024/wordpower.jpeg" alt="">
  <span class='name'>WordPower</span>
  <span class="sub">Nancy Inman’s popular sequenced vocabulary is available on many apps</span>
</a>
</div>
<script>
  var apps = document.getElementById('apps_list');
  var other_apps = document.getElementById('other_apps_list');
  var app_template = apps.querySelectorAll('.caption')[0];
  var list = window.shuffle(window.app_list || [], (new Date()).getDate());
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
  var cert_cutoff = new Date();
  cert_cutoff.setMonth(cert_cutoff.getMonth() - 18);
  cert_cutoff = cert_cutoff.getTime() / 1000;
  list.forEach(function(item) {
    var app = app_template.cloneNode(true);
    app.setAttribute('href', "/certifications/apps/" + item.id); //item.url || '#');
    app.style.display = 'inline-block';
    app.querySelectorAll('img')[0].setAttribute('src', item.image_url || '#');
    app.querySelectorAll('.name')[0].innerText = item.name || "App";
    app.querySelectorAll('.sub')[0].innerText = item.desc || "No Description";
    if(item.reviewed > cert_cutoff) {
      apps.appendChild(app);
    } else {
      other_apps.appendChild(app);
    }
  });
</script>

<p>Interested in certifying? Review our 
<a href="https://docs.google.com/document/d/16cDEuHyfhb5xBk-UtEUOVpT0jrnEHwCabFACHM7DVGY/edit?usp=sharing">AAC Application Certification Requirements</a> for 
more information on requirements and on the review process.</p>

<h2>Additional Certifications</h2>
<p>We plan to implement additional certifications in the near-term, but are beginning with AAC applications since they provide the most opportunity for an impact of change.</p>
