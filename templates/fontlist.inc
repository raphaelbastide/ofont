

<?php

$fontlist = $fonts->find("id>1, limit=6, draft=0, sort=-created");
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


    if (isset($_COOKIE['demo-text-1'])) {
      $demotext1 = htmlspecialchars($_COOKIE['demo-text-1'], ENT_QUOTES|ENT_HTML5);
    } else {
      $demotext1 = "Alice’s real name is Bob.";
    }

    if (isset($_COOKIE['demo-text-2'])) {
      $demotext2 = htmlspecialchars($_COOKIE['demo-text-2'], ENT_QUOTES|ENT_HTML5);
    } else {
      $demotext2 = "O verdadeiro sábio é aquele que assim se dispõe que os acontecimentos exteriores o alterem minimamente. Para isso precisa couraçar-se cercando-se de realidades mais próximas de si do que os fatos, e através das quais os fatos, alterados para de acordo com elas, lhe chegam. Fernando Pessoa";
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
      echo "<p class='fontdemo1' style='font-family:\"{$fontname}\";'><input type=text value='$demotext1'></p>";
      echo "<p class='fontdemo2' style='font-family:\"{$fontname}\";'><input type=text value='$demotext2'></p>";
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