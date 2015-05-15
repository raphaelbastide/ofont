<?php

$fontlist = $fonts->find("$filter,limit=6, draft=0, sort=-created");

$pagination = $fontlist->renderPager(array(
  'nextItemLabel' => "▶",
  'previousItemLabel' => "◀",
  'linkMarkup' => "<a rel='prefetch' href='{url}'>{out}</a>"));

foreach($fontlist as $font){
  if (!$font->draft){
    echo "<div class='typeface {$font->name}'>";
    echo "<ul class='meta'>";
    echo "<li class='fontname'><a href='{$font->url}'>{$font->title}</a></li>";
    $archivePath = $font->webfont_archive->path;
    $archiveUrl = $font->webfont_archive->url;
    // Getting the font list using the .ttf file(s)
    $files = glob($archivePath . '*.{ttf}', GLOB_BRACE);
    $len=count($files);

// Download URL

  $download_url = $font->download_url;
  if ($download_url){
    echo "<li><a href='{$download_url}'>External link</a></li>";
  }

    if($font->editable()) {
        echo "<li><a class='nav' id='editpage' href='{$config->urls->admin}page/edit/?id={$font->id}'>Edit</a></li>";
    }

    echo "</ul>"; // END .meta
    echo "<div class='fontlist'>";


    $test_string = $_GET["t"];
    // This allow URL to contain a custom test string
    if (isset ($test_string)){
      $demotext1 = $test_string;
    } else if (isset($_COOKIE['demo-text-1'])) {
      $demotext1 = htmlspecialchars($_COOKIE['demo-text-1'], ENT_QUOTES|ENT_HTML5);
    } else {
      $demotext1 = $config->demotext;
    }

    for ($i = 0; $i < $len; $i++) {
      $fontpath = $files[$i];
      $fontpath = substr($fontpath, strlen($config->urls->root));
      $fontname = basename($fontpath, ".ttf");
      $fonturl = $archiveUrl.$fontname;
      echo "<div class='font'>";
      echo "<style>";
      echo "
  @font-face {
      font-family: '{$fontname}';
      src: url('{$fonturl}.eot');
      src: url('{$fonturl}.eot?#iefix') format('embedded-opentype'),
           url('{$fonturl}.woff') format('woff'),
           url('{$fonturl}.ttf') format('truetype'),
           url('{$fonturl}.svg') format('svg');
      font-weight: normal;
      font-style: normal;
  }";
      echo "</style>";
      echo "<p class='fontdemo1' style='font-family:\"{$fontname}\";'><input type=text spellcheck='false' value='$demotext1'></p>";
      echo "<p class='legend'><button title='Fullscreen view' class='icon fullscreen icon-fullscreen'></button><a href='{$font->url}'>{$fontname}</a></p>";
      echo "</div>"; // END .font
    }
    echo "</div>"; // END .fontlist
    echo "</div>"; // END .typeface
  }
}

if($pagination){
  echo "<div class='pagination'>";
  echo $pagination;
  echo "</div>";
}
