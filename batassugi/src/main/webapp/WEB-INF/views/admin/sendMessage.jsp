<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

<div class="container-fluid">
	<!-- 테이블 -->
	<div class="manage_content">
		<!-- 창 제목 -->
		<div class="manage_title">
			<span id="manage_title_big">쪽지 보내기</span>
			<span id="manage_title_small">다른 회원에게 쪽지를 보냅니다.</span> 
		</div>
		
		<!-- 메세지 작성 영역 -->
		<div class="container-fluid massgeInfo" style="background-color:red;">
			<div class="row">
			<form method="post" id="registerMessage" action="${pageContext.request.contextPath}/admin/registerMessage">
				<div class="col-sm-6" style="background-color:lavender;">
						보내는 사람 : ${sessionScope.mvo.memberVo.nickname}
						<input type="hidden" name="senderId" value="${sessionScope.mvo.memberVo.id}">
				</div>
				<div class="col-sm-6" style="background-color:lavenderblush;">
		    			<div id="reId">받는 사람 : <input type="text" name="receiverId" id="receiveId"></div>
		    			<input type="checkbox" id="toMe" value="내게쓰기"> 내게 쓰기
		   		</div>
			</div>
					제목 : <input type="text" name="messageTitle">
					내용 : <textarea rows="" cols="" name="messageContents"></textarea>
			</form>
		</div>
		<button type="button" class="btn btn-default" id="sendBtn"> 보내기 </button>
	</div><!-- manage_content -->
</div>
<script>
$(document).ready(function() {
	var receiveId;
	var receiveNickname;
	$("#receiveId").autocomplete({
		 source: function(request,response) {
			 $.ajax({
				 type: 'post',
                 url: "${pageContext.request.contextPath}/admin/findNicknameByWord",
                 dataType: "json",
                 //request.term = $("#autocomplete").val()
                 data: { nickname : request.term },
                 success: function(data) {
                     //서버에서 json 데이터 response 후 목록에 뿌려주기 위함
                     if(!data.length){
                    	 var result = [
                    	       {
                    	       label: '없는 닉네임입니다', 
                    	       value: response.term
                    	       }
                    	     ];
                    	 sendId="";
                    	 response(result);
                     }else{
                    	 response(
                                 $.map(data, function(item) {
                                	 /*  return {
                                          label: item.nickname,
                                          value: item.id
                                      } */
	                               	 receiveId=item.id;
                                	 receiveNickname=item.nickname;
                                	 return receiveNickname; 
                                	 
                         })
                         )
                     }
                 }<%-- success--%>
			 })<%-- ajax--%>
		 },<%-- source 부분 --%>
		 minLength: 2,
	        select: function( event, ui ) {
	        	
	    }
		
	})<%-- autocomplete --%>
	
	$("#sendBtn").click(function() {
		if($("#toMe").is(":checked")){
			$("#receiveId").val("${sessionScope.mvo.memberVo.id}");
		}else{
			// 체크한 nickname이 변경되었을 경우
			checkNickname = $("#receiveId").val();
			if(checkNickname!=receiveNickname){
				alert("닉네임을 다시 체크해주세요");
				$("#receiveId").val("");
				$("#receiveId").focus();
				return false;
			}
			$("#receiveId").val(receiveId);
		}
		$("#registerMessage").submit();
	})
	
	$("#toMe").change(function() {
		 if (!this.checked) {
			 $("#receiveId").val("");
			 $('#reId').show();
			 $("#receiveId").focus();
		 }else {
			 $('#reId').hide();
		 }
	})
	
	
    $('input:text,textarea').focus(
    	    function(){
    	        $(this).css({'background-color' : '#FFFFEE'});
    	    });

    	    $('input:text,textarea').blur(
    	    function(){
    	        $(this).css({'background-color' : '#FFFFFF'});
    	    });
})<%-- ready --%>

</script>