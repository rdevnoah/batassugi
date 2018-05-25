<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<script type="text/javascript">
	$(document).ready(function() {
		   $("#farmRegister").click(function() {
			   if ($('#farmAddress').val()==''){
				   alert('주소를 입력하세요');
			   }
			   else if ($('#farmSize').val()==''){
				   alert('등록할 농지의 크기를 입력하세요');
			   }else{
				   $('#farm_register').submit();
			   }
		   });	
	})

	function LoadImg(value) {
         if(value.files && value.files[0]) {
              var reader = new FileReader();
              reader.onload = function (e) {
                   $('#previewImg').attr('src', e.target.result);                    
              }
              reader.readAsDataURL(value.files[0]);
         }
         $('#previewImg').attr('src', "${pageContext.request.contextPath}/resources/img/profile_img/default.png");
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
      $('#previewImg').attr('src', "${pageContext.request.contextPath}/resources/img/profile_img/default.png");
       if ($('#previewImg').attr('class')=="animated fadeIn") {
          $('#previewImg').removeClass("animated fadeIn")
      } else {
         $('#previewImg').addClass("animated fadeIn")
      }
   }

   function checkRegisterFarm(){
	   var endDate = new Date();
	   endDate = $("#endDate").val();
	   var nowDate = nowdateCal();
	   if ($('input:checkbox[name=cropsNo]:checked').length==0){
		   alert("하나 이상의 작물을 선택하세요");
		   return false;
	   }else if (endDate < nowDate){
		   alert("등록 만료 날짜를 다시 확인해주세요");
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
	    if ((month+"").length < 2) {       // 일이 한자리 수인 경우 앞에 0을 붙여주기 위해
	    	month = "0" + month;
	    }
	    if ((day+"").length < 2) {       // 일이 한자리 수인 경우 앞에 0을 붙여주기 위해
	        day = "0" + day;
	    }
	    var getToday = year+"-"+month+"-"+day; // 오늘 날짜 (2017-02-07)
	    return getToday;
	}
</script>

<div class="container-fluid">
	<!-- 관리 전체영역 -->
	<div class="manage_content">
		<!-- 관리 타이틀 -->
		<div class="manage_title">
			<span id="manage_title_big">농지등록</span>
			<span id="manage_title_small">판매자가 농지를 등록하는 페이지입니다.</span> 
		</div><!-- 관리 타이틀 -->
		
		<%-- contents부분 --%>
	<div class="farm_contents">
			<form action="${pageContext.request.contextPath}/seller/farm_register" id="farm_register" method="post"  enctype="multipart/form-data" onsubmit="return checkRegisterFarm()">
		<div class="row main">
			<div class="col-md-3 input_img">
				<div class="img_Preview">프로필 미리보기</div>
				<img src="${pageContext.request.contextPath}/resources/img/logo.png" width="150px" id="previewImg"/><br>
         		<div id="imgBtn">
	         		<label id="rgBtn"> 이미지 등록
	         			<input type="file" name="file" id="file" placeholder="프로필을 넣어주세요" onchange="LoadImg(this);" aria-describedby="file_upload">
			 		</label>
			 		<label id="ccBtn"> 이미지 취소
			 			<input type="button" onclick="ResetImgvalue();" value="이미지취소">
			 		</label>
		 		</div>
			</div>
		
		<div class="col-md-9">
            <span class="applyContent">농지 등록평수 <input type="number" name="farmSize" id='farmSize' min="1" required="required"></span><br>
            <span class="applyContent">농지 등록날짜 <input type="text" name="farmStartdate" value="${requestScope.date }" required="required" readonly="readOnly"></span><br>
            <span class="applyContent">농지 만료날짜 <input type="date" id="endDate" name="farmEnddate" required="required" ></span><br>
            <span class="applyContent">농지 등록주소 <input type="text" name="farmAddress" id='farmAddress' required="required" ></span><br>
             
            가능 작물선택 
            
               <c:forEach items="${cropsList}" var="crops">
               <span class="applyContent">
               <div id="ChoiceCrops">
               <input type="checkbox" id = "crops_checked" name="cropsNo" value="${crops.cropsNo}">${crops.cropsName}<br>
               </div>
                </span>
               </c:forEach>
            <br>
        	 </div> <%-- col-sm-offset-2 col-sm-8 --%>
        	 </div> <%-- row main --%>
			</div><%-- contents부분 --%>
        	
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal" id="farmRegister">등록</button>
			</div>
         </form>
        
      
	</div><!--관리 전체영역 -->
</div><!-- container -->

























