<?php
include("./head.inc");

if (!$page->draft){
  echo "<div class='typeface'>";
  echo "<ul class='meta'>";
  echo "<li class='fontname'><a href='{$page->url}'>{$page->title}</a></li>";
  $archivePath = $page->webfont_archive->path;
  $archiveUrl = $page->webfont_archive->url;
  // Getting the font list using the .ttf file(s)
  $files = glob($archivePath . '*.{ttf}', GLOB_BRACE);
  $len=count($files);
  echo "<li>Contains ".$len." font(s)</li>";

// Download URL

  $download_url = $page->download_url;
  if ($download_url){
    echo "<li><ul class='download_url'>";
    echo "Download and information:";
      echo "<li><a href='{$download_url}'>External link</a></li>";
    echo "</ul></li>";
  }

// Authors + url

  $authors = $page->authors;
  if ($authors){
    echo "<li><ul class='authors'>";
    echo "Designed by:";
    foreach($authors as $author){
      echo "<li><a href='{$author->url}'>{$author->title}</a> ";
      if ($author->author_url){
        echo "<a href='{$author->author_url}'>(url)</a>";
      }
      echo "</li>";
    }
    echo "</ul></li>";
  }

// Keywords

  $keywords = $page->keywords;
  if ($keywords){
    echo "<li><ul class='keywords'>";
    echo "Tagged with:";
    foreach($keywords as $keyword){
      echo "<li><a href='{$keyword->url}'>{$keyword->title}</a></li>";
    }
    echo "</ul></li>";
  }


// Related fonts

  $related_fonts = $page->related_fonts;
  if ($related_fonts){
    echo "<li><ul class='related'>";
    echo "Related fonts:";
    foreach($related_fonts as $related_font){
      echo "<li><a href='{$related_font->url}'>{$related_font->title}</a></li>";
    }
    echo "</ul></li>";
  }

// License + url

  $license = $page->license;
  if ($license){
    echo "<li><ul class='license'>";
    echo "License:";
    foreach($license as $license){
      echo "<li>{$license->title}";
      if ($license->license_url){
        echo "<a href='{$license->license_url}'>(url)</a>";
      }
      echo "</li>";
    }
    echo "</ul></li>";
  }

// Font Description

  $comments = $page->comments;
  if ($comments){
    echo "<li><ul class='comments'>";
    echo "Font description:";
    echo "<li>{$comments}</li>";
    echo "</ul></li>";
  }

// Used in

  $used_in = $page->used_in;
  if ($used_in){
    echo "<li><ul class='used_in'>";
    echo "Used in:";
    echo "<li>{$used_in}</li>";
    echo "</ul></li>";
  }

  if($page->editable()) {
      echo "<li><a class='nav' id='editpage' href='{$config->urls->admin}page/edit/?id={$page->id}'>Edit</a></li>";
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

  if (isset($_COOKIE['demo-text-2'])) {
    $demotext2 = htmlspecialchars($_COOKIE['demo-text-2'], ENT_QUOTES|ENT_HTML5);
  } else {
    $demotext2 = "abcdefghijklmnopqrstuvwxyz.:;, ABCDEFGHIJKLMNOPQRSTUVWXYZ 1234567890 @ &!?#$€%";
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
      echo "<p class='fontdemo2' style='font-family:\"{$fontname}\";'><input type=text spellcheck='false' value='$demotext2'></p>";
      echo "<p class='legend'><button title='Fullscreen view' class='icon fullscreen icon-fullscreen'></button><a href='{$font->url}'>{$fontname}</a></p>";
      echo "</div>"; // END .font
    }
    echo "</div>"; // END .fontlist
    echo "</div>"; // END .typeface
  }else{
    echo "<h1>This font is not public yet.</h1>";
  }

include("./foot.inc");
