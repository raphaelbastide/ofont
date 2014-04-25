<?php 

/**
 * Page template
 *
 */

include("./head.inc"); 

echo'<h1>'.$page->title.'</h1>';

echo'<div class="page-content">'.$page->body.'</div>';

include("./foot.inc"); 

