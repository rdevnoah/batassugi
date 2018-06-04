<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<div class="container-fluid">
	<div class="row">
		<div class="col-xs-12">
			<form class="form-inline" action="${pageContext.request.contextPath}/seller/farm_register" id="farmRegister" method="post" enctype="multipart/form-data" onsubmit="return checkRegisterFarm()">
				<div class="" id="choise"></div>
				<div class="panel panel-warning">
					<div class="panel panel-heading">
						<span style="font-size: 20px;">농지등록</span><small> 판매자가 농지를 등록하는 페이지입니다.</small>
					</div>
					<div class="panel panel-body">
							
						<div class="form-group regGroup col-xs-2 text-center">
							<h3 style="margin-top: 0px;">농지사진</h3>
							<img id="previewImg" src="${pageContext.request.contextPath}/resources/img/logo.png" id="previewImg" style="height: 150px; margin-bottom: 10px;"/>
							<div class="filebox">
								<label class="btn btn-primary" for="file">업로드</label>
								<input type="file" name="file" id="file" class="form-control upload upload-hidden" placeholder="프로필을 넣어주세요" onchange="LoadImg(this);" accept=".gif, .jpg, .png" required>
								<button type="button" class="btn btn-danger" onclick="ResetImgvalue();">취소</button>
							</div>
						</div>
						
						<div class="form-group regGroup col-xs-10">
							<label class="form-label" style="font-weight:normal;">농지 등록 평수 </label>
							<input type="number" name="farmSize" id='farmSize' min="1" class="form-control" required>
						</div>
						
						<div class="form-group regGroup col-xs-10">
							<label class="form-label" style="font-weight:normal;">농지 등록 날짜 </label>
							<input type="text" name="farmStartdate" value="${requestScope.date}" class="form-control" readonly style="background-color: #FFFFFF;">
						</div>
						
						
						<div class="form-group regGroup col-xs-10">
							<label class="form-label" style="font-weight:normal;">농지 만료 날짜 </label>
							<input id="endDate" type="date" name="farmEnddate" class="form-control" required>
						</div>
						
						
						<div class="form-group regGroup col-xs-10">
							<label class="form-label" style="font-weight:normal;">농지 등록 주소 </label> 
							<input type="text" id="sample6_address" name="farmAddress" class="form-control" readonly style="background-color: #FFFFFF;">
							<button type="button" class="btn btn-primary" onclick="sample6_execDaumPostcode()">주소선택</button>
						</div>
						
						<div class="form-group regGroup col-xs-10">
							<label class="form-label" style="font-weight:normal;">가능 작물 선택 </label>
							<select id="cropsSelect" class="form-control" required>
								<option value="">---------선택---------</option>
								<c:forEach items="${cropsList}" var="crops">
								<option value="${crops.cropsNo}">${crops.cropsName}</option>
								</c:forEach>
							</select>
						</div>
						
						<div class="form-group regGroup col-xs-3">
							<span class="cropsList">
							</span>
						</div>
						
						<div class="form-group regGroup col-xs-12 text-center">
							<div class="col-xs-offset-2 col-xs-2">
								<button type="submit" class="btn btn-primary btn-block">등록</button>
							</div>
						</div>
					</div> <%-- panel panel-body --%>
				</div> <%-- panel panel-warning --%>
			</form> <%-- form-inline --%>
		</div>
	</div>
</div>
<script>
function sample6_execDaumPostcode() {
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var fullAddr = ''; // 최종 주소 변수
            var extraAddr = ''; // 조합형 주소 변수

            // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                fullAddr = data.roadAddress;

            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                fullAddr = data.jibunAddress;
            }

            // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
            if(data.userSelectedType === 'R'){
                //법정동명이 있을 경우 추가한다.
                if(data.bname !== ''){
                    extraAddr += data.bname;
                }
                // 건물명이 있을 경우 추가한다.
                if(data.buildingName !== ''){
                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('sample6_address').value = fullAddr;
            autoSize($('#sample6_address'))
        }
    }).open();
}

function autoSize(elt) {
	var value = $(elt).val();
    $('body').append('<span id="virtual_dom">' + value + '</span>'); 
   	var inputWidth =  $('#virtual_dom').width() + 30; // 글자 하나의 대략적인 크기 
   	$(elt).css('width', inputWidth); 
    $('#virtual_dom').remove();
}

function checkRegisterFarm(){
	var endDate = new Date();
	endDate = $("#endDate").val();
	var nowDate = nowdateCal();
	if (endDate < nowDate){
		BootstrapDialog.alert("등록 만료 날짜를 다시 확인해주세요");
		return false;
	}else{
		return true;
	} 
}
function nowdateCal() {
	var date = new Date();
	var year = date.getFullYear(); //년도
	var month = date.getMonth()+1; //월
	var day = date.getDate(); //일
	if ((month+"").length < 2) {       // 일이 한자리 수인 경우 앞에 0을 붙여주기 위해\
		month = "0" + month;
	}
	if ((day+"").length < 2) {       // 일이 한자리 수인 경우 앞에 0을 붙여주기 위해
    	day = "0" + day;
	}
	var getToday = year+"-"+month+"-"+day; // 오늘 날짜 (2017-02-07)
	return getToday;
}

function LoadImg(value) {
	if(value.files && value.files[0]) {
		var reader = new FileReader();
		reader.onload = function (e) {
			$('#previewImg').attr('src', e.target.result);                    
			}
		reader.readAsDataURL(value.files[0]);
		}
	$('#previewImg').attr('src', "${pageContext.request.contextPath}/resources/img/logo.png");
	if ($('#previewImg').attr('class')=="animated fadeIn") {
		$('#previewImg').removeClass("animated fadeIn")
	} else {
		$('#previewImg').addClass("animated fadeIn")
	}
}
  
function ResetImgvalue() {
	// 프로필 이미지 리셋
	$("#file").val("");
	// 미리보기 이미지 리셋
	$('#previewImg').attr('src', "${pageContext.request.contextPath}/resources/img/logo.png");
	if ($('#previewImg').attr('class')=="animated fadeIn") {
		$('#previewImg').removeClass("animated fadeIn")
	} else {
		$('#previewImg').addClass("animated fadeIn")
	}
}

$(document).ready(function() {
	
	$('#sample6_address').on('keyup', function(e){
	    $(this).attr('size', $('#sample6_address').val().length);
	});
	
	var $cropsSelect = $('#cropsSelect')
		,$cropsList = $('.cropsList')
    	,$farmRegister = $('#farmRegister')
		,$choise = $('body').find('#choise');
    
	$cropsSelect.on('change', function() {
    	var $cropsName = $(this).find("option[value='" + $(this).val() + "']").text()
    		,$cropsA = $('<a id="'+$cropsName+'" class="btn btn-link" data-placement="bottom" data-toggle="popover" data-container="body" data-trigger="hover" title="" data-content="'+$cropsName+'">')
    		,$cropsImg = $('<img class="'+$cropsName+'" src="${pageContext.request.contextPath}/resources/img/crops_illur/'+$cropsName+'.png">')
			,$inputCrops = $('<input id="'+$cropsName+'" type="hidden" name="cropsNo" value="'+$(this).val()+'" />')
			
		if ($(this).val() !== "" && $(this).parents().find('.cropsList img').length < 7) {
	    	if($cropsName != $cropsList.find('#'+$cropsName).attr('id')) {
	    		$cropsList.append($cropsA.append($cropsImg))
	    		$choise.append($inputCrops)
	    	} // if
		} // if
   		$('[data-toggle="popover"]').popover()
   		
	    $('.'+$cropsName).on('click',function(){
	    	$(this).parents().find('#'+$cropsName).popover('destroy')
	    	$(this).parents().find('#'+$cropsName).remove()
	    	$choise.find('#'+$cropsName).remove()
	    }) // click
    }) // change
    
})
</script>
























