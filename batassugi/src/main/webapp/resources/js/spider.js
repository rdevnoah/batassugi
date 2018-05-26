var $closeSide = $('#closeSide'), 
	$openSide = $('#openSide'), 
	$mySidenav = $('#mySidenav'), 
	$parallax = $('#parallax'), 
	$board = $('#board'), 
	$vcenterLi = $('.vcenter li'), 
	$vcenterA = $('.vcenter a'), 
	$paginationA = $('.pagination a'), 
	$postListA = $('.postList a'), 
	$like = $('.like a'), 
	$rentForm = $('#rentForm'), 
	$rent = $('.rent button'), 
	$rentPaginationA = $('.rentPagination a');
	$cropsList = $('.cropsList');
	

// 헤더 애니메이션 이벤트 추가
$vcenterLi.on('mouseenter', function() {
	$(this).addClass('animated pulse');
}).on('mouseleave', function() {
	$(this).removeClass('animated pulse');
});

// 슬라이드 오픈
$openSide.on('click', function() {
	$mySidenav.css('width', '15%');
});

// 슬라이드 클로즈
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

// 페이징, 디테일 펑션
var postEvent = {
	sendPost : function(params) {
		sendPost(params.path, params.parms)
	}, // sendPost
	paging : function($this, previous, end) {
		if ($this.is('#previousPage')) {
			param = previous;
		} else if ($this.is('#nextPage')) {
			param = end;
		} else {
			param = $this.text();
		}
		return postEvent.sendPost({
			path : 'tradePost',
			parms : {
				'pageNum' : param
			}
		})
	}, // paging

	findPostDetail : function($this) {
		param = $this.parents().children('td:first').text();
		return postEvent.sendPost({
			path : 'findTradePostListByNo',
			parms : {
				'tradeNo' : param
			}
		})
	} // findPostDetail
} // postEvent

/**
 * 대여신청 상세정보 뷰 출력 event
 * 
 * @author "SL SangUk Lee"
 * @returns
 */
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
		sendPost(path, {
			'pageNum' : param
		})
	}, // paging
	detail : function(target, path, params) {
		sendPost(path, params)
	} // detail
} // rentList

/**
 * 대여신청을 위한 event
 * 
 * @author "SL SangUk Lee"
 * @returns
 */
$rentForm.on('submit', function() {
	var flag;
	BootstrapDialog.confirm({
		message : '농지 대여를 신청을 하시겠습니까?',
		onhidden : function() {
			// flag가 true면 onsubmit속성을 return true;으로 바꾸고 submit(); 
			flag == 'true' ? $rentForm.attr('onsubmit','return true;').submit() : '';
		},
		callback : function(result) {
			flag = [ result == true ? 'true' : '' ]; // 확인버튼 클릭시 true를 반환, 취소버튼 클릭시 false를 반환해서 flag에 담음.
		}
	});
});

	$vcenterLi.on('mouseenter', function() {
		$(this).addClass('animated pulse');
	}).on('mouseleave', function() {
		$(this).removeClass('animated pulse');
	});

	$openSide.on('click', function() {
		$mySidenav.css('width', '15%');
	});

	$vcenterA.on('mouseenter', function() {
		$(this).css('color', 'black')
	}).on('mouseleave', function() {
		$(this).css('color', 'gray')
	});

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

