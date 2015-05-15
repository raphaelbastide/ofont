<?php

/**
 * Keyword template
 *
 */

include("./head.inc");
echo'<h1>Keyword: “'.$page->title.'”</h1>';

$fonts = $pages->get("/fonts/");
$filter = "keywords=$page";

include("./fontlist.inc");

include("./foot.inc");
