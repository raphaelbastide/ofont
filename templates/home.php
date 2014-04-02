<?php include("./head.inc"); ?>
<div class="notice">
  <?php echo $page->body; ?> <span class="introbtn">✕</span>
</div>
<?php

$fonts = $pages->get("/fonts/");
include("./fontlist.inc");

include("./foot.inc"); 



