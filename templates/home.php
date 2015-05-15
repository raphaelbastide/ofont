<?php include("./head.inc"); ?>
<div class="notice">
  <?php echo $page->body; ?> <span class="introbtn">✕</span>
</div>
<?php

$fonts = $pages->get("/fonts/");
$filter = "";
include("./fontlist.inc");

include("./foot.inc");
