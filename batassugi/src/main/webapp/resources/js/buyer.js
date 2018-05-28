var $a = $('a'),
	$harvestLevel = $('.harvestLevel'),
	$rentCancel = $('.rentCancel'),
	$sellerInfo = $('.sellerInfo');
	$applySeller = $('#applySeller'),
	$applyingSeller = $('#applyingSeller');
	
	// 모달에 넣을 판매자신청 하는 form
var $applyForm = '<form action="registerApplySeller" id="ApplySellerForm" method="post" class="form-horizontal" enctype="multipart/form-data" onsubmit="return false;">';	
	$applyForm += '<div class="form-group">';
	$applyForm += '<label class="control-label col-xs-4">농지문서</label>';
	$applyForm += '<div class="col-xs-8"><div class="filebox">';
	$applyForm += '<input class="upload-name" value="파일선택" disabled="disabled">';
	$applyForm += '<label class="btn btn-primary" for="file">업로드</label>';
	$applyForm += '<input type="file" name="file" id="file" class="form-control upload upload-hidden" accept=".gif, .jpg, .png" required></div></div></div>';
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
function elApplyVo(applyVo) { // ${applyVo}의 EL 값을 매개변수로 받아옴.
	// 판매자 신청버튼을 클릭 시
	$applySeller.on('click',function() { 
		var $applyModal = new BootstrapDialog({ // 모달객체를 선언
			title : '<i class="fa fa-address-card-o fa-lg"></i> 판매자신청',
			message : $applyForm,
			closable : true
		}); //var $applyModal = new BootstrapDialog({})
		
		$applyModal.realize(); // modal.open()메서드를 사용하면 자동으로 호출되지만, 모달이 호출되기전에 조작을 하기위해서 사용.
		$applyModal.getModalBody().find('.filebox .upload-hidden').on('change', function() { // input type 파일명 넣어주는 event
              var $filename;
              $(this).val() != '' ? $filename = $(this)[0].files[0].name : $filename = '파일선택';
              $(this).siblings('.upload-name').val($filename); 
        });
		
		var $ApplySellerForm = $applyModal.getModalBody().find('#ApplySellerForm'); // 모달안에 있는 form을 담음.
		$ApplySellerForm.on('submit', function() { // 모달 안에 있는 신청하기 버튼을 눌렀을시
			$applyModal.close(); // 모달을 닫음.
			$applyModal.onHidden(function() { // 모달이 닫히고 나서 실행되는 function
				$ApplySellerForm.attr('onsubmit','return true;').submit(); // 디폴트 return false;의 값을 return true;로 바꾸고 submit 전송
			}) // $applyModal.onHidden(function(){})
		}); // $ApplySellerForm.on('submit', function(){})
		$applyModal.open(); // 모달을 호출.
	}); // $applySeller.on('click',function(){})
		
	// 판매자 신청 정보보기를 클릭 시
	$applyingSeller.on('click',function() { 
		var info = applyingInfo(applyVo), // 모달안에 넣어줄 table태그를 ${applySellerVo}값을 넣어서 반환받음
			$applyingModal = new BootstrapDialog({ // 모달 객체 선언
			title : '<i class="fa fa-address-card-o fa-lg"></i> 판매자신청',
			message : info.applyingForm,
			closable : true
		}); // $applyingSeller.on('click',function(){})
		
		$applyingModal.realize(); // modal.open()메서드를 사용하면 자동으로 호출되지만, 모달이 호출되기전에 조작을 하기위해서 사용.
		
		// 신청상태가 승인거절이면 type, title, text 변경
		applyVo.applyState === '승인거절' && $applyingModal
			.setType('danger')
			.setTitle('<i class="fa fa-exclamation-circle fa-lg"></i> 승인거절')
			.getModalBody().find('#reason').text('거절사유')
			
		$applyingModal.getModalBody().find('#doc').on('click', function() { // 모달 안에 문서보기 버튼을 클릭시 
			BootstrapDialog.show({
				title : '<i class="fa fa-info-circle fa-lg"></i> 농지정보',
				message : info.farmerDocument,
				closable : true
			}); // BootstrapDialog.alert()
		}); // $applyingModal.getModalBody().find('#doc').on('click', function(){})
		$applyingModal.open(); // 모달을 호출
	}); // $applyingSeller.on('click',function(){})
} // function applyInfo(applyVo)

// 모달에 판매자신청 정보를 출력하기 위한 펑션
function applyingInfo(applyVo) {
	var applyingForm = '<table class="table table-condensed text-center"><thead><tr>';
		applyingForm += '<th class="text-center" style="width: 20%;">신청일</th>';
		applyingForm += '<th class="text-center">처리현황</th>';
		applyingForm += '<th id="reason" class="text-center">신청사유</th>';
		applyingForm += '<th class="text-center">농지문서정보</th>';
		applyingForm += '</tr></thead><tbody><tr>';
		applyingForm += '<td>'+applyVo.applyDate+'</td>';
		applyingForm += '<td>'+applyVo.applyState+'</td>';
		applyingForm += '<td>'+applyVo.applyReason+'</td>';
		applyingForm += '<td><a id="doc" class="btn btn-default">문서보기</a></td>';
		applyingForm += '</tr></tbody></table>',
		farmerDocument = '<div class="text-center"><img src="/batassugi/resources/img/farmer_doc/'+applyVo.farmerDocument+'" class="img-thumbnail imgA"></div>',
		info = {
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
		var value = params[key],
			$objs = $('<input type="hidden"/>').attr({
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




$sellerInfo.on('click', function() {
	
		$tel = $(this).parents().children('td:nth(2)').text(),
		$email = $(this).parents().children('td:nth(3)').text(),
		$image = $(this).parents().children('td:nth(4)').text(),
		$name = $(this).parents().children('td:nth(5)').text(),
		$sellerInfoModal = new BootstrapDialog({
			title : '<i class="fa fa-info-circle"></i> 판매자 정보',
			message : function() {
				var $sellerInfoTable = '<div class="text-center"><img src="/batassugi/resources/img/profile_img/'+$image+'" class="img-thumbnail imgA"></div>';
				$sellerInfoTable += '<table class="table table-condensed text-center"><thead><tr>';
				$sellerInfoTable += '<th class="text-center" style="width: 20%;">이름</th>';
				$sellerInfoTable += '<th class="text-center">이메일</th>';
				$sellerInfoTable += '<th id="reason" class="text-center">전화번호</th>';
				$sellerInfoTable += '</tr></thead><tbody><tr>';
				$sellerInfoTable += '<td>'+$name+'</td>';
				$sellerInfoTable += '<td>'+$email+'</td>';
				$sellerInfoTable += '<td>'+$tel+'</td>';
				$sellerInfoTable += '</tr></tbody></table>';
				return $sellerInfoTable;
			},
			closable : true
		})
	$sellerInfoModal.realize();
	$sellerInfoModal.open();
})

// 대여신청 취소하기 이벤트
$rentCancel.on('click',function() {
	var flag = false,
		$rentNo = $(this).parents().children('td:nth(0)').text(),
		$recruitNo = $(this).parents().children('td:nth(1)').text(),
		$rentSize = $(this).parents().children('td:nth(9)').text();
	BootstrapDialog.confirm({
		type : 'danger',
		message : "신청취소 하시겠습니까?",
		onhidden: function() {
			// flag가 true이면 post전송.
			flag && sendPost('deleteRentByRentNo', {
				'rentNo':$rentNo,'rentSize':$rentSize,'recruitVo.recruitNo':$recruitNo
				})
		},
		callback: function(result) {
			flag = result && result // result가 true이면 flag에 true를 저장.
		} // callback;
	}); // BootstrapDialog.confirm({})
}); // $rentListA.click(function(){})

$harvestLevel.on('click', function() {
	var $harvestStatus = parseInt($(this).children('span:nth(0)').text()),
		$statusImg = '<div class="text-center">';
		$statusImg += '<img src="/batassugi/resources/img/harvestStatus_img/6.png" class="img-thumbnail harvest">';
		$statusImg += '<div class="progress">';
		$statusImg += '<div class="progress-bar progress-bar-success progress-bar-striped active" role="progressbar" style="width: 0%">';
		$statusImg += '</div></div></div>',
		// 수확상태 모달 선언
		$harvestModal = new BootstrapDialog({
		type : 'success',
		title : '<i class="fa fa-leaf"></i> 수확상태',
		message : $statusImg,
		closable : true
	}),
	
		// 수확상태의 백분율값을 해당하는 조건에 1~5로 바꿈
		harvestNum = 0; // 수확상태의 백분율 값을 5단계로 바꾸기 위해 선언
		($harvestStatus > 5 && $harvestStatus < 21) && (harvestNum = 1),
		($harvestStatus > 20 && $harvestStatus < 41) && (harvestNum = 2),
		($harvestStatus > 40 && $harvestStatus < 61) && (harvestNum = 3),
		($harvestStatus > 60 && $harvestStatus < 81) && (harvestNum = 4),
		($harvestStatus > 80) && (harvestNum = 5)

	$harvestModal.realize(); // modal.open()메서드를 사용하면 자동으로 호출되지만, 모달이 호출되기전에 조작을 하기위해서 사용.
	var $harvestImg = $harvestModal.getModalBody().find('.harvest'), // 모달안에 있는 img 태그
		$progressBar = $harvestModal.getModalBody().find('.progress'), // 모달안에 있는 진행바 태그
		i = 0, // setInterval을 이용해 여러사진을 보여주기 위해 선언
		progress = Math.round($harvestStatus/(harvestNum+1)); // 진행바를 수확상태에 맞게 보여주기 위해 수확상태의 백분율을 수확단계만큼 나눔. 
	
	// setInterval을 멈춰주는 function
	function harvestChangeFn() {
		if (i == harvestNum) { // i 값이 수확상태의 상태 값과 같다면
			clearInterval(harvestChange); // clearInterval setInterval을 멈춤
		}
		// 애니메이션을 추가하고 사진을  0단계부터 해당하는 수확상태의 맥스값까지 바꿈.
		$harvestImg.toggleClass('animated fadeIn').attr('src','/batassugi/resources/img/harvestStatus_img/'+(i)+'.png');
		// 진행바를 수확상태에 따라서 0%부터 해당하는 수확상태의 맥스값까지 바꿈
		$progressBar.children().css('width',progress+'%').html(function() {
			progress > 100 ? progress = 100 : progress
					return progress+'%'	
				})
		i++; // 사진을 0단계부터 해당하는 수확상태의 맥스값까지 바꾸기 위해 사진을 바꾸고 1씩 올린다.
		progress+=Math.round($harvestStatus/(harvestNum+1)); // 진행바를 수확상태에 맞게 보여주기 위해 수확상태의 백분율을 수확단계만큼 나눈만큼 더해준다.
	}
	var harvestChange = setInterval(harvestChangeFn, 1000); // setInterval을 1초마다 실행
	$harvestModal.open(); // 모달을 호출
})