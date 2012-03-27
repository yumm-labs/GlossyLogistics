jQuery(document).ready(function() {

	$(".invoice-dialog-form").dialog({
		autoOpen : false,
		height : 550,
		width : 550,
		modal : true,
		// buttons : {
		// Save : function() {
		// alert('save clicked');
		// },
		// Cancel : function() {
		// $(this).dialog("close");
		// }
		// },
		close : function() {
			allFields.val("").removeClass("ui-state-error");
		}
	});

	$('.invoice').click(function() {
		var shipmentId = $(this).closest('li').attr('id');
		$("#invoice-dialog-form-" + shipmentId).dialog("open");
	});

	$('.remove_product_detail').live('click', function() {
		$(this).closest('tr').remove();
	});
});
