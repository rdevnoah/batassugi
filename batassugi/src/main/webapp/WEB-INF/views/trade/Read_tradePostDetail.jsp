<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<div class="container">
	<div class="row main">
		<div class="col-xs-12">
			<h3></h3>
			<table class="table table-hover">
				<thead>
					<tr class="info">
						<th class="text-center" style="width: 10%">종류:
							${tvo.tradeKind}</th>
						<th class="text-center" style="width: 20%">제목:
							${tvo.tradeTitle }</th>
						<th class="text-center" style="width: 20%">작성자:
							${tvo.memberVo.nickname }</th>
						<th class="text-center" style="width: 10%">조회수:
							${tvo.tradeHits }</th>
						<th class="text-center" style="width: 20%">작성일: ${tvo.regdate }</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td colspan="2" width="210px" class="text-center" ><img src=" ${pageContext.request.contextPath}/resources/img/trade_img/${tvo.tradePhoto}"  width="210px"></td>
						<td colspan="3"><pre>${tvo.tradeContent}</pre></td>
					<tr>
				</tbody>
			</table><%-- table table-hover --%>
			<%-- 댓글 영역 --%><%-- 목록 수정 삭제 버튼 --%>
			<div class="col-xs-12"  id="listReply" style="width: 100%; word-break: break-all; word-wrap: break-word;">
			</div>
			<div class ="form-inline col-xs-12">
				<c:if test="${sessionScope.mvo.memberVo.nickname != null}">    
				<div class="form-group col-xs-12">
					<div class="col-xs-10">
						<textarea class="form-control"  style="width:100%; resize: none; border: solid 1px; border-color: #5CAB7D" rows="3"  id="replytext" placeholder="댓글을 작성해주세요" ></textarea>
					</div>
					<div class="col-xs-2">
						<br>&nbsp;&nbsp;
						<button class="btn btn-primary"  type="button" id="btnReply">댓글 작성</button>
					</div>
				</div>
				</c:if>
				<div class="form-group col-xs-12 text-center">
						<h6></h6>
						<button class="btn btn-primary" id="listBtn">목록</button>
					<c:if test="${requestScope.tvo.memberVo.nickname == sessionScope.mvo.memberVo.nickname}">
						<button class="btn btn-primary" id="updateBtn">수정</button>
						<button class="btn btn-primary" id="deleteBtn">삭제</button> 
					</c:if>
				</div>
				<br><br><br>
			</div>
		</div> <%-- col-sm-offset-2 col-sm-8 --%>
	</div> <%-- row main --%>
	<div class="row">
		<div class="col-xs-12"><h1>&nbsp;</h1></div>
	</div>
</div><%-- container-fluid --%>
<script>
    $(document).ready(function(){
    	listReply2();
    	$("#listBtn").click(function() {
    		location.href="${pageContext.request.contextPath}/tradePost";
    	});
    	function modalConfrim(msg, path, params) {
    		var flag = false;
	    		BootstrapDialog.confirm({
	    			message: msg,
	    			onhidden : function() {
	    				if (flag) {
				    	  sendPost(path,params)		         
				      } 
				   },
				   callback : function(result) {
				      if (result) {
				         flag = true;
				      }
				   } //callback
			}); // BootstrapDialog.confirm
		} // modalConfrim 
		
    	$("#updateBtn").click(function(){  
    		modalConfrim("게시물을 수정하시겠습니까?", "${pageContext.request.contextPath}/updateBoardForm" , {"tradeNo": "${requestScope.tvo.tradeNo}"});	
    	}); 	
    	$("#deleteBtn").click(function(){ 
    		modalConfrim("게시물을 삭제하시겠습니까?","${pageContext.request.contextPath}/deleteBoard" , {"tradeNo": "${requestScope.tvo.tradeNo}"});
  	 	 }); // $("#deleteBtn").click(function()	
    	
  	 	$("#btnReply").click(function(){
  	 		if ($("#replytext").val() == "") {
				BootstrapDialog.alert({
    				type : "danger",
    				message: "댓글을 입력하세요!"
    			});
				return false;
			}
  	 		var userNickname = "${ sessionScope.mvo.memberVo.nickname}"
            var replyComment=$("#replytext").val();
            var tradeNo="${requestScope.tvo.tradeNo}";
            var param="replyComment="+replyComment+"&tradeNo="+tradeNo +"&memberVo.nickname="+userNickname;
            $.ajax({                
                type: "post",
                url: "${pageContext.request.contextPath}/createReply",
                data: param,
                success: function(data){
                	BootstrapDialog.alert({
                        message : "댓글이 등록되었습니다.",
                        onhide: function() {
                           listReply2();
                           $("#replytext").val("");
                   }
                 });
                },   error:function(request,status,error){
                    BootstrapDialog.alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
                }
            });
        });  	 	 
  	 	function listReply2(){
  	 	    $.ajax({
  	 	        type: "get",
  	 	        url: "${pageContext.request.contextPath}/commentList?tradeNo=${requestScope.tvo.tradeNo}",
  	 	        success: function(result){
  	 	            var $replyList = " ";
  	 	            $.each(result, function(i, data) {
  	 	            	$replyList += '<form class="form-inline"><div class="form-group"><label>'+data.memberVo.nickname+'('+data.replyRegdate+')'+'</label></div></form>';
  	 	            	$replyList += '<form class="form-inline"><div class="form-group"><label>'+data.replyComment+'</label></div></form><hr>';
  	 	            })
  	 	            $("#listReply").html($replyList);
  	 	        }
  	 	    });
  	 	}
}); //  $(document).ready(function(){}
</script>