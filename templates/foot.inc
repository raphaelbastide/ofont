
	</div><!--/content-->
	<footer>
      <p><a href="<?php echo $config->urls->root?>about">About</a>
	</footer>
	<script src="<?php echo $config->urls->templates?>scripts/jquery.js"></script>
	<script src="<?php echo $config->urls->templates?>scripts/cookies.js"></script>
	<script src="<?php echo $config->urls->templates?>scripts/main.js"></script>
	<!-- Add mousewheel plugin (this is optional) -->
	<script type="text/javascript" src="scripts/fancybox/lib/jquery.mousewheel-3.0.6.pack.js"></script>
	<!-- Add fancyBox -->
	<link rel="stylesheet" href="<?php echo $config->urls->templates?>scripts/fancybox/source/jquery.fancybox.css?v=2.1.5" type="text/css" media="screen" />
	<script type="text/javascript" src="<?php echo $config->urls->templates?>scripts/fancybox/source/jquery.fancybox.pack.js?v=2.1.5"></script>
	<!-- Optionally add helpers - button, thumbnail and/or media -->
	<link rel="stylesheet" href="<?php echo $config->urls->templates?>scripts/fancybox/source/helpers/jquery.fancybox-buttons.css?v=1.0.5" type="text/css" media="screen" />
	<script type="text/javascript" src="<?php echo $config->urls->templates?>scripts/fancybox/source/helpers/jquery.fancybox-buttons.js?v=1.0.5"></script>
	<script type="text/javascript" src="<?php echo $config->urls->templates?>scripts/fancybox/source/helpers/jquery.fancybox-media.js?v=1.0.6"></script>
	<link rel="stylesheet" href="<?php echo $config->urls->templates?>scripts/fancybox/source/helpers/jquery.fancybox-thumbs.css?v=1.0.7" type="text/css" media="screen" />
	<script type="text/javascript" src="<?php echo $config->urls->templates?>scripts/fancybox/source/helpers/jquery.fancybox-thumbs.js?v=1.0.7"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			$(".fancybox")
		    .attr('rel', 'gallery')
		    .fancybox({
		        beforeLoad: function() {
		            var el, id = $(this.element).data('title-id');
		            if (id) {
		              el = $('#' + id);
		              if (el.length) {
		                  this.title = el.html();
		              }
		            }
		        },
		        helpers:  {
			        title : {
			            type : 'outside'
		        	}
		        }
		    });
		});
	</script>
</body>
</html>
