/*
	Spectral by HTML5 UP
	html5up.net | @n33co
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
*/

(function($) {

	skel
		.breakpoints({
			xlarge:	'(max-width: 1680px)',
			large:	'(max-width: 1280px)',
			medium:	'(max-width: 980px)',
			small:	'(max-width: 736px)',
			xsmall:	'(max-width: 480px)'
		});

	$(function() {

		var	$window = $(window),
			$body = $('body'),
			$wrapper = $('#page-wrapper'),
			$banner = $('#banner'),
			$header = $('#header');

		// Disable animations/transitions until the page has loaded.
			$body.addClass('is-loading');

			$window.on('load', function() {
				window.setTimeout(function() {
					$body.removeClass('is-loading');
				}, 100);
			});

		// Mobile?
			if (skel.vars.mobile)
				$body.addClass('is-mobile');
			else
				skel
					.on('-medium !medium', function() {
						$body.removeClass('is-mobile');
					})
					.on('+medium', function() {
						$body.addClass('is-mobile');
					});

		// Fix: Placeholder polyfill.
			$('form').placeholder();

		// Prioritize "important" elements on medium.
			skel.on('+medium -medium', function() {
				$.prioritize(
					'.important\\28 medium\\29',
					skel.breakpoint('medium').active
				);
			});

		// Scrolly.
			$('.scrolly')
				.scrolly({
					speed: 1500,
					offset: $header.outerHeight()
				});

		// Menu.
			$('#menu')
				.append('<a href="#menu" class="close"></a>')
				.appendTo($body)
				.panel({
					delay: 500,
					hideOnClick: true,
					hideOnSwipe: true,
					resetScroll: true,
					resetForms: true,
					side: 'right',
					target: $body,
					visibleClass: 'is-menu-visible'
				});

		// Header.
			if (skel.vars.IEVersion < 9)
				$header.removeClass('alt');

			if ($banner.length > 0
			&&	$header.hasClass('alt')) {

				$window.on('resize', function() { $window.trigger('scroll'); });

				$banner.scrollex({
					bottom:		$header.outerHeight() + 1,
					terminate:	function() { $header.removeClass('alt'); },
					enter:		function() { $header.addClass('alt'); },
					leave:		function() { $header.removeClass('alt'); }
				});

			}

	});
	var videos = document.getElementsByClassName('inline_video');
	for(var idx = 0; idx < videos.length; idx++) {
	  var video = videos[idx];
	  video.addEventListener('click', function(event) {
	    event.preventDefault();
	    var video = event.currentTarget;
	    var id = video.getAttribute('data-video-id');
	    var url = "https://app.mycoughdrop.com/videos/youtube/" + id;
	    document.getElementById('video_player').style.display = 'block';
	    document.getElementById('video_frame').src = url;
	  });
	}
	var vp = document.getElementById('close_video_player');
	if(vp) {
		vp.addEventListener('click', function(event) {
			event.preventDefault();
			document.getElementById('video_player').style.display = 'none';
			document.getElementById('video_frame').src = 'about:blank';
		});	
	}
	window.addEventListener('message', function(event) {
	  var time_string = function(num) {
	    if(num >= 60) {
	      var sec = num % 60;
	      var min = (num - sec) / 60;
	      if(sec < 10) { sec = "0" + sec; }
	      return min + ":" + sec;
	    } else {
	      var sec = num.toString();
	      if(num < 10) { sec = "0" + sec; }
	      return "0:" + sec;
	    }
	  };
	  var times = document.getElementById('video_player_times');
	  if(times && event.data && event.data.state) {
      if(event.data.state && event.data.duration) {
        (document.getElementById('video_player_time') || {}).innerText = time_string(event.data.time);
        (document.getElementById('video_player_duration') || {}).innerText = time_string(event.data.duration);
        times.style.display = 'inline';
        if(event.data.time >= event.data.duration) {
          setTimeout(function() {
            document.getElementById('video_player').style.display = 'none';
            document.getElementById('video_frame').src = 'about:blank';
          }, 1000);
        }
      } else {
        times.style.display = 'none';
      }
    }
	});


})(jQuery);
