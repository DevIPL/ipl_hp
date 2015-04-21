/*
	納品書メーカー
	author: iwai
	version: 1.03 (2011.12.05)
*/


$(function(){
	$("#nouhin_title").editInPlace({
		callback: function(unused, enteredText) { return enteredText; },
	});
	$("#kenmei_label").editInPlace({
		callback: function(unused, enteredText) { return enteredText; },
	});
	$("#nouki_label").editInPlace({
		callback: function(unused, enteredText) { return enteredText; },
	});

	$("#project_no").editInPlace({
		callback: function(unused, enteredText) { return enteredText; },
	});
	$("#project_date").editInPlace({
		callback: function(unused, enteredText) { return enteredText; },
	});
	$("#project_type").editInPlace({
		callback: function(unused, enteredText) { return enteredText; },
	});
	$("#project_end").editInPlace({
		callback: function(unused, enteredText) { return enteredText; },
	});
	$("#customer").editInPlace({
		callback: function(unused, enteredText) { return enteredText; },
	});
	$("#mycustomer").editInPlace({
		callback: function(unused, enteredText) { return enteredText; },
	});
	$("#address1").editInPlace({
		callback: function(unused, enteredText) { return enteredText; },
	});
	$("#address2").editInPlace({
		callback: function(unused, enteredText) { return enteredText; },
	});


	$("#hitokoto").editInPlace({
		callback: function(unused, enteredText) { return enteredText; },
	});

	$("#project_manager").editInPlace({
		callback: function(unused, enteredText) { return enteredText; },
	});
	$("#telephone").editInPlace({
		callback: function(unused, enteredText) { return enteredText; },
	});
	$("#mail").editInPlace({
		callback: function(unused, enteredText) { return enteredText; },
	});

	$("#edit_form").css("display", "none");
	$("#nouhin_list").click(function(){
		$("#edit_form").slideDown("fast");
	});

	$("#addrow").click(function(){
			var maxnum = $("#nouhin_edit tr").length;
			$("#nouhin_edit tr:last").after("<tr><td>"+ maxnum +"</td><td><input class='nouhin_file' /></td><td><input class='nouhin_desc' /></td></tr>");
	});
	$("#delrow").click(function(){
			$("#nouhin_edit tr:last").remove();
	});

	$("#nouhinbukken_label").editInPlace({
		callback: function(unused, enteredText) { return enteredText; },
	});

	$("#naiyou_label").editInPlace({
		callback: function(unused, enteredText) { return enteredText; },
	});


	$("#nouhin_reflect").click(function(){
			var maxnum = $("#nouhin_edit tr").length;
			var table = $("#nouhin_list tr");
			table.remove();
			var nouhinbukken_label = $("#nouhinbukken_label").text();
			var naiyou_label = $("#naiyou_label").text();

			var header="<tr><td>No</td><td>"+ nouhinbukken_label +"</td><td>"+ naiyou_label + "</td></tr>";
			$("#nouhin_list").append(header);
			var nouhin_file = $(".nouhin_file");
			var nouhin_desc = $(".nouhin_desc");
			for(var i = 0; i < maxnum - 1; i++){
				$("#nouhin_list tr:last").after("<tr><td>"+ (i+1) +"</td><td>"+ nouhin_file[i].value +"</td><td>"+ nouhin_desc[i].value +"</td></tr>");
			}
			$("#edit_form").slideUp();
	});

});
