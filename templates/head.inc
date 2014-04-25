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
	<link rel="stylesheet" type="text/css" href="<?php echo $config->urls->templates?>styles/icons.css" />
</head>
<body class="<?php echo $sanitizer->pagename($config->sitename); ?> <?php echo $sanitizer->pagename($page->get("headline|title")); ?>">
	<header>
		<div class='topnav'>
          <a class="logo" title="<?php echo $config->version; ?>" href="<?php echo $config->urls->root?>">
            <span class="icon fullh icon-logo"></span>
          </a>
        </div>
		<form id='search_form' action='<?php echo $config->urls->root?>search/' method='get'>
			<input class="fullh" type='text' name='q' id='search_query' value='<?php echo htmlentities($input->whitelist('q'), ENT_QUOTES, 'UTF-8'); ?>' /><button title="Search" class="fullh icon icon-search" type='submit' id='search_submit'></button>
		</form>
        <div class="views">
          <ul>
          <li><button title="Toggle light" class="fullh icon icon-light"></button></li>
          <li><button title="Toggle grid" class="fullh icon icon-gridview"></button></li>
          <li>
            <label class="font-size">
              <span class="fullh icon icon-size"></span> <span class="valuebox">(<span class="value">80</span>pt):</span>
              <input class="fullh" type="range" min="9" max="120" step="1" value="80">
            </label>
          </li>
        </ul>
  
	</header>
    
	<div class="content">
  