$(document).ready(function() {
	
	$('#all').click(function() {
		$('.service').css("background-color", "white");
		$('#all').css("background-color", "#c0c0c0");
		$('.panel').show();
	});
	
	$('#buy').click(function() {$('.service').css("background-color", "white");
		$('#buy').css("background-color", "#c0c0c0");
		$('.panel').show();
		$('.panel[id!=buy]').hide();
		
	});
	
	$('#sell').click(function() {
		$('.service').css("background-color", "white");
		$('#sell').css("background-color", "#c0c0c0");
		$('.panel').show();
		$('.panel[id!=sell]').hide();
		
	});
	
	$('#use').click(function() {
		$('.service').css("background-color", "white");
		$('#use').css("background-color", "#c0c0c0");
		$('.panel').show();
		$('.panel[id!=use]').hide();
		
	});
	
	$('#fraud').click(function() {
		$('.service').css("background-color", "white");
		$('#fraud').css("background-color", "#c0c0c0");
		$('.panel').show();
		$('.panel[id!=fraud]').hide();
		
	});
	
	$('#ect').click(function() {
		$('.service').css("background-color", "white");
		$('#ect').css("background-color", "#c0c0c0");
		$('.panel').show();
		$('.panel[id!=ect]').hide();
		
	});
});
