// original by apeisa
// added functionality and optimization by owzim

$(function() {

	$crop = $('#jcrop_target');

	if ($crop.length > 0) {

		var w = $crop.data('width'),
			h = $crop.data('height'),

			urlParams = PWFieldtypeCropImage.getParameters(),

			jcropOptions = {
				onChange: PWFieldtypeCropImage.showCoords,
				onSelect: PWFieldtypeCropImage.showCoords,
				aspectRatio: w/h,
				boxWidth: screen.width - 100,
				boxHeight: screen.height - 100
			},

			// this requires horst's addition to the module,
			// which writes the previously chosen coords into hidden inputs

			// get previously chosen coords via hidden input
			cropX = $("input#x1").val(),
			cropY = $("input#y1").val(),

			cropW = $("input#w").val(),
			cropH = $("input#h").val();

		cropX = (cropX !== "0" && typeof cropX !== "undefined") ? parseFloat(cropX) : 0;
		cropY = (cropY !== "0" && typeof cropY !== "undefined") ? parseFloat(cropY) : 0;

		cropW = (cropW !== "0" && typeof cropW !== "undefined") ? parseFloat(cropW) : 0;
		cropH = (cropH !== "0" && typeof cropH !== "undefined") ? parseFloat(cropH) : 0;

		// console.log("cropX: ", cropX);
		// console.log("cropY: ", cropY);
		// console.log("cropW: ", cropW);
		// console.log("cropH: ", cropH);

		if(cropW !== 0 && cropH !== 0) {
			jcropOptions.setSelect = [
				cropX,
				cropY,
				cropX + cropW,
				cropY + cropH
			];
		}

		$crop.Jcrop(jcropOptions);

	}

	$('#show_preview').click(function(){
		$('#preview-container').toggleClass('hide');
	});
});


// preventing global namespace naming conflicts with namespacing used methods
PWFieldtypeCropImage = {

	showCoords: function(c) {
		var $crop = $('#jcrop_target'),

			ew = $crop.data('width'),
			eh = $crop.data('height'),
			ow = $crop.width(),
			oh = $crop.height(),

			rx = ew / c.w,
			ry = eh / c.h;

		$('#preview').css({
			width: Math.round(rx * ow) + 'px',
			height: Math.round(ry * oh) + 'px',
			marginLeft: '-' + Math.round(rx * c.x) + 'px',
			marginTop: '-' + Math.round(ry * c.y) + 'px'
		});

		$('#x1').val(c.x);
		$('#y1').val(c.y);
		$('#w').val(c.w);
		$('#h').val(c.h);
	},

	// converts urls parameters into an object
	//
	// ?param1=foo&param2=bar
	// converts to:
	// {
	// 		param1: "foo",
	// 		param2: "bar"
	// }
	getParameters: function() {
		var searchString = window.location.search.substring(1),
			params = searchString.split("&"),
			hash = {},
			i, val;

		if (searchString === "") return {};
		for (i = 0; i < params.length; i++) {
			val = params[i].split("=");
			hash[unescape(val[0])] = unescape(val[1]);
		}
		return hash;
	}

};
