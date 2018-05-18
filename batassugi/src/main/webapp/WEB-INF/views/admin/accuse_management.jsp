<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
table, th, td {
	border: 1px solid black;
}
</style>
<div class="container">
  <div class="row">
    <div class="col-md-12">
       <form class="form-horizontal" action="${pageContext.request.contextPath}/adminAccuse" method="post"name="adminAccuse" 
      id="adminAccuse" enctype="multipart/form-data" >
        <div class="panel-heading">
          <div class="panel-title text-left">
            <h3>신고관리</h3>
            <table>
            <thead>
            <tr>
            	<th>#</th><th>신청일</th><th>신청자 ID</th><th>신고대상</th><th>분류</th><th>처리상태</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="list" items="${accuseList}">
            <tr class="accuseListRow">
            	<td>${list.accuseNo}</td>
            	<td>${list.accuseDate}</td>
            	<td>${list.accuseId}</td>
            	<td>${list.reportedId}</td>
            	<td>${list.accuseCategory}</td>
            	<td>${list.accuseState}</td>
            </tr>
            </c:forEach>
            </tbody>
            </table>
            <!-- 페이징 -->
<ul>
	<!-- < -->

	<c:if test="${paging.previousPageGroup==true}">
		<li><a
			href="${pageContext.request.contextPath}/adminAccuse?nowPage=${paging.startPageOfPageGroup-1}">&lt;</a></li>
	</c:if>
	<!-- 1,2,3,4,5 -->
	<c:forEach var="page" begin="${paging.startPageOfPageGroup}"
		end="${paging.endPageOfPageGroup}">
		<c:choose>
			<c:when test="${page!=paging.nowPage}">
				<li><a
					href="${pageContext.request.contextPath}/adminAccuse?nowPage=${page}">${page}</a></li>
			</c:when>
			<c:otherwise>
				<li>${page}</li>
			</c:otherwise>
		</c:choose>
	</c:forEach>

	<!-- > -->
	<c:if test="${paging.nextPageGroup==true}">
		<li><a
			href="${pageContext.request.contextPath}/adminAccuse?nowPage=${paging.endPageOfPageGroup+1}">&gt;</a></li>
	</c:if>
</ul>
            
            
            
          </div>
        </div>
      </form><%-- form 영역 --%>
    </div><%-- 메인영역 --%>
  </div><%-- 전체 row --%>
</div><%-- 전체 container --%>

<!-- 컨텐츠 모달 -->
<div class="modal fade" id="myModal" role="dialog">
	<div class="modal-dialog">

<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">신고정보</h4>
			</div>
			<div class="modal-body">
				신고번호 : <span id="accuseNo"></span><br>
				신고자 : <span id="accuseId"></span><br>
				신고대상자 : <span id="reportedId"></span><br>
				신고분류 : <span id="accuseCategory"></span><br>
				신고사유 : <span id="accuseReason"></span><br>
				신고일자 : <span id="accuseDate"></span><br>
				신고처리상태 :<span id="accuseState_val"></span><br>
				신고증거 : <span id="accuseProof"></span>
				<div id="reason"></div>
				<div id="resultDate"></div>
				
				<!-- 지원신청 폼 -->
				<form name="accusePro" method="post" id="accusePro" action="${pageContext.request.contextPath}/accusePro">
				<div id="accuseForm">
				<input type="hidden" name="accuseNo" id="accuseNo_val" value="번호" >
				<input type="hidden" name="accuseId" id="accuseId_val" value="신고자" >
				<input type="hidden" name="reportedId" id="reportedId_val" value="신고대상자" >
				<label><input type="radio" name="accuseState" value="신고승인" onClick="this.form.resultReason.disabled=true" checked >신고승인</label><br>
				<label><input type="radio" id="radio" name="accuseState" value="신고거절" onClick="this.form.resultReason.disabled=false" >신고거절</label>
				<br>
				<textarea name="resultReason" disabled="disabled"></textarea>
				</div>
				<input type="submit" value="처리">
				</form>
				
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal" id="accuseProBtn"> 제출</button>
				<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
			</div>
		</div>

	</div>
</div>



<script>
$(document).ready(function() {
	
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
						 $("#reason").html("신고거절 사유 : "+data.resultReason)
					 }
					 $("#resultDate").html("처리 날짜 : "+data.accuseResultday )
					 $("#accuseForm").hide();
					 $("#accuseProBtn").hide(); 
					 
					 
				}
			}//success      
		});//ajax 
    })//모달
    $('#myModal').on('hidden.bs.modal', function () {
        $(this).removeData('bs.modal');
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



