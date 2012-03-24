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
	//This is to expand
	$(".shipping_details .expand a").click(function() {
		var id = $(this).parents("table.shipping_details").attr("id");
		var id_int = id.split("_")[2];
		/*	$("#shipping_row_expand_"+id_int).slideToggle(1000,function(){
		 var t = $(this).prev("table.shipping_details").find(".expand").find("a").text();
		 alert(t);
		 });*/
		$("#shipping_row_expand_" + id_int).slideToggle("slow");
		var text = $(this).find("img");

		if(text.attr("src").match('iconCollapseArrow')) {
			$(this).find("img").attr("src", 'assets\\iconExpandeArrow.gif');
		} else {
			$(this).find("img").attr("src", 'assets\\iconCollapseArrow.gif');
		}
		return false;
	});
	//This is to sort the shipment
	$("#shipping_sort").sortable({
		handle : '.sort_items',
		items : 'li.list_items',
		delay : 100,
		opacity : 0.6,
		scroll : false,
		update : function() {
			var newList = $("#shipping_sort").sortable("toArray", {
				attribute : 'id',
				key : 'itemid'
			});
			alert(newList);

			jQuery.ajax({
				type : 'POST',
				//url:'www.google.co.in',
				data : "update_list=" + newList,
				dataType : "html",
				success : function() {
					alert('update div');
				}
			});

		}
	});

});
