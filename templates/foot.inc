
	</div><!--/content-->
	<div id="footer" class="footer">
	</div>

	<?php 
	if($page->editable()) {
		echo "<a class='nav' id='editpage' href='{$config->urls->admin}page/edit/?id={$page->id}'>Edit</a>"; 
	}
	?>
  <script src="<?php echo $config->urls->templates?>scripts/jquery.js"></script>
  <script src="<?php echo $config->urls->templates?>scripts/cookies.js"></script>
  <script src="<?php echo $config->urls->templates?>scripts/main.js"></script>
</body>
</html>
