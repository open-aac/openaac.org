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
  .previews .preview {
    float: left;
    width: 32%;
    min-width: 200px;
    height: 320px;
    margin-right: 15px;
    margin-bottom: 15px;
    border: 1px solid #888;
    border-radius: 10px;
    padding: 10px;
    box-shadow: 0px 0px 10px #888;
    position: relative;
  }
  .previews .preview .caption {
    width: 95%;
    white-space: nowrap; 
    overflow: hidden; 
    font-size: 14px; 
    color: #888; 
    font-style: italic;
    position: absolute;
    bottom: 5px;
  }
  .previews .preview img {
    width: 100%;
    max-height: 280px;
    object-fit: contain;
    object-position: center;
  }
  .big_preview img {
    max-width: 100%;
    border: 1px solid #888;
    padding: 10px;
    border-radius: 10px;
  }
  #photo_view .license_holder {
    font-style: italic;
  }
  #photo_view .errata {
    font-style: italic;
    font-size: 14px;
    color: #888;
    padding-left: 20px;
    line-height: 25px;
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
<div id='index_view'>
  <h2>Open-Licensed AAC Photo Library</h2>
  <img src="/images/behind-aac.png" class='pic left' style='width: 300px;'/>
  <p>
  Many people have never seen someone actually using AAC. When people are first introduced to AAC, it can be hard to understand just how many different ways AAC can be used. Additionally, 
  AAC 
  news coverage isn't common, and when people do go to write about
  AAC use, they often have access to few (if any) images of
  real-world AAC users. This shortage of accessible materials
  can make it harder to raise awareness of the diversity of
  users and modalities that leverage AAC.
  </p>
  <img src="https://drive.google.com/thumbnail?id=1FZmxCiBnwWQBcBMYdBrGOE1LR9-czeI4&sz=w1000" class='pic right' style='width: 400px;'/>
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
  <img src="/images/shadow-aac.png" class='pic left' style='width: 300px;'/>
  <p>If you have photos of AAC users, and are authorized by the
  subjects and by the photo author to release the images
  under a Creative Commons license, please visit the form
  below to contribute to the photo library.</p>
  
  <a href="https://docs.google.com/forms/d/e/1FAIpQLSdnYtH4xxME0L-05nNN68_JTErY3Ctx4x0mgTYG0WekGCUvHg/viewform?usp=sf_link" class="button fit special" style='height: 90px; line-height: 25px; padding: 20px 10px; max-width: 400px; margin: 0 auto;'>Contribute Photos<br/>to the Library</a>

  <div style='clear: left; margin-bottom: 30px;'></div>


  <h2>Showcased Photos</h2>
  <p>
    All images are released with a Creative Commons license, so
    be sure to <a href="https://wiki.creativecommons.org/wiki/Recommended_practices_for_attribution">include proper attribution</a>. License and additional information are included
    in the details for each image.
  </p>
  <div id="highlighted_previews" class='previews'>
    <!--iframe src="{ id: "1ERN8dEQ6O2Mh6dEqSXmw2E5H0pnK7TFt/preview" style="width: 400px; height: 300px;" allow="autoplay"></iframe -->
    <a href="" class='preview template' style='display: none;'>
      <img src="" />
      <div class='caption'></div>
    </a>
  </div>
  <div style='clear: left; margin-bottom: 50px;'></div>

  <a href='#all' rel="https://drive.google.com/drive/folders/1SSUaSunErvwV7ZnWe1rqyyQMAK4s2ukD?usp=sharing" class="button fit special" style='height: 90px; line-height: 25px; padding: 20px 10px; max-width: 400px; margin: 0 auto;'>Browse the<br/>Full Library</a>
</div>
<div id='list_view' style='display: none;'>
  <div style='margin-top: -40px; margin-bottom: 40px; margin-left: -20px;'>
  <a href="#">&larr; Back to Photos</a>
  </div>
  <h2>Browse All Photos</h2>
  <div id="all_previews" class='previews'>
    <!--iframe src="{ id: "1ERN8dEQ6O2Mh6dEqSXmw2E5H0pnK7TFt/preview" style="width: 400px; height: 300px;" allow="autoplay"></iframe -->
  </div>
  <div style='clear: both; margin-bottom: 50px;'></div>
</div>
<div id='photo_view' style='display: none;'>
  <div style='margin-top: -40px; margin-bottom: 40px; margin-left: -20px;'>
  <a href="#all">&larr; Back to Image List</a>
  </div>
  <h2>AAC Photo</h2>
  <div class='caption'></div>
  <div class='license_holder'>
    <a href="" class='license'></a>
  </div>
  <div class='errata'></div>
  <a href="" class='big_preview'>
    <img src="" />
  </a>
</div>
<script>

  var previews = [
    {
      id: "1ERN8dEQ6O2Mh6dEqSXmw2E5H0pnK7TFt",
      highlight: true,
      caption: "Adam using AAC",
      author: "Scot Wahlquist",
      device: "iPad running CoughDrop"
    },
    { 
      id: "1miWl-eUL-1iuhDxFUbXRE2udgqRIQoy-",
      caption: "Adam using AAC",
      author: "Scot Wahlquist",
      device: "iPad running CoughDrop"
    },
    { 
      id: "1FZmxCiBnwWQBcBMYdBrGOE1LR9-czeI4", 
      caption: "Adam using AAC",
      author: "Scot Wahlquist",
      device: "iPad running CoughDrop"
    },
    { 
      id: "1vUr4x79w_806X4fAd10tTRO1mPA3drRr", 
      caption: "Adam using AAC",
      author: "Scot Wahlquist",
      device: "iPad running CoughDrop"
    },
    { 
      id: "1JMzuZA1EvTC3wuqrAt5c0ho5FaI2lZv_", 
      caption: "Adam using AAC",
      author: "Scot Wahlquist",
      device: "iPad running CoughDrop"
    },
    { 
      id: "1ERN8dEQ6O2Mh6dEqSXmw2E5H0pnK7TFt", 
      caption: "Adam using AAC",
      author: "Scot Wahlquist",
      device: "iPad running CoughDrop"
    },
    { 
      id: "11kSUOh3KW9oKMHzA5Bbai-X9t-glfNbu",
      caption: "Becca Playing Cards",
      author: "Brian Whitmer",
      device: "TD running CoughDrop",
      diagnosis: "Rett Syndrome",
    },
    {
      id: "1LvyvZW-MGLJ6vUCtbPOAP-5RKE_QsCM5",
      highlight: true,
      caption: "Becca Camping",
      author: "Brian Whitmer",
      device: "TD running CoughDrop",
      diagnosis: "Rett Syndrome",
    },
    { 
      id: "1tP327HlFIgEYYZ4z1o5nIAsVz0iB4ya2", 
      caption: "Becca at the Museum",
      author: "Brian Whitmer",
      device: "TD running CoughDrop",
      diagnosis: "Rett Syndrome",
    },
    { 
      id: "1vYzzhxprDcgd001_ZoygRbhIRXqU_sHL", 
      caption: "Becca and Family Caroling",
      author: "Brian Whitmer",
      device: "TD running CoughDrop",
      diagnosis: "Rett Syndrome",
    },
    { 
      id: "1PY7co25HL1B3xS1ID8lhFsLgzFijqp2g", 
      caption: "Becca and Friends Solving a Puzzle",
      author: "Brian Whitmer",
      device: "TD running CoughDrop",
      diagnosis: "Rett Syndrome",
    },
    { 
      id: "16xPdj4EvdNOEle2UY3JMVMgyolEFkX99", 
      caption: "Becca at Kickball Game",
      author: "Brian Whitmer",
      device: "TD running CoughDrop",
      diagnosis: "Rett Syndrome",
    },
    { 
      id: "1c82Bn62YANoURuaZpuVA9PGKqo0Hf9YC", 
      license: "public domain",
      license_url: "https://creativecommons.org/public-domain/pdm/",
      author: "UK Human Development Institute",
      caption: "A young child wearing a blue shirt sits in bean-bag chair with an AAC device while hugging a service dog",
      device: "iPad",
    },
    { 
      id: "1QF81tRu1agZ6KlB0s9THdMHj2v7gAwB-", 
      license: "public domain",
      license_url: "https://creativecommons.org/public-domain/pdm/",
      author: "UK Human Development Institute",
      caption: "A young child wearing a blue shirt sits in bean-bag chair with an AAC device while hugging a service dog",
      device: "iPad",
    },
    {
      id: "1Lp2CnYPNc04PYKQAdPuVzVGDeHLXxbVN",
      highlight: true,
      license: "public domain",
      license_url: "https://creativecommons.org/public-domain/pdm/",
      author: "UK Human Development Institute",
      caption: "A young child wearing a blue shirt sits in bean-bag chair with an AAC device while hugging a service dog",
      device: "iPad",
    },
    { 
      id: "1FRZWJePyitY4k0wtMAfKXmZngKXN3VCu", 
      license: "public domain",
      license_url: "https://creativecommons.org/public-domain/pdm/",
      author: "UK Human Development Institute",
      caption: "An adult advisor wearing glasses and a black top and a student in a wheelchair wearing a blue garment, communicate using an AAC device in an office setting",
      device: "Tobii-Dynavox i-Series",
    },
    { 
      id: "1e_gJagT4RUntwSSOAgg2qNw_MUJ3zWL0", 
      license: "public domain",
      license_url: "https://creativecommons.org/public-domain/pdm/",
      author: "UK Human Development Institute",
      caption: "An adult advisor wearing glasses and a black top and a student in a wheelchair wearing a blue garment, communicate using an AAC device in an office setting",
      device: "Tobii-Dynavox i-Series",
    },
    {
      id: "1ZmsRUUBd2tYa_UWQ137846o5g7f0pGE3",
      highlight: true,
      license: "public domain",
      license_url: "https://creativecommons.org/public-domain/pdm/",
      author: "UK Human Development Institute",
      caption: "student in red sweater shows notebook to an adult person in blue shirt using wheelchair with AAC device",
      device: "Tobii-Dynavox i-Series",
    },
    { 
      id: "1f-dyGzapO6ZqbLHMbN0VBABnjZ49ZRkI", 
      license: "public domain",
      license_url: "https://creativecommons.org/public-domain/pdm/",
      author: "UK Human Development Institute",
      caption: "student in red sweater shows notebook to an adult person in blue shirt using wheelchair with AAC device",
      device: "Tobii-Dynavox i-Series",
    },
    { 
      id: "1-jolIRn0YvJMDNuDfHVzowYnQjWf2pcq", 
      license: "public domain",
      license_url: "https://creativecommons.org/public-domain/pdm/",
      author: "UK Human Development Institute",
      caption: "adult person in blue shirt using wheelchair with AAC device in a general study area on a school campus with chairs and tables",
      device: "Tobii-Dynavox i-Series",
    },
    {
      id: "1_3v6uVkQCZDPzoq-me9BpDIOd17JA9lJ",
      highlight: true,
      license: "public domain",
      license_url: "https://creativecommons.org/public-domain/pdm/",
      author: "UK Human Development Institute",
      caption: "young adult in green jacket talks with student in blue shirt using AAC device and smiles",
      device: "Tobii-Dynavox i-Series",
    },
    { 
      id: "14ze7hp6Nn65HHmgRhD9qsYr6w2PWCjH9", 
      license: "public domain",
      license_url: "https://creativecommons.org/public-domain/pdm/",
      author: "UK Human Development Institute",
      caption: "young adult in blue sweater talks with young adult in green jacket using AAC communication device",
      device: "Tobii-Dynavox i-Series",
    },
    { 
      id: "1riZ2RJAU-m29__ewEjoo01N9mfv2xcGB", 
      license: "public domain",
      license_url: "https://creativecommons.org/public-domain/pdm/",
      author: "UK Human Development Institute",
      caption: "young adult in green jacket talks with student in blue shirt using AAC device and smiles",
      device: "Tobii-Dynavox i-Series",
    },
    { 
      id: "1aTZUA7My3zEAsQ6mkCe-iSwRspyW9Ac_", 
      license: "public domain",
      license_url: "https://creativecommons.org/public-domain/pdm/",
      author: "UK Human Development Institute",
      caption: "An adult advisor wearing glasses and a black top and a student in a wheelchair wearing a blue garment, communicate using an AAC device in an office setting",
      device: "Tobii-Dynavox i-Series",
    },
    {
      id: "1xV-Mcrm5BAO2YnrfOiNi_ru4UEWIMsEP",
      highlight: true,
      author: "Samantha McKeown",
      caption: "Sloane (3) trying out new wheelchair attachment for communication device",
      diagnosis: "Rett Syndrome",
      device: "Tobii-Dynavox Snap Core"
    },
    {
      id: "1cwQ_9yXzO9pYbFSLEDGOm7Q_F05IS0qH",
      highlight: true,
      author: "Shell Bell",
      device: "Printed Speech Board, SmartBox"
    },
    {
      id: "1QTvJkQlN_7ZxgVh-nN0zxPhOQ0s8MHqU",
      highlight: true,
      caption: "Ciara using her device during a video call",
      author: "Colette O'Loughlin",
      device: "Tobii-Dynavox"
    },
    {
      id: "1rZavRf9YlSF4sXoT6zssyIroEmEay26z",
      highlight: true,
      caption: "Adam using AAC",
      author: "Scot Wahlquist",
      device: "iPad running CoughDrop"
    },
  ];

  var template = document.querySelector('.previews .template');
  previews.forEach(function(preview) {
    var obj = template.cloneNode(true);
    obj.classList.remove('template');

    obj.setAttribute('rel', "https://drive.google.com/file/d/" + preview.id + "/view?usp=sharing");
    obj.setAttribute('href', "#id:" + preview.id);
    obj.querySelector('img').setAttribute('src', "https://drive.google.com/thumbnail?id=" + preview.id + "&sz=w500");
    var caption = "CC-By ";
    if(preview.license) {
      caption = preview.license + " ";
    }
    if(preview.caption) {
      caption = caption + " -  " + preview.caption;
    }
    if(preview.author) {
      caption = caption + " -  " + preview.author;
    }
    obj.querySelector('.caption').innerText = caption;
    obj.style.display = 'block';
    document.getElementById('all_previews').appendChild(obj);
    if(preview.highlight) {
      obj = obj.cloneNode(true);
      document.getElementById('highlighted_previews').appendChild(obj);
    }
  });

  var state_changed = function() {
    var hash = location.hash;
    var id = hash && hash.substring(4);
    var preview = null;
    if(id && hash.match(/^#id:/)) {
      var preview = previews.find(function(p) { return p.id == id; });
    }
    document.head.querySelectorAll('script.credit').forEach(function(elem) {
      elem.parentNode.removeChild(elem);
    })
    if(hash == '#all') {
      document.getElementById('index_view').style.display = 'none';
      document.getElementById('list_view').style.display = 'block';
      document.getElementById('photo_view').style.display = 'none';
    } else if(preview) {
      document.getElementById('index_view').style.display = 'none';
      document.getElementById('list_view').style.display = 'none';
      document.getElementById('photo_view').style.display = 'block';
      var view = document.getElementById('photo_view');
      var img_url = "https://drive.google.com/thumbnail?id=" + preview.id + "&sz=w2000";
      view.querySelector('img').setAttribute('src', img_url);
      view.querySelector('a.big_preview').setAttribute('href', "https://drive.google.com/file/d/" + preview.id + "/view?usp=sharing");
      view.querySelector('.caption').innerText = preview.caption || "";
      var license = "CC-By";
      var license_url = "https://creativecommons.org/licenses/by/4.0/";
      if(preview.license) {
        license = preview.license;
        license_url = preview.license_url;
      }
      view.querySelector('.license').innerText = license + " " + (preview.author || "");
      view.querySelector('.license').setAttribute('href', license_url || "")
      var errata = "";
      if(preview.device) {
        errata = "AAC: " + preview.device;
      }
      if(preview.diagnosis) {
        errata = errata + "\nDiagnosis: " + preview.diagnosis;
      }
      view.querySelector('.errata').innerText = errata;
      var script = document.createElement('script');
      script.classList.add('credit');
      script.setAttribute('type', 'application/ld+json')
      var json = {};
      json['@context'] = "https://schema.org/";
      json['@type'] = "ImageObject";
      json['contentUrl'] = img_url;
      if(license_url) {
        json['license'] = license_url;
      }
      json['creditText'] = "AAC Photo Library - " + (preview.caption || "") + " - " + (preview.device || "") + " - OpenAAC";
      json['creator'] = {"@type": "Person", "name": preview.author};
      json['copyrightNotice'] = preview.author;
      script.innerText = JSON.stringify(json);
      document.head.appendChild(script);
    } else {
      document.getElementById('index_view').style.display = 'block';
      document.getElementById('list_view').style.display = 'none';
      document.getElementById('photo_view').style.display = 'none';
    }
    var rect = document.querySelector('.inner').getBoundingClientRect();
    window.scrollTo(0, window.scrollY + rect.top - 70);
  };
  window.addEventListener('hashchange', function(e) {
    state_changed();
  });
  document.addEventListener('popstate', function(e) {
    state_changed();
  });
  state_changed();
</script>