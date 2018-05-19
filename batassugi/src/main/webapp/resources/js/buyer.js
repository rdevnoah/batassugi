var $a = $('a'),
	$rentListA = $('.rentList a');

// 헤더 애니메이션 이벤트 추가
$a.on('mouseenter', function() {
	$(this).addClass('animated pulse');
}).on('mouseleave', function() {
	$(this).removeClass('animated pulse');
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

// 대여신청 취소하기 이벤트
$rentListA.click(function() {
	var flag = '';
	var $rentNo = $(this).parents().children('td:nth(0)').text()
	BootstrapDialog.confirm({
		type : 'danger',
		message : "신청취소 하시겠습니까?",
		onhidden: function() {
			flag == 'true' ? sendPost('deleteRentByRentNo', {'rentNo':$rentNo}) : '';
		},
		callback: function(result) {
			flag = [result == true ? 'true' : '']
		}
	})
}) 
