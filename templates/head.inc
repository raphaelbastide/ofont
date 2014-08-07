<?php

?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<title><?php echo $page->get("headline|title"); ?> - <?php echo $config->sitename; ?></title>
	<meta name="description" content="<?php echo $page->summary; ?>" />
	<meta name="generator" content="ProcessWire <?php echo $config->version; ?>" />
	<link rel="stylesheet" type="text/css" href="<?php echo $config->urls->templates?>styles/main.css" />
	<link rel="stylesheet" type="text/css" href="<?php echo $config->urls->templates?>styles/fontello/css/ofont.css" />
	<link rel="stylesheet" href="<?php echo $config->urls->templates?>scripts/fancybox/source/helpers/jquery.fancybox-thumbs.css?v=1.0.7" type="text/css" media="screen" />
	<link rel="stylesheet" href="<?php echo $config->urls->templates?>scripts/fancybox/source/helpers/jquery.fancybox-buttons.css?v=1.0.5" type="text/css" media="screen" />
	<link rel="stylesheet" href="<?php echo $config->urls->templates?>scripts/fancybox/source/jquery.fancybox.css?v=2.1.5" type="text/css" media="screen" />
  <link href="<?php echo $config->urls->templates?>styles/images/favicon-<?php echo $sanitizer->pagename($config->sitename)?>.gif" rel="shortcut icon" type="image/x-icon">
</head>
<body class="<?php echo $sanitizer->pagename($config->sitename); ?> <?php echo $sanitizer->pagename($page->get("headline|title")); ?>">
	<header>
		<div class='topnav'>
          <a class="logo" title="<?php echo $config->version; ?>" href="<?php echo $config->urls->root?>">
            <span class="icon fullh icon-<?php echo $sanitizer->pagename($config->sitename); ?>"></span>
          </a>
        </div>
		<form id='search_form' action='<?php echo $config->urls->root?>search/' method='get'>
			<input class="fullh" type='text' name='q' id='search_query' value='<?php echo htmlentities($input->whitelist('q'), ENT_QUOTES, 'UTF-8'); ?>' /><button title="Search" class="fullh icon icon-search" type='submit' id='search_submit'></button>
		</form>
        <div class="views">
          <ul>
						<li><button title="Toggle taxonomies" class="fullh icon icon-taxonomy"></button></li>
	          <li><button title="Toggle light" class="fullh icon icon-light"></button></li>
	          <li><button title="Toggle grid" class="fullh icon icon-gridview"></button></li>
	          <li class="font-sizer">
	            <label class="font-size">
	              <span class="fullh icon icon-size"></span> <span class="valuebox">(<span class="value">80</span>pt):</span>
	              <input class="fullh" type="range" min="9" max="450" step="1" value="80">
	            </label>
	          </li>
        	</ul>
			</div>
		<div class="showTaxonomies">
			<?php
			  $fonts = $pages->find("template=font, sort=title");
				echo "<div class='colonne'><ul>Fonts";
			  foreach($fonts as $font){
			      echo "<li class='page'><a href='{$font->url}'>{$font->title}</a></li>";
				}
				echo "<div class='pad'></div></ul></div>";
				$authors = $pages->find("template=author, sort=title");
				echo "<div class='colonne'><ul>Authors";
				foreach($authors as $author){
						echo "<li class='page'><a href='{$author->url}'>{$author->title}</a></li>";
				}
				echo "<div class='pad'></div></ul></div>";
				$licenses = $pages->find("template=license, sort=title");
				echo "<div class='colonne'><ul>Licenses";
				foreach($licenses as $license){
						echo "<li class='page'><a href='{$license->url}'>{$license->title}</a></li>";
				}
				echo "<div class='pad'></div></ul></div>";
				$keywords = $pages->find("template=keyword, sort=title");
				echo "<div class='colonne'><ul>Keywords";
				foreach($keywords as $keyword){
						echo "<li class='page'><a href='{$keyword->url}'>{$keyword->title}</a></li>";
				}
				echo "<div class='pad'></div></ul></div>";
			?>
		</div>
	</header>

	<div class="content">
