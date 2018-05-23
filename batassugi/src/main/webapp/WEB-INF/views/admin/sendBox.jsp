<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="container-fluid">
	<!-- 테이블 -->
	<div class="manage_content">
		<div class="manage_title">
			<span id="manage_title_big">보낸 쪽지함</span>
			<span id="manage_title_small">회원이 보낸 쪽지를 확인할 수 있습니다.</span> 
		</div>
		<table class="table">
			<thead class="manage_thead">
				<tr>
					<th>번호</th>
					<th>받는사람</th>
					<th>제목</th>
					<th>보낸날짜</th>
					<th>읽은여부</th>
					<th>삭제버튼</th>
				</tr>
			</thead>
			<tbody class="manage_tbody">
				<c:forEach var="list" items="${myMassageList}">
					<tr class="messageRow">
						<td>${list.messageNo}</td>
						<td>${list.receiverNickname}</td>
						<td>${list.messageTitle}</td>
						<td>${list.senderDate}</td>
						<td>
						<c:if test="${list.readDate==null}">
								<span style="color: red">읽지않음</span>
						</c:if> 
						<c:if test="${list.readDate}">
								<span style="color: blue">읽음</span>
						</c:if> 
						</td>
						<td>삭제버튼
						<%-- <c:if test="${list.accuseState=='미처리'}">
								<span id="nostate">${list.accuseState}</span>
							</c:if> <c:if test="${list.accuseState=='신고승인'}">
								<span id="acceptstate">${list.accuseState}</span>
							</c:if> <c:if test="${list.accuseState=='신고거절'}">
								<span id="refusestate">${list.accuseState}</span>
							</c:if> --%>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>

		<!-- 페이징 처리 -->
		<div class="manager_paging">
			<nav aria-label="...">
				<ul class="pagination justify-content-center">
				</ul>
			</nav>
		</div><!-- manage_paging -->
	</div><!-- manage_content -->
</div><!-- container -->


<!-- 컨텐츠 모달 -->
<div class="modal fade" id="myModal" role="dialog">
	<div class="modal-dialog">
		<!-- Modal content-->
		<div class="modal-content">
			<!-- 모달 헤더 -->
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">보낸쪽지</h4>
			</div>
			
			<div class="modal-body">
				받은이 : <span class="applyContent"  id="messageNo"></span><br> 
				보낸날짜 : <span class="applyContent"  id="senderDate"></span><br>
				읽음 여부 : <span class="applyContent"  id="readDate"></span><br>  
				제목 : <span class="applyContent"  id="messageTitle"></span><br> 
				내용 : <span class="applyContent"  id="messageContents"></span><br> 
			</div>
			<form action="${pageContext.request.contextPath}/admin/deleteMessagePro" id="deleteMessagePro" method="post">
				<input type="hidden" value="메세지번호" name="messageNo" id="deleteNo" >
			</form>
			<!-- 모달 풋터 -->
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal" id="deleteMessageBtn">삭제</button>
				<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
			</div>
		</div>

	</div>
</div>

<script>
$(document).ready(function() {
	var  messageNo;
	var readDate;
	   $(".messageRow").click(function() {
		     var tr = $(this);
		     var td = tr.children();
 		     // td.eq(index)를 통해 요소 값을 가져옴
		     messageNo = td.eq(0).text(); 
		     $("#myModal").modal();
		   });//applyRow 클릭

		   // 모달 띄우기 전 ajax에서 값을 받아와 모달의 html 영역에 값 넣어주기
		   $('#myModal').on('show.bs.modal',function() {
		     $.ajax({
		    	 type : "get",
		         url : "${pageContext.request.contextPath}/admin/detailsendBox",
		         data : "messageNo="+ messageNo,
		         success : function(data) {
		        	 $("#messageNo").html(data.messageNo);
		        	 $("#senderDate").html(data.senderDate);
		        	 if(data.readDate==null){
		        		 $("#readDate").html("읽지 않음").css("color", "red");
		        	 }else{
		        		 $("#readDate").html("읽음").css("color", "blue");
		        	 }
		        	 readDate=data.readDate;
		                 $("#messageTitle").html(data.messageTitle);
		                 $("#messageContents").html(data.messageContents);
		                 $("#deleteNo").val(data.messageNo);
		           }//success      
		        });//ajax 
		   })//모달
		   $("#deleteMessageBtn").click(function() {
			   var message;
			   if(readDate==null){
				   message="수신을 취소하시겠습니까?";
			   }else{
				   message="해당 메세지를 삭제 하시겠습니까?";
			   }
			   var result = confirm(message);
				   if(result){
					   $("#deleteMessagePro").submit();
				   }else{
					   return false;
				   } 
		})
})//ready
</script>