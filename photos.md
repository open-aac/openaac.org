---
layout: page
title: AAC Photo Library
page_title: AAC Photo Library
description: Open-licensed media of AAC<br/>users using their AAC
include_nav: false
---
<style>
  h2 {
    text-decoration: underline;
  }
  code {
    white-space: pre-line;
    display: block;
    padding: 15px 10px;
  }
  #previews .preview {
    float: left;
    width: 32%;
    min-width: 200px;
    height: 300px;
    margin-right: 15px;
    margin-bottom: 15px;
    border: 1px solid #888;
    border-radius: 10px;
    padding: 10px;
    box-shadow: 0px 0px 10px #888;
  }
  #previews .preview img {
    width: 100%;
    max-height: 280px;
    object-fit: contain;
    object-position: center;
  }
  img.pic {
    border-radius: 15px;
    border: 1px solid #aaa;
    padding: 3px;
  }
  img.left {
    float: left; 
    margin: 0 10px 10px 0; 
    max-width: 40%
  }
  img.right {
    float: right; 
    margin: 0 0 10px 10px; 
    max-width: 40%
  }
</style>
<h2>Open-Licensed AAC Photo Library</h2>
<img src="https://drive.google.com/thumbnail?id=1FZmxCiBnwWQBcBMYdBrGOE1LR9-czeI4&sz=w1000" class='pic right' style='width: 400px;'/>
<p>
Many people have never seen someone actually using AAC. When people are first introduced to AAC, it can be hard to understand just how many different ways AAC can be used. Additionally, 
AAC 
news coverage isn't common, and when people do go to write about
AAC use, they often have access to few (if any) images of
real-world AAC users. This shortage of accessible materials
can make it harder to raise awareness of the diversity of
users and modalities that leverage AAC.
</p>
<p>
At OpenAAC, we are collecting and sharing a library of photos
and other resources that showcase AAC users from many different
backgrounds, in many different environments. Our hope is to help people undertand all the ways and places AAC can be leveraged to aid in communication and interactions.
</p>
<a href="https://creativecommons.org/licenses/by/4.0/"><img src="/images/creative-commons.webp" class='pic left' style='width: 200px; padding: 20px;' /></a>
<p>All images are
released under a license which requires proper attribution but
allows publishers to use the resources without needing to hunt
down specific permissions.
</p>
<div style='clear: both;'></div>

<h2>Contribute to the AAC Photo Library</h2>
<p>If you have photos of AAC users, and are authorized by the
subjects and by the photo author to release the images
under a Creative Commons license, please visit the form
below to contribute to the photo library.</p>

<a href="https://docs.google.com/forms/d/e/1FAIpQLSdnYtH4xxME0L-05nNN68_JTErY3Ctx4x0mgTYG0WekGCUvHg/viewform?usp=sf_link" class="button fit special" style='height: 90px; line-height: 25px; padding: 20px 10px; max-width: 400px; margin: 0 auto;'>Contribute Photos<br/>to the Library</a>

<div style='clear: left;'></div>


<h2>Showcased Photos</h2>
<p>
  All images are released with a Creative Commons license, so
  be sure to <a href="https://wiki.creativecommons.org/wiki/Recommended_practices_for_attribution">include proper attribution</a>. License and additional information are included
  in the details for each image.
</p>
<div id="previews">
  <!--iframe src="https://drive.google.com/file/d/1ERN8dEQ6O2Mh6dEqSXmw2E5H0pnK7TFt/preview" style="width: 400px; height: 300px;" allow="autoplay"></iframe -->
  <a href="" class='preview template' style='display: none;'>
    <img src="" />
  </a>
</div>
<div style='clear: left; margin-bottom: 50px;'></div>

<a href="https://drive.google.com/drive/folders/1SSUaSunErvwV7ZnWe1rqyyQMAK4s2ukD?usp=sharing" class="button fit special" style='height: 90px; line-height: 25px; padding: 20px 10px; max-width: 400px; margin: 0 auto;'>Browse the<br/>Full Library</a>

<script>
  var previews = [
    {
      id: "1ERN8dEQ6O2Mh6dEqSXmw2E5H0pnK7TFt"
    },
    {
      id: "1Lp2CnYPNc04PYKQAdPuVzVGDeHLXxbVN"
    },
    {
      id: "1_3v6uVkQCZDPzoq-me9BpDIOd17JA9lJ"
    },
    {
      id: "1LvyvZW-MGLJ6vUCtbPOAP-5RKE_QsCM5"
    },
    {
      id: "1ZmsRUUBd2tYa_UWQ137846o5g7f0pGE3"
    },
    {
      id: "1rZavRf9YlSF4sXoT6zssyIroEmEay26z"
    },
  ];
  https://drive.google.com/file/d/1_3v6uVkQCZDPzoq-me9BpDIOd17JA9lJ/view?usp=sharing

  var template = document.querySelector('#previews .template');
  previews.forEach(function(preview) {
    var obj = template.cloneNode(true);
    obj.classList.remove('template');
    obj.setAttribute('href', "https://drive.google.com/file/d/" + preview.id + "/view?usp=sharing");
    obj.querySelector('img').setAttribute('src', "https://drive.google.com/thumbnail?id=" + preview.id + "&sz=w1000");
    obj.style.display = 'block';
    document.getElementById('previews').appendChild(obj);
  });
</script>