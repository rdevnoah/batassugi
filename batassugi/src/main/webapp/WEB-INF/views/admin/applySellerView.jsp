<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
판매자신청
<style>
table, th, td {
	border: 1px solid black;
}
</style>

<table>
	<tr>
		<th>번호</th>
		<th>신청아이디</th>
		<th>닉네임</th>
		<th>신청일자</th>
		<th>처리상태</th>
	</tr>

	<c:forEach items="${applyList}" var="apply">
		<tr class="applyRow">
			<td>${apply.applyNo}</td>
			<td>${apply.memberVo.id}</td>
			<td>${apply.memberVo.nickname}</td>
			<td>${apply.applyDate}</td>
			<td>${apply.applyState}</td>
			<td>
		</tr>
	</c:forEach>
</table>
<!-- 페이징 -->
<ul>
	<!-- < -->
	<c:if test="${paging.previousPageGroup}">
		<li><a
			href="${pageContext.request.contextPath}/admin/applySellerView?nowPage=${paging.startPageOfPageGroup-1}">&lt;</a></li>
	</c:if>
	<!-- 1,2,3,4,5 -->
	<c:forEach var="page" begin="${paging.startPageOfPageGroup}"
		end="${paging.endPageOfPageGroup}">
		<c:choose>
			<c:when test="${page!=paging.nowPage}">
				<li><a
					href="${pageContext.request.contextPath}/admin/applySellerView?nowPage=${page}">${page}</a></li>
			</c:when>
			<c:otherwise>
				<li>${page}</li>
			</c:otherwise>
		</c:choose>
	</c:forEach>

	<!-- > -->
	<c:if test="${paging.nextPageGroup}">
		<li><a
			href="${pageContext.request.contextPath}/admin/applySellerView?nowPage=${paging.endPageOfPageGroup+1}">&gt;</a></li>
	</c:if>
</ul>
<!-- 컨텐츠 모달 -->
<div class="modal fade" id="myModal" role="dialog">
	<div class="modal-dialog">

		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">Modal Header</h4>
			</div>
			<div class="modal-body">
				등록번호 : <span id="applyNo"></span><br>
				신청자 아이디 : <span id="applyId"></span><br>
				신청자 닉네임 : <span id="applyNickname"></span><br>
				현재 등급 : <span id="applymemberLevel"></span><br>
				신청일자 : <span id="applyregidate"></span><br>
				신청 처리 상태 :<span id="applyState_value">d</span><br>
				신청자 서류 : <span id="farmdoc"></span>
				<div id="reason"></div>
				<div id="resultDate"></div>
				<!-- 지원신청 폼 -->
				<form name="applySellerPro" method="post" id="applySeller" action="${pageContext.request.contextPath}/applySellerPro">
				<div id="applyForm">
				<input type="hidden" name="applyNo" id="applyNo_val" value="번호" >
				<input type="hidden" name="memberVo.id" id="applyId_val" value="아이디" >
				<label><input type="radio" name="applyState" value="승인처리" onClick="this.form.applyReason.disabled=true" checked >승인 처리<br></label>
				<label><input type="radio" id="radio" name="applyState" value="승인거절" onClick="this.form.applyReason.disabled=false" >승인거절</label>
				<br>
				<textarea name="applyReason" disabled="disabled"></textarea>
				</div>
				<input type="submit" value="처리">
				</form>
				
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal" id="applySellerProBtn"> 제출</button>
				<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
			</div>
		</div>

	</div>
</div>


<!-- jquery -->
<script>
	$(document).ready(function() {
		
		// 판매자 신청 row 클릭시 모달 띄우기
		var applyNo ;
		$(".applyRow").click(function() {
			var tr = $(this);
			var td = tr.children();
			// td.eq(index)를 통해 요소 값을 가져옴
			applyNo = td.eq(0).text();
			$("#myModal").modal();
		});//applyRow 클릭
		
		
		$('#myModal').on('show.bs.modal', function(e) {
	     	 $.ajax({
				type : "get",
				url : "${pageContext.request.contextPath}/detailapply",
				data : "applyNo=" + applyNo,
				success : function(data) {
					if(data.applyState=="미처리"){
					 $("#applyNo").html(data.applyNo);
					 $("#applyId").html(data.memberVo.id);
					 $("#applyNickname").html(data.memberVo.nickname);
					 $("#applyregidate").html(data.applyDate);
					 $("#applymemberLevel").html(data.memberVo.memberLevel);
					 $("#applyState_value").html(data.applyState);
					 $("#farmdoc").html("<img src=\"${pageContext.request.contextPath}/resources/img/farmDoc_img/"
							 +data.farmerDocument+"\" width=\"100px\" onclick=\"doImgPop('${pageContext.request.contextPath}/resources/img/farmDoc_img/"+data.farmerDocument+"')\">");
					 $("#applyNo_val").val(data.applyNo);
					 $("#applyId_val").val(data.memberVo.id);
					 $("#applyForm").show();
					 $("#applySellerProBtn").show();
					 
					}else{
						$("#applyNo").html(data.applyNo);
						 $("#applyId").html(data.memberVo.id);
						 $("#applyNickname").html(data.memberVo.nickname);
						 $("#applyregidate").html(data.applyDate);
						 $("#applymemberLevel").html(data.memberVo.memberLevel);
						 $("#applyState_value").html(data.applyState);
						 $("#farmdoc").html("<img src=\"${pageContext.request.contextPath}/resources/img/farmDoc_img/"
								 +data.farmerDocument+"\" width=\"100px\" onclick=\"doImgPop('${pageContext.request.contextPath}/resources/img/farmDoc_img/"+data.farmerDocument+"')\">");
						 if(data.applyState=="승인거절"){
							 $("#reason").html("승인거절 사유 : "+data.applyReason)
						 }
						 $("#resultDate").html("처리 날짜 : "+data.applyResultdate )
						 $("#applyForm").hide();
						 $("#applySellerProBtn").hide();
						 
						 
					}
				}//success      
			});//ajax 
	    })//모달
	}); //ready
	
	
	//이미지 눌렀을 때 미리보기
	function doImgPop(img){ 
		 img1= new Image(); 
		 img1.src=(img); 
		 imgControll(img); 
		} 
		  
		function imgControll(img){ 
		 if((img1.width!=0)&&(img1.height!=0)){ 
		    viewImage(img); 
		  } 
		  else{ 
		     controller="imgControll('"+img+"')"; 
		     intervalID=setTimeout(controller,20); 
		  } 
		}

		function viewImage(img){ 
		 W=img1.width; 
		 H=img1.height; 
		 O="width="+W+",height="+H+",scrollbars=yes"; 
		 imgWin=window.open("","",O); 
		 imgWin.document.write("<html><head><title>:*:*:*: 이미지상세보기 :*:*:*:*:*:*:</title></head>");
		 imgWin.document.write("<body topmargin=0 leftmargin=0>");
		 imgWin.document.write("<img src="+img+" onclick='self.close()' style='cursor:pointer;' title ='클릭하시면 창이 닫힙니다.'>");
		 imgWin.document.close();
		}	
</script>

