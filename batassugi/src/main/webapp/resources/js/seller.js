var $a = $('a'),
	$li = $('li');


//헤더 애니메이션 이벤트 추가
$li.on('mouseenter', function() {
	$(this).addClass('animated pulse');
}).on('mouseleave', function() {
	$(this).removeClass('animated pulse');
}); // $a.on('mouseenter', function(){}).on('mouseleave', function(){})


$('#sidebarCollapse').on('click', function () {
	$('#sidebar').toggleClass('active');
	$(this).toggleClass('active');
});
