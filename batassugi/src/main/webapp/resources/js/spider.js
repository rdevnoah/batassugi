var $closeSide = $('#closeSide'), 
	$openSide = $('#openSide'), 
	$mySidenav = $('#mySidenav'), 
	$parallax = $('#parallax'), 
	$board = $('#board'), 
	$vcenterLi = $('.vcenter li'), 
	$vcenterA = $('.vcenter a'), 
	$like = $('.like a'), 
	$rentForm = $('#rentForm'),
	$rent = $('.rent button'),
	$rentPaginationA = $('.rentPagination a');

// 좋아요
$like.on('click',function() {
	var $like = $(this).parents('.like').find('i:first');
	$like.attr('class', [ $like.attr('class') == 'fa fa-heart-o fa-lg' ? 'fa fa-heart fa-lg' : 'fa fa-heart-o fa-lg' ])
});

$vcenterLi.on('mouseenter', function() {
	$(this).addClass('animated pulse');
}).on('mouseleave', function() {
	$(this).removeClass('animated pulse');
});

$openSide.on('click', function() {
	$mySidenav.css('width', '15%');
});

$closeSide.on('click', function() {
	$mySidenav.css('width', '0%');
});

$vcenterA.on('click', function(e) {
	if ($(this).attr('class') != 'choice') {
		$(this).parents().find('.choice').removeClass('choice')
		$(this).addClass('choice')
	}
});

$vcenterA.on('mouseenter', function() {
	$(this).css('color', 'black')
}).on('mouseleave', function() {
	$(this).css('color', 'gray')
});

/**
 * post전송을 위한 function.
 * 
 * @author "SL SangUk Lee"
 * @param path 전송할 url.
 * @param params 전송할 데이터.
 * @returns
 */
function sendPost(path, params) {
	var $f = $('<form></form>').attr({
		action : path,
		method : 'post'
	});
	for ( var key in params) {
		var value = params[key];
		var $objs = $('<input type="hidden"/>').attr({
			name : key,
			value : value
		});
		$f.append($objs);
	}
	$('body').append($f);
	$f.submit();
} // sendPost(path, params)

/**
 * 대여신청을 위한 event
 * 
 * @author "SL SangUk Lee"
 * @returns
 */
$rentForm.on('submit', function() {
	var flag = false;
	
	BootstrapDialog.confirm({
		message : '농지 대여를 신청을 하시겠습니까?',
		onhidden : function() {
			$rentForm
				.attr('onsubmit', [ flag == 'true' ? 'return true;' : 'return false;' ]) // flag가 true면 return ture; false면 return false;
				.submit(); // submit 전송
		},
		callback : function(result) {
			flag = [ result == true ? true : false ]; // 확인버튼 클릭시 true를 반환, 취소버튼 클릭시 false를 반환해서 flag에 담음.
		}
	}); // BootstrapDialog.confirm({})
}); // $rentForm.on('submit', function(){})

/**
 * 대여신청 상세정보 뷰 출력 event
 * 
 * @author "SL SangUk Lee"
 * @returns
 */
/*$rent.on('click', function() {
	sendPost('findRentDetailByRecruitNo',{'recruitNo':'11'}) // test를 위해 임시 데이터 넣어둠.
	//alert($content.length)
	//alert($content.children('div:nth(3)').text())
})*/

var rentList = {
		paging : function(target, previous, end, path) {
			var param;
			if (target.is('#previousPage')) {
				param = previous;
			} else if (target.is('#nextPage')) {
				param = end;
			} else {
				param = target.text();
			}
			sendPost(path, {'pageNum' : param})
		}, // paging
		detail : function(target, path, params) {
			sendPost(path,params)
		} // detail
	} // rentList
