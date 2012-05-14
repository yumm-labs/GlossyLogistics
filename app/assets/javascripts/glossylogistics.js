//= require jquery
//= require easySlider

$(document).ready(function() {
	$("#slider").easySlider({
		auto : true,
		continuous : true,
		prevText : '',
		nextText : ''
	});

$('#controls1 a').html('Imports')
$('#controls2 a').html('Exports')
$('#controls3 a').html('Customs')
$('#controls4 a').html('Help')
});
