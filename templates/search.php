<?php

/**
 * Search template
 *
 */

$outMain = '';

if($q = $sanitizer->selectorValue($input->get->q)) {
	$input->whitelist('q', $q);
	$matches = $pages->find("title|body|~=$q, limit=50");
	$count = count($matches);
	if($count) {
		$outMain .= "<h1>Search results</h1>
		<p><strong>Found $count results matching your query:</strong></p>" .
			"<ul class=\"nb\">";
		foreach($matches as $m) {
          $outMain .= "<p><a href='".$m->url."'>".$m->title."</a></p>";
		}
		$outMain .= "</ul>";
	} else {
		$outMain .= "<h1>Sorry, no results were found.</h1>";
	}
} else {
	$outMain .= "<h1>Please enter a search term in the search box.</h1>";
}

include("./head.inc"); 

echo $outMain; 

include("./foot.inc"); 
