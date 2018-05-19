var $a = $('a'),
	$rentListA = $('.rentList a'),
	$applySeller = $('#applySeller'),
	$applyingSeller = $('.components').children('li:nth-child(2)');
	
var $applyForm = '<form action="registerApplySeller" id="ApplySellerForm" method="post" class="form-horizontal" enctype="multipart/form-data" onsubmit="return false;">';	
	$applyForm += '<div class="form-group">';
	$applyForm += '<label class="control-label col-xs-4">농지문서</label>';
	$applyForm += '<div class="col-xs-5">';
	$applyForm += '<input type="file" name="file" class="form-control" placeholder="농지문서추가" required></div></div>';
	$applyForm += '<div class="form-group">';
	$applyForm += '<label class="control-label col-xs-4">신청사유</label>';
	$applyForm += '<div class="col-xs-5">';
	$applyForm += '<input type="text" name="applyReason" class="form-control" placeholder="신청사유" required></div></div>';
	$applyForm += '<div class="form-group">';
	$applyForm += '<div class="col-xs-offset-4 col-xs-5">';
	$applyForm += '<button type="submit" class="btn btn-primary btn-block">신청하기</button></div></div></form>';
	
// 메뉴버튼 슬라이드 애니메이션
$('#sidebarCollapse').on('click', function() {
	$('#sidebar').toggleClass('active');
	$(this).toggleClass('active');
}); // $('#sidebarCollapse').on('click', function(){})

// 판매자신청 모달
function applyInfo(applyVo) {
	if(applyVo.applyState === '') {
		$applySeller.on('click',function() {
			var $applyModal = new BootstrapDialog({
				title : '<i class="fa fa-address-card-o fa-lg"></i> 판매자신청',
				message : $applyForm,
				closable : true
			}); //var $applyModal = new BootstrapDialog({})
			$applyModal.realize();
			var $ApplySellerForm = $applyModal.getModalBody().find('#ApplySellerForm');
			$ApplySellerForm.on('submit', function() {
				$applyModal.close();
				$applyModal.onHidden(function() {
					$ApplySellerForm.attr('onsubmit','return true;').submit();
				}) // $applyModal.onHidden(function(){})
			}); // $ApplySellerForm.on('submit', function(){})
			$applyModal.open();
		}); // $applySeller.on('click',function(){})
	} else {
		$applySeller.removeAttr('id','applySeller');
		$applyingSeller.html('<a> <i class="fa fa-user-plus fa-lg"></i>판매자신청 정보보기</a>')
		$applyingSeller.on('click',function() {
			var info = applyingInfo(applyVo);
			var $applyingModal = new BootstrapDialog({
				title : '<i class="fa fa-address-card-o fa-lg"></i> 판매자신청',
				message : info.applyingForm,
				closable : true
			}); // $applyingSeller.on('click',function(){})
			$applyingModal.realize();
			$applyingModal.getModalBody().find('#doc').on('click', function() {
				BootstrapDialog.alert({
					title : '<i class="fa fa-info-circle fa-lg"></i> 농지정보',
					message : info.farmerDocument,
					closable : true
				}); // BootstrapDialog.alert()
			}); // $applyingModal.getModalBody().find('#doc').on('click', function(){})
			$applyingModal.getModalBody().find('#confirm').on('click', function() {
				$applyingModal.close();
			}) // $applyingModal.getModalBody().find('#confirm').on('click', function(){})
			$applyingModal.open();
		}); // $applyingSeller.on('click',function(){})
	} // else
} // function applyInfo(applyVo)

// 모달에 판매자신청 정보를 출력하기 위한 펑션
function applyingInfo(applyVo) {
	var applyingForm = '<table class="table table-condensed text-center"><thead><tr>';
		applyingForm += '<th class="text-center" style="width: 20%;">신청일</th>';
		applyingForm += '<th class="text-center">처리현황</th>';
		applyingForm += '<th class="text-center">신청사유</th>';
		applyingForm += '<th class="text-center">농지문서정보</th>';
		applyingForm += '</tr></thead><tbody><tr>';
		applyingForm += '<td>'+applyVo.applyDate+'</td>';
		applyingForm += '<td>'+applyVo.applyState+'</td>';
		applyingForm += '<td>'+applyVo.applyReason+'</td>';
		applyingForm += '<td><a id="doc" class="btn btn-primary">문서보기</a></td>';
		applyingForm += '</tr></tbody></table>';
		applyingForm += '<div class="text-right"><button id="confirm" class="btn btn-default">확인</button></div>';
	var farmerDocument = '<img src="'+applyVo.farmerDocument+'" class="img-thumbnail">';
	var info = {
		'applyingForm' : applyingForm,
		'farmerDocument' : farmerDocument
	} // info
	return info;
} // function applyingInfo(applyVo){})
	
// 헤더 애니메이션 이벤트 추가
$a.on('mouseenter', function() {
	$(this).addClass('animated pulse');
}).on('mouseleave', function() {
	$(this).removeClass('animated pulse');
}); // $a.on('mouseenter', function(){}).on('mouseleave', function(){})

// post전송 function
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
	} // for ( var key in params){})
	$('body').append($f);
	$f.submit();
} // sendPost(path, params)

// 대여신청 상세정보 뷰 출력 event
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
		}) // sendPost(path, {})
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
		} // callback;
	}); // BootstrapDialog.confirm({})
}); // $rentListA.click(function(){})
