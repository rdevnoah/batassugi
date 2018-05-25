<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<div class="container">
	<div class="row main">
		<div class="ccol-xs-12">
			<h3></h3>
			<form action="${pageContext.request.contextPath}/common/updateBoard?tradeNo=${tvo.tradeNo}&regdate=${tvo.regdate}&memberVo.nickname=${tvo.memberVo.nickname }&tradeHits=${tvo.tradeHits}" 
			method="post" enctype="multipart/form-data" id="updateSuccess">
			<table class="table table-hover text-center">
				<thead>
					<tr class="info">
						<th colspan="2" class="text-center" style="width: 40%">
							종류: &nbsp;
							<select id="tradeKind" name="tradeKind" style="width:30%">
								<option value="판매">판매</option>
								<option value="교환">교환</option>
								<option value="구매">구매</option>
							</select>
						</th>
						<th colspan="3" class="text-center" style="width: 20%">
							제목: <input type="text" name="tradeTitle" value="${tvo.tradeTitle}"  required="required" id="tradeTitle">
						</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td colspan="2" width="210px" ><img id="img" src="${pageContext.request.contextPath}/resources/img/trade_img/${tvo.tradePhoto}" width="210px"></td>
						<td colspan="3"><textarea cols="90" rows="8"  style="resize: none;" name="tradeContent" required="required" id="tradeContent" >${tvo.tradeContent}</textarea></td>
					<tr>
				</tbody>
			</table>
			<input type="file" name="file" id="tradephoto" width="210px" >
			<div class="text-center">
				<button class="btn btn-primary" type="submit">확인</button>
				<button class="btn btn-primary" id="updateCancel">취소</button> 
			</div>
			</form>
			<%-- table table-hover --%>
		</div>
		<%-- col-sm-offset-2 col-sm-8 --%>
	</div>
	<%-- row main --%>
</div>
<%-- container-fluid --%>
<script type="text/javascript">
    $(document).ready(function(){
    	$("#tradephoto").on("change", handleImgFileSelect);
    	
    	$("#updateCancel").click(function() {
    		location.href="${pageContext.request.contextPath}/common/tradePost";
    	});
    	$("#updateSuccess").click(function(){ 
    		if ($("#tradeTitle").val() == "") {
    			BootstrapDialog.alert({
    				type : "danger",
    				message: "제목을 입력하세요!"
    			});
				return false;
			}
			if ($("#tradeContent").val() == "") {
				BootstrapDialog.alert({
    				type : "danger",
    				message: "본문을 입력하세요!"
    			});
				return false;
			}
    	 }); 		 
}); //  $(document).ready(function(){}
function handleImgFileSelect(e) {
	var files = e.target.files;
	var filesArr = Array.prototype.slice.call(files);
	
	filesArr.forEach(function(f) {
		if(!f.type.match("image.*")){
			BootstrapDialog.alert({
				type : "danger",
				message : "확장자는 이미지 확장자만 가능합니다!"
			});
			$("#tradephoto").val("");
			return;
		}
		sel_file = f;
		
		var reader = new FileReader();
		reader.onload= function(e){
			$("#img").attr("src", e.target.result);
		}
		reader.readAsDataURL(f);
	});
}
</script>