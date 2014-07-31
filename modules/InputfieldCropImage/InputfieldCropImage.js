$(document).ready(function() {

	$("a.crop").live("hover", function(e) {
		if( e.type === 'mouseover' || e.type === 'mouseenter') {
			url = $(this).data('thumburl') + "?timestamp=" + new Date().getTime();
			$(this).append("<img style='position: absolute; z-index: 999;' src="+url+" />");
		}
		else {
			$(this).find("img").remove();
		}
	});
	
	$(".InputfieldCropImage .InputfieldFileList").live('AjaxUploadDone', function() {
		$("a.InputfieldFileLink", $(this)).fancybox(); 
	}); 
});
