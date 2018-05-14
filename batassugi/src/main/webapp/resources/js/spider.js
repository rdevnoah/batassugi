/**
 * 
 */

var $closeSide = $('#closeSide'),
		$openSide = $('#openSide'),
		$mySidenav = $('#mySidenav'),
		$parallax = $('#parallax'),
		$board = $('#board'),
		$a = $('a');
		$vcenterA = $('.vcenter a');
	
	$a.on('mouseenter',function(){
		$(this).addClass('animated pulse');
	}).on('mouseleave',function(){
		$(this).removeClass('animated pulse');
	});
	
	$openSide.on('click',function(){
		$mySidenav.css('width','15%');
	});

	$closeSide.on('click',function(){
		$mySidenav.css('width','0%');
	});
	
	$vcenterA.on('click', function(e) {
		if ($(this).attr('class') != 'choice') {
			$(this).parents().find('.choice').removeClass('choice')
			$(this).addClass('choice')
		}
	});
	
	$vcenterA.on('mouseenter', function() {
		$(this).css('color','black')
	}).on('mouseleave', function() {
		$(this).css('color','gray')
	});