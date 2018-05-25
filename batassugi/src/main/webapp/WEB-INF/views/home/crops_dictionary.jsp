<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- <div class="container">
  <div class="row">
    <div class="col-md-12">
      <form class="form-horizontal" action="${pageContext.request.contextPath}/crops_detail" method="post" name="crops_detail" id="crops_detail" enctype="multipart/form-data">
        판넬 헤드 : 농작물 사전
        <div class="panel-heading">
          <div class="panel-title text-left">
            <h3>농작물 사전</h3>
          </div>
        </div>
        <c:forEach var="item" items="${icon}">
		    <a href="${pageContext.request.contextPath}/home/crops_detail?cropsNo=${item.cropsVo.cropsNo}"><img src="${pageContext.request.contextPath}/resources/img/crops_img/${item.cropsIcon}" width="100px" /></a>
		 	
		 </c:forEach> 
		      </form>form 영역
    </div>메인영역
  </div>전체 row
</div>전체 container --%>

<div class="container-fluid">
	<img src="${pageContext.request.contextPath}/resources/img/농작물사전_메인.jpg" width="100%">
</div>
<!-- 사전 영역 -->
<!-- <div class="container dictionary">
  <select name="cropsCategory" id="cropsCategory">
    <option value="전체보기">난이도선택</option>
    <option value="상">난이도 상</option>
    <option value="중">난이도 중</option>
    <option value="하">난이도 하</option>
  </select>	 -->
	<%--사전영역 row --%>
	<div class="row">
		<%--사전영역 개별 아이템--%>
		<c:forEach var="item" items="${icon}">		
			<div class="col-sm-3 dictionary_content" id="${item.cropsVo.cropsNo}">
			  	<div class="dictionary_content_heading">
			  		<span class="dictionary_icon"><img src="${pageContext.request.contextPath}/resources/img/crops_img/${item.cropsIcon}" height="76px;"></span><br>
		     		<span class="dictionary_title">${item.cropsVo.cropsName}</span>
			  	</div>
			</div> 
		</c:forEach> <%--사전영역 개별 아이템--%>
	</div><%--사전영역 row --%>
</div><%--사전영역--%>

<!-- 컨텐츠 모달 -->
<div class="modal fade" id="myModal" role="dialog">
<%-- 모달 다이얼로그 --%>
	<div class="modal-dialog">
		<!-- Modal content-->
		<div class="modal-content">
			<%-- 모달 헤더 --%>
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title"></h4>
			</div>
			<%-- 모달 바디 --%>
			<div class="modal-body crops_info">
				<div id="cropsImg">
					<div id="cropsProfile">
						<span id="cropsProfileImg"></span>
					</div>
					<div id="cropsSubImg">
					<span id="cropsImage1"></span>
					<span id="cropsImage2"></span>
					<span id="cropsImage3"></span>
					</div>
				</div>
				
				<div id="cropsInfo">
					작물명 : <span id="cropsName"></span><br>
					파종 시기 : <span id="seedSeason"></span><br>
					수확 시기 : <span id="cropsSeason"></span><br>
					재배 레벨 : <span id="cropsLevel"></span><br>
					재배 방법 : <span id="cropsMethod"></span><br>
				</div>
			</div>	
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
			</div>	
			<div>
			margin-bottom: 50px;
			</div>	
		</div><%-- 모달 바디 --%>
	</div><%-- 모달 다이얼로그 --%>
</div><%-- 컨텐츠 모달 --%>

<script>
$(document).ready(function() {
	// 작물 div 클릭시 모달 띄우기
	var cropsNo ;
	$(".dictionary_content").click(function() {
		// cropsNo 가져오기 
		cropsNo=$(this).attr('id'); 
		//alert(cropsNo);
		$("#myModal").modal();
	});//작물 선택
	
	$('#myModal').on('show.bs.modal', function() {
		$.ajax({
			type : "get",
			url : "${pageContext.request.contextPath}/home/crops_detail",
			data : "cropsNo="+cropsNo,
			success : function(data) {
				//alert(data.cropsVo.cropsNo);
				$(".modal-title").html(data.cropsVo.cropsName);
				$("#cropsProfileImg").html("<img src=\"${pageContext.request.contextPath}/resources/img/crops_img/"+data.cropsProfileimg+"\" width=\"98%\" height=\"300px\">");
				$("#cropsImage1").html("<img src=\"${pageContext.request.contextPath}/resources/img/crops_img/"
						 +data.cropsImg1+"\" width=\"32%\" height=\"50px\" onclick=\"doImgPop('${pageContext.request.contextPath}/resources/img/crops_img/"+data.cropsImg1+"')\">");
				$("#cropsImage2").html("<img src=\"${pageContext.request.contextPath}/resources/img/crops_img/"
						 +data.cropsImg2+"\" width=\"32%\" height=\"50px\" onclick=\"doImgPop('${pageContext.request.contextPath}/resources/img/crops_img/"+data.cropsImg2+"')\">");
				$("#cropsImage3").html("<img src=\"${pageContext.request.contextPath}/resources/img/crops_img/"
						 +data.cropsImg3+"\" width=\"32%\" height=\"50px\" onclick=\"doImgPop('${pageContext.request.contextPath}/resources/img/crops_img/"+data.cropsImg3+"')\">");
				$("#cropsName").html(data.cropsVo.cropsName);
				$("#seedSeason").html(data.seedSeason);
				$("#cropsSeason").html(data.cropsSeason);
				$("#cropsLevel").html(data.cropsVo.cropsLevel);
				$("#cropsMethod").html(data.cropsMethod);
				
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
				 
			}//success      
		});//ajax  

   })//모달
});


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
