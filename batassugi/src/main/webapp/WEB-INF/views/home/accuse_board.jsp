<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="container">
  <div class="row">
    <div class="col-md-12">
      <form class="form-horizontal" action="${pageContext.request.contextPath}/common/accuse" method="post" name="accuse" id="accuse" enctype="multipart/form-data">
        <%-- 판넬 헤드 : 신고게시판 --%>
        <div class="panel-heading">
          <div class="panel-title text-left">
            <h3>신고하기</h3>
          </div>
        </div>
        <%-- 로그인을 panel form에 넣음 --%>
        <div class="panel panel-default">
          <%-- 필수 입력정보 헤드 --%>
          <div class="panel-heading">
            <div class="panel-title text-left">신고하기</div>
          </div>
          <%-- 필수 입력정보 내용 : 2단 --%>
          <div class="row">
         	<%-- 1단 --%> 	
            <div class="col-md-6">
          <%-- 신고자 정보 --%>
              <div class="form-group">
                <label class="control-label col-sm-3"> 신고자 <span class="text-danger">*</span></label>
                <div class="col-md-8 col-sm-9">
                  <div class="input-group">
                    <span class="input-group-addon"></span> 
                     <input type="text" class="form-control" name="accuseId" id="accuseId" value="${sessionScope.mvo.memberVo.id}" readonly="readonly">
                  </div>
                </div>
              </div>
              <%-- 신고대상 --%>
              <div class="form-group">
                <label class="control-label col-sm-3"> 신고대상 <span class="text-danger">*</span></label>
                <div class="col-md-8 col-sm-9">
                  <div class="input-group">
                    <span class="input-group-addon"></span> 
                    <select name="reportedId" id="reportedId">
        			<option value="" >--닉네임--</option>
    			     <c:forEach var="item" items="${list}">
						   <option value="${item.memberVo.id}" >${item.memberVo.nickname}</option>
					 </c:forEach> 
					 </select>
                  </div>
                </div>
              </div>
              <%-- 신고분류 --%>
              <div class="form-group">
                <label class="control-label col-sm-3"> 신고분류 <span class="text-danger">*</span></label>
                <div class="col-md-8 col-sm-8">
                  <div class="input-group">
                    <span class="input-group-addon"></span> 
                    <select name="accuseCategory" id="accuseCategory">
         			  <option value="">--신고분류--</option>
		  			  <option value="허위정보기재">허위정보기재</option>
		   			  <option value="욕설">욕설</option>
		   			  <option value="노쇼">노쇼</option>
		 			</select>
                  </div>
                </div>
              </div>

              <%-- 신고사유 --%>
              <div class="form-group">
                <label class="control-label col-sm-3"> 신고사유 <span class="text-danger">*</span></label>
                <div class="col-md-8 col-sm-9">
                  <div class="input-group">
                    <span class="input-group-addon"></span> 
                    <input type="text" class="form-control" name="accuseReason" id="accuseReason" placeholder="신고사유를 입력해주세요" required="required">
                  </div>
                </div>
              </div>
            </div>
          </div><%-- 필수 입력정보 끝 --%>
          
          <%-- 부가정보 : 등급정보, 이미지 업로드 --%>
          
           <div class="panel-heading">
            <div class="panel-title text-left">증빙자료 업로드</div>
          </div> 
		 <div class="row">
		 <div class="subInfo">
           <div class="col-md-6">
          	<div class="form-group">
          		<label class="control-label col-sm-3">
	          		<img src="${pageContext.request.contextPath}/resources/img/accuse_img/default.png" width="100px" id="previewImg"/><br>
	                미리보기
	          	</label>
	          	<div class="col-md-8 col-sm-8">
                  <div class="input-group">
                    <span class="input-group-addon" id="file_upload"></span> 
                    <input type="file" name="file" id="file" class="form-control upload" placeholder="증빙자료를 첨부해주세요" required="required"
                     onchange="LoadImg(this);" aria-describedby="file_upload" accept=".gif, .jpg, .png">
                    <button type="button" onclick="ResetImgvalue();" id="cancelButton">취소</button>
                    </div>
                </div>
			</div>
            </div>
            </div>
            </div> <%--row --%>
            <%--제출 버튼 --%>
        </div>	<!-- 판넬 폼 종료 -->
         <%--제출 버튼 --%>
        	<div class="col-xs-12 registerBtn">
                <input name="submit" type="submit" value="신고하기" class="btn btn-primary" style="background-color: red">
              </div>
      </form><%-- form 영역 --%>
    </div><%-- 메인영역 --%>
  </div><%-- 전체 row --%>
</div><%-- 전체 container --%>

<script>	
     function LoadImg(value) {
          if(value.files && value.files[0]) {
               var reader = new FileReader();
               reader.onload = function (e) {
                    $('#previewImg').attr('src', e.target.result);                    
               }
               reader.readAsDataURL(value.files[0]);
          }
          $('#previewImg').attr('src', "${pageContext.request.contextPath}/resources/img/accuse_img/default.png");
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
     	$('#previewImg').attr('src', "${pageContext.request.contextPath}/resources/img/accuse_img/default.png");
     	 if ($('#previewImg').attr('class')=="animated fadeIn") {
     		 $('#previewImg').removeClass("animated fadeIn")
 		} else {
 			$('#previewImg').addClass("animated fadeIn")
 		}
 	}
     
     $(document).ready(function() {
     		   $("#accuse").submit(function(){
     		      if($("#reportedId").val()==""){
     		         BootstrapDialog.alert({
     		        	   type : 'danger',
     		        	   title : '신고대상 확인',
     		        	   message : '신고대상을 선택하세요',
     		        	   size:"size-small"
     		       	});    
     		         return false;
     		      }
     		      else if($("#accuseCategory").val()==""){
     		    	  BootstrapDialog.alert({
    		        	   type : 'danger',
    		        	   title : '신고카테고리 확인',
    		        	   message : '신고카테고리를 선택하세요',
    		        	   size:"size-small"
    		       	}); 
      		         return false;
     		      }
     		   });//submit
 	})//ready
</script>
