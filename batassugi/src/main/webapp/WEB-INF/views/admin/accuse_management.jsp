<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="container-fluid">
	<!-- 관리 전체영역 -->
	<div class="manage_content">
		<!-- 관리 타이틀 -->
		<div class="manage_title">
			<span id="manage_title_big">신고 처리 승인</span>
			<span id="manage_title_small">회원이 신고한 내역을 처리하는 페이지입니다.</span> 
		</div><!-- 관리 타이틀 -->
		<!-- 관리 테이블 -->
		<table class="table">
			<thead class="manage_thead">
				<tr>
	            	<th>번호</th><th>신청일</th><th>신청자 ID</th><th>신고대상</th><th>분류</th><th>처리상태</th>
	            </tr>
			</thead>
			<tbody class="manage_tbody">
				<c:forEach var="list" items="${accuseList}">
		            <tr class="accuseListRow">
		            	<td>${list.accuseNo}</td>
		            	<td>${list.accuseDate}</td>
		            	<td>${list.accuseId}</td>
		            	<td>${list.reportedId}</td>
		            	<td>${list.accuseCategory}</td>
		            	<td>
		            		<c:if test="${list.accuseState=='미처리'}">
		            			<span id="nostate">${list.accuseState}</span>
		            		</c:if>
		            		<c:if test="${list.accuseState=='신고승인'}">
		            			<span id="acceptstate">${list.accuseState}</span>
		            		</c:if>
		            		<c:if test="${list.accuseState=='신고거절'}">
		            			<span id="refusestate">${list.accuseState}</span>
		            		</c:if>
		            	</td>
		            </tr>
           		</c:forEach>
			</tbody>
		</table><!-- 관리 테이블 -->
		<div class="manager_paging">
	<nav aria-label="...">
		<ul class="pagination justify-content-center">
			<!-- Previous -->
			<c:if test="${paging.previousPageGroup==false}">
				<li class="page-item  disabled"><span class="page-link">Previous</span></li>
			</c:if>
			<c:if test="${paging.previousPageGroup}">
				<li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/admin/adminAccuse?nowPage=${paging.startPageOfPageGroup-1}">Previous</a></li>
			</c:if>
			
			<!-- 숫자 부분 -->
			<c:forEach var="page" begin="${paging.startPageOfPageGroup}" end="${paging.endPageOfPageGroup}">
				<c:choose>
					<c:when test="${page!=paging.nowPage}">	
						<li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/admin/adminAccuse?nowPage=${page}">${page}</a></li>
					</c:when>
					<c:otherwise>
						<li class="page-item active"><span class="page-link">${page}<span class="sr-only">(current)</span></span></li>
					</c:otherwise>
				</c:choose>
			</c:forEach>
			<!-- next -->
			<c:if test="${paging.nextPageGroup==false}">
				<li class="page-item  disabled"><span class="page-link">Next</span></li>
			</c:if>
			<c:if test="${paging.nextPageGroup}">
				<li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/admin/adminAccuse?nowPage=${paging.endPageOfPageGroup+1}">Next</a></li>
			</c:if>
		</ul>
	</nav>
	</div><!-- manage_paging -->
		
		
	</div><!--관리 전체영역 -->
</div><!-- container -->



<!-- 컨텐츠 모달 -->
<div class="modal fade" id="myModal" role="dialog">
	<div class="modal-dialog ">

<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">신고정보</h4>
			</div>
			<div class="modal-body">
				<div class="row">
						<div class="col-sm-4 accuseProofForm">
							<span id="accuseProof"></span>
							<div>신고증거</div>
						</div>
						<div class="col-sm-8 accuseInfo">
							신고번호 : <span id="accuseNo" class="applyContent"></span><br>
							신고자 : <span id="accuseId" class="applyContent"></span><br>
							신고대상자 : <span id="reportedId" class="applyContent"></span><br>
							신고분류 : <span id="accuseCategory" class="applyContent"></span><br>
							신고사유 : <span id="accuseReason" class="applyContent"></span><br>
							신고일자 : <span id="accuseDate" class="applyContent"></span><br>
							신고처리상태 :<span id="accuseState_val" class="applyContent"></span><br>
							<div id="reason" class="applyContent"></div>
							<div id="resultDate" class="applyContent"></div>
							<!-- 지원신청 폼 -->
							<form name="accusePro" method="post" id="accusePro" action="${pageContext.request.contextPath}/admin/accusePro">
							<div id="accuseForm" class="applyContent">
							<input type="hidden" name="accuseNo" id="accuseNo_val" value="번호" >
							<input type="hidden" name="accuseId" id="accuseId_val" value="신고자" >
							<input type="hidden" name="reportedId" id="reportedId_val" value="신고대상자" >
							<label><input type="radio" id="radioBtn1" name="accuseState" value="신고승인" >신고승인</label><br>
							<label><input type="radio" id="radioBtn2" name="accuseState" value="신고거절" >신고거절</label>
							<br>
							<textarea name="resultReason" class="reasonTx" id="reasonTx"></textarea>
							</div>
							</form>
						</div>
				</div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal" id="accuseProBtn"> 제출</button>
				<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
			</div>
		</div>

	</div>
</div>



<script>
$(document).ready(function() {
	// 라디오버튼 승인시 멘트 없애기
	 $("#radioBtn1").click(function() {
		$("#reasonTx").hide();
	})

	$("#radioBtn2").click(function() {
		$("#reasonTx").show();
	})
	
	
	
	// 판매자 신청 row 클릭시 모달 띄우기
	var accuseNo ;
	$(".accuseListRow").click(function() {
		var tr = $(this);
		var td = tr.children();
		// td.eq(index)를 통해 요소 값을 가져옴
		accuseNo = td.eq(0).text();
		$("#myModal").modal();
	});//applyRow 클릭
	
	
	$('#myModal').on('show.bs.modal', function(e) {
     	 $.ajax({
			type : "get",
			url : "${pageContext.request.contextPath}/admin/detailaccuse",
			data : "accuseNo=" + accuseNo,
			success : function(data) {
				$("#radioBtn2").prop('checked', true);
	        	 $("#reasonTx").show();
	        	 $("#reason").hide();
	        	 $("#resultDate").hide();
				if(data.accuseState=="미처리"){
				 $("#accuseNo").html(data.accuseNo);
				 $("#accuseId").html(data.accuseId);
				 $("#reportedId").html(data.reportedId);
				 $("#accuseCategory").html(data.accuseCategory);
				 $("#accuseReason").html(data.accuseReason);
				 $("#accuseDate").html(data.accuseDate);
				 $("#accuseState_val").html(data.accuseState);
				 $("#accuseProof").html("<img src=\"${pageContext.request.contextPath}/resources/img/accuse_img/"
						 +data.accuseProof+"\" width=\"100px\" onclick=\"doImgPop('${pageContext.request.contextPath}/resources/img/accuse_img/"+data.accuseProof+"')\">");
				 $("#accuseNo_val").val(data.accuseNo);
				 $("#accuseId_val").val(data.accuseId);
				 $("#reportedId_val").val(data.reportedId);
				 $("#accuseForm").show();
				 $("#accuseProBtn").show(); 
				 
				}else{
					
					$("#accuseNo").html(data.accuseNo);
					 $("#accuseId").html(data.accuseId);
					 $("#reportedId").html(data.reportedId);
					 $("#accuseCategory").html(data.accuseCategory);
					 $("#accuseReason").html(data.accuseReason);
					 $("#accuseDate").html(data.accuseDate);
					 $("#accuseState_val").html(data.accuseState);
					 $("#accuseProof").html("<img src=\"${pageContext.request.contextPath}/resources/img/accuse_img/"
							 +data.accuseProof+"\" width=\"100px\" onclick=\"doImgPop('${pageContext.request.contextPath}/resources/img/accuse_img/"+data.accuseProof+"')\">");
					 if(data.accuseState=="신고거절"){
						 $("#reason").show();
						 $("#reason").html("신고거절 사유 : "+data.resultReason)
					 }
					 $("#resultDate").html("처리 날짜 : "+data.accuseResultday )
					 $("#accuseForm").hide();
					 $("#accuseProBtn").hide(); 
					 
					 
				}
			}//success      
		});//ajax 
    })//모달
	   // submint botton 누르면 제출
	   $("#accuseProBtn").click(function() {
		   $('#accusePro').submit();
	   });	
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



