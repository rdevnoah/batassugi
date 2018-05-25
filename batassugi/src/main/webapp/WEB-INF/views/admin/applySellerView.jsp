<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="container-fluid">
	<!-- 테이블 -->
	<div class="manage_content">
		<div class="manage_title">
			<span id="manage_title_big">판매자 승인처리</span>
			<span id="manage_title_small">구매자가 판매자 신청을 했을 경우 처리해주는 페이지입니다.</span> 
		</div>
		<table class="table">
			<thead class="manage_thead">
				<tr>
					<th>번호</th>
					<th>신청아이디</th>
					<th>닉네임</th>
					<th>신청일자</th>
					<th>처리상태</th>
				</tr>
			</thead>
			<tbody class="manage_tbody">
			<c:forEach items="${applyList}" var="apply">
				<tr class="applyRow">
					<td>${apply.applyNo}</td>
					<td>${apply.memberVo.id}</td>
					<td>${apply.memberVo.nickname}</td>
					<td>${apply.applyDate}</td>
					<td>
					<c:if test="${apply.applyState=='미처리'}">
		            			<span id="nostate">${apply.applyState}</span>
		            </c:if>
            		<c:if test="${apply.applyState=='승인처리'}">
            			<span id="acceptstate">${apply.applyState}</span>
            		</c:if>
            		<c:if test="${apply.applyState=='승인거절'}">
            			<span id="refusestate">${apply.applyState}</span>
            		</c:if>
					
					</td>
				</tr>
			</c:forEach>
			</tbody>
		</table>
		<!-- 페이징 처리 -->
		<div class="manager_paging">
			<nav aria-label="...">
				<ul class="pagination justify-content-center">
					<!-- Previous -->
					<c:if test="${paging.previousPageGroup==false}">
						<li class="page-item  disabled"><span class="page-link">Previous</span></li>
					</c:if>
					<c:if test="${paging.previousPageGroup}">
						<li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/admin/applySellerView?nowPage=${paging.startPageOfPageGroup-1}">Previous</a></li>
					</c:if>
					
					<!-- 숫자 부분 -->
					<c:forEach var="page" begin="${paging.startPageOfPageGroup}" end="${paging.endPageOfPageGroup}">
						<c:choose>
							<c:when test="${page!=paging.nowPage}">	
								<li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/admin/applySellerView?nowPage=${page}">${page}</a></li>
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
						<li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/admin/applySellerView?nowPage=${paging.endPageOfPageGroup+1}">Next</a></li>
					</c:if>
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
				<h4 class="modal-title">판매자 승인 처리</h4>
			</div>
			
			<div class="modal-body">
				<div class="row">
					<div class="col-sm-4 farmdocumentForm">
						<div id="farmdoc"></div>
						<div>신청자 서류</div>
					</div>
					<div class="col-sm-8">
						등록번호 : <span class="applyContent"  id="applyNo"></span><br> 
						신청자 아이디 : <span class="applyContent" id="applyId"></span><br>
						신청자 닉네임 : <span class="applyContent" id="applyNickname"></span><br>
						현재 등급 : <span class="applyContent" id="applymemberLevel"></span><br> 
						신청일자 : <span class="applyContent" id="applyregidate"></span><br> 
						신청 처리 상태 :<span class="applyContent" id="applyState_value">d</span><br>
						<div id="reason" class="applyContent"></div>
						<div id="resultDate" class="applyContent"></div> 
						<!-- 지원신청 폼 -->
						<form name="applySellerPro" method="post" class="applyContent" id="applySeller" action="${pageContext.request.contextPath}/admin/applySellerPro">
							<div id="applyForm" >
								<input type="hidden" name="applyNo" id="applyNo_val" value="번호">
								<input type="hidden" name="memberVo.id" id="applyId_val" value="아이디"> 
								<label><input type="radio" class="applyContent" id="radioBtn1" name="applyState" value="승인처리" >승인처리</label> 
								<label><input type="radio" class="applyContent" id="radioBtn2" name="applyState" value="승인거절" checked>승인거절</label> <br>
								<div><textarea class="reasonTx" id="reasonTx" name="applyReason"></textarea></div>
							</div>
						</form>
					</div>
				</div>
					
				
			</div>
			<!-- 모달 풋터 -->
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal" id="applySellerProBtn">제출</button>
				<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
			</div>
		</div>

	</div>
</div>


<!-- jquery -->
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
   var applyNo;
   $(".applyRow").click(function() {
		
     var tr = $(this);
     var td = tr.children();
     // td.eq(index)를 통해 요소 값을 가져옴
     applyNo = td.eq(0).text();
     $("#myModal").modal();
   });//applyRow 클릭

   // 모달 띄우기 전 ajax에서 값을 받아와 모달의 html 영역에 값 넣어주기
   $('#myModal').on('show.bs.modal',function() {
     $.ajax({
    	 type : "get",
         url : "${pageContext.request.contextPath}/detailapply",
         data : "applyNo="+ applyNo,
         success : function(data) {
        	 $("#radioBtn2").prop('checked', true);
        	 $("#reasonTx").show();
        	 $("#reason").hide();
        	 $("#resultDate").hide();
        	 if (data.applyState == "미처리") {
        		 $("#applyNo").html(data.applyNo);
                 $("#applyId").html(data.memberVo.id);
                 $("#applyNickname").html(data.memberVo.nickname);
                 $("#applyregidate").html(data.applyDate);
                 $("#applymemberLevel").html(data.memberVo.memberLevel);
                 $("#applyState_value").html(data.applyState);
                 $("#farmdoc").html("<img src=\"${pageContext.request.contextPath}/resources/img/farmer_doc/"+ data.farmerDocument+"\" onclick=\"doImgPop('${pageContext.request.contextPath}/resources/img/farmer_doc/"+ data.farmerDocument+ "')\">");
                 $("#applyNo_val").val(data.applyNo);
                 $("#applyId_val").val(data.memberVo.id);
                 $("#applyForm").show();
                 $("#applySellerProBtn").show();
             } else {
                 $("#applyNo").html(data.applyNo);
                 $("#applyId").html(data.memberVo.id);
                 $("#applyNickname").html(data.memberVo.nickname);
                 $("#applyregidate").html(data.applyDate);
                 $("#applymemberLevel").html(data.memberVo.memberLevel);
                 $("#applyState_value").html(data.applyState);
                 $("#farmdoc").html("<img src=\"${pageContext.request.contextPath}/resources/img/farmer_doc/"+ data.farmerDocument+ "\" onclick=\"doImgPop('${pageContext.request.contextPath}/resources/img/farmer_doc/"+ data.farmerDocument+ "')\">");
                 if (data.applyState == "승인거절") {
                	 $("#reason").show();
                	 $("#reason").html("승인거절 사유 : "+ data.applyReason);
                	 }
                 $("#resultDate").show();
                 $("#resultDate").html("처리 날짜 : "+ data.applyResultdate);
                 $("#applyForm").hide();
                 $("#applySellerProBtn").hide();
             }
           }//success      
        });//ajax 
   })//모달
   
   $('#myModal').on('hide.bs.modal',function() {
	   
	   
	   
   })
   
   
   
   
   // submint botton 누르면 제출
   $("#applySellerProBtn").click(function() {
	   $('#applySeller').submit();
   });	
   
   
}); //ready




	//이미지 눌렀을 때 미리보기
	function doImgPop(img) {
		img1 = new Image();
		img1.src = (img);
		imgControll(img);
	}

	function imgControll(img) {
		if ((img1.width != 0) && (img1.height != 0)) {
			viewImage(img);
		} else {
			controller = "imgControll('" + img + "')";
			intervalID = setTimeout(controller, 20);
		}
	}

	function viewImage(img) {
		W = img1.width;
		H = img1.height;
		O = "width=" + W + ",height=" + H + ",scrollbars=yes";
		imgWin = window.open("", "", O);
		imgWin.document
				.write("<html><head><title>:*:*:*: 이미지상세보기 :*:*:*:*:*:*:</title></head>");
		imgWin.document.write("<body topmargin=0 leftmargin=0>");
		imgWin.document
				.write("<img src="
						+ img
						+ " onclick='self.close()' style='cursor:pointer;' title ='클릭하시면 창이 닫힙니다.'>");
		imgWin.document.close();
	}
</script>

