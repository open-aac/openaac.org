---
layout: listing
title: App
page_title: App
include_nav: true
---
<style>
  #listing h2 {
    font-size: 35px;
    margin-bottom: 0;
    letter-spacing: 4px;
  }
  #listing .subh2 {
    margin-top: -10px;
  }
  #listing #status.active {
    color: #41a631;
  }
  #listing #status.expired {
    color: #b2a824;
  }
  #listing #status.unapproved {
    color: #b2a824;
  }
  #listing #description {
    white-space: pre-line;
  }
  #listing #cert_intro {
    margin-bottom: 30px; 
    font-style: italic; 
    font-size: 13px; 
    line-height: 20px;
  }
</style>
<div id="listing">
  <div style='margin-top: -30px;'>
    <div style='position: relative; float: left; width: 80px;'>
      <img src="#" id='img' style='width: 80px; max-height: 150px; object-fit: contain; object-position: center;' />  
      <img src="/images/check.png" style='position: absolute; bottom: 5px; left: 5px; width: 20px; display: none;' id='approved_app'/>
    </div>

    <h2 id='name'>App</h2>
    <div class='subh2'>
      OpenAAC App Certification Status
      <span id='status'></span>
    </div>
  </div>
  <div style='clear: left; margin-top: 30px;'></div>
    <div>Last Reviewed: <span id='reviewed'></span></div>
    <div id='cert_intro'>Certified applications have been reviewed by the 
      OpenAAC team for 
      <a href="https://docs.google.com/document/d/16cDEuHyfhb5xBk-UtEUOVpT0jrnEHwCabFACHM7DVGY/edit?usp=sharing">specific funcionality and usability requirements</a>. 
      The goal of each review is to ensure that
      AAC users can not only use the AAC system, but also
      have reasonable room for growth and personalization.
      Certifications must be renewed every year to remain active.
    </div>
  <div>
    <img id='cert' style='float: left; width: 200px; margin-right: 15px;'/>
    <div id="description"></div>
    <!-- TODO: Specializations -->
    <div style='clear: left;'></div>
    <iframe width="560" height="315" src="https://www.youtube.com/embed/GOgzpO9_NwE" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen id='video' style='display: none; margin-top: 30px;'></iframe>
    <div style='clear: both;'></div>
  </div>
</div>
<script>
  var id = location.href.split(/\//).pop();
  var app = window.app_list.find(function(item) { return item.id == id; });
  if(app) {
    document.title = app.name + " - OpenAAC Certification Status";
    document.querySelectorAll('#name')[0].innerText = app.name;
    document.querySelectorAll('#img')[0].src = app.image_url;
    document.querySelectorAll('#cert')[0].src = "/images/certs/" + app.id + "-app-cert.png"
    document.querySelectorAll('#description')[0].innerText = app.desc || "No Description";
    if(app.video_id) {
      document.querySelectorAll('#video')[0].src = "https://www.youtube.com/embed/" + app.video_id;
      document.querySelectorAll('#video')[0].style.display = '';
    }
    if(app.reviewed) {
      var d = new Date(app.reviewed * 1000);
      var cutoff = new Date();
      cutoff.setMonth(cutoff.getMonth() - 18);
      var str = d.toLocaleString('default', {month: 'long', year: 'numeric'})
      document.querySelectorAll('#reviewed')[0].innerText = str;
      if(d > cutoff) {
        document.querySelectorAll('#approved_app')[0].style.display = '';
        document.querySelectorAll('#status')[0].classList.add('active')
        document.querySelectorAll('#status')[0].innerText = " - certification active";
      } else {
        document.querySelectorAll('#status')[0].classList.add('expired')
        document.querySelectorAll('#status')[0].innerText = " - certification expired";
      }
    } else {
      document.querySelectorAll('#reviewed')[0].innerText = "Unspecified";
      document.querySelectorAll('#status')[0].classList.add('unapproved')
    }
  } else {
    location.href = "/certifications";
  }
</script>