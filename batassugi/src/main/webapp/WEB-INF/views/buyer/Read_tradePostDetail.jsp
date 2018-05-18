<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<div class="container">
	<div class="row main">
		<div class="ccol-xs-12">
			<h3></h3>
			<table class="table table-hover text-center">
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
						<td colspan="2"><img src="${pageContext.request.contextPath}/resources/img/trade_img/${tvo.tradePhoto}"></td>
						<td colspan="3"><pre>${tvo.tradeContent}</pre></td>
					<tr>
				</tbody>
			</table><%-- table table-hover --%>
			<%-- 댓글 영역 --%>
			<div id="listReply"></div>			
			<div class ="text-center">
				<c:if test="${sessionScope.mvo.memberVo.nickname != null}">    
				<textarea rows="2" cols="100" id="replytext" placeholder="댓글을 작성해주세요"></textarea>
				<button class="btn btn-primary" type="button" id="btnReply">댓글 작성</button>
				</c:if>
			</div>
			<%-- 목록 수정 삭제 버튼 --%>
			<div class="text-center">	
				<button class="btn btn-primary" id="listBtn">목록</button>
				<c:if test="${requestScope.tvo.memberVo.nickname == sessionScope.mvo.memberVo.nickname}">
				<button class="btn btn-primary" id="updateBtn">수정</button>
				<button class="btn btn-primary" id="deleteBtn">삭제</button> 
				</c:if>
			</div>
		</div>
		<%-- col-sm-offset-2 col-sm-8 --%>
	</div>
	<%-- row main --%>
</div>
<%-- container-fluid --%>
<script type="text/javascript">
    $(document).ready(function(){
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
            var replytext=$("#replytext").val();
            var tradeNo="${requestScope.tvo.tradeNo}"
            var param="replytext="+replytext+"&tradeNo="+tradeNo;
            $.ajax({                
                type: "post",
                url: "${pageContext.request.contextPath}/createReply",
                data: param,
                success: function(){
                    alert("댓글이 등록되었습니다.");
                    listReply();
                }
            });
        });
  	  /* function listReply2(){
          $.ajax({
              type: "get",
              url: "${pageContext.request.contextPath}/findReplylist?tradeNo=${requestScope.tvo.tradeNo}",
              success: function(result){
                  var output = "<table>";
                  for(var i in result){
                      output += "<tr>";
                      output += "<td>"+result[i].userName;
                      output += result[i].regdate+"<br>";
                      output += result[i].replytext+"</td>";
                      output += "<tr>";
                  }
                  output += "</table>";
                  $("#listReply").html(output);
              }
          });
      } */
}); //  $(document).ready(function(){}
function listReply(){
    $.ajax({
        type: "get",
        url: "${pageContext.request.contextPath}/findReplylist?tradeNo=${requestScope.tvo.tradeNo}",
        success: function(result){
        // responseText가 result에 저장됨.
            $("#listReply").html(result);
        }
    });
}
</script>