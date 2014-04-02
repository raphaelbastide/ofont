<?php 

/**
 * Keyword template
 *
 */

include("./head.inc"); 

echo'<h1>Author: '.$page->title.'</h1>';

$fonts = $pages->find("authors=$page");
include("./fontlist.inc"); 

include("./foot.inc"); 

