<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<script type="text/javascript">


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
	   var nowDate = new Date().toLocaleDateString();


	   
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
	




</script>
   <div class="container-fluid">
      <div class="row main">
         <div class="col-sm-offset-2 col-sm-8">
         <form action="${pageContext.request.contextPath}/farm_register" method="post"  enctype="multipart/form-data" onsubmit="return checkRegisterFarm()">
            등록 평수<input type="number" name="farmSize" min="1" required="required"><br>
            농지 등록날짜<input type="text" name="farmStartdate" value="${requestScope.date }" required="required" readonly="readOnly"><br>
            농지 등록 만료 날짜<input type="date" id="endDate" name="farmEnddate" required="required" ><br>
            농지 주소 <input type="text" name="farmAddress" required="required" ><br>
             
            작물선택<br> 
               <c:forEach items="${cropsList}" var="crops">
               <input type="checkbox" id = "crops_checked" name="cropsNo" value="${crops.cropsNo}">${crops.cropsName}<br>
               </c:forEach>
                  <img src="${pageContext.request.contextPath}/resources/img/logo.png" width="100px" id="previewImg"/><br>
                  프로필 미리보기
                <input type="file" name="file" id="file" placeholder="프로필을 넣어주세요" 
                     onchange="LoadImg(this);" aria-describedby="file_upload">
                    <button type="button" onclick="ResetImgvalue();">취소</button>
                  
            <input type="submit" value="등록">
         </form>
         </div> <%-- col-sm-offset-2 col-sm-8 --%>
      </div> <%-- row main --%>
   </div> <%-- container-fluid --%>