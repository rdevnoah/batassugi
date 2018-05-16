<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<div class="container">
	<div class="row main">
		<div class="ccol-xs-12">
			<h3></h3>
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
							제목: &nbsp;
							<input type="text" name="tradeTitle" value=" ${tvo.tradeTitle}"  required="required" id="tradeTitle">
						</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td colspan="2">${tvo.tradePhoto}</td>
						<td colspan="3"><textarea cols="90" rows="8" name="tradeContent" required="required" id="tradeContent" >${tvo.tradeContent}</textarea></td>
					<tr>
					<tr>
						<td colspan="5" class="btnArea">
							<button type="button" id="updateSuccess">확인</button>
							<button type="button" id="updateCancel">취소</button> 
						</td>
					</tr>
				</tbody>
			</table>
			<%-- table table-hover --%>
		</div>
		<%-- col-sm-offset-2 col-sm-8 --%>
	</div>
	<%-- row main --%>
</div>
<%-- container-fluid --%>
<script type="text/javascript">
    $(document).ready(function(){
    	$("#updateCancel").click(function() {
    		location.href="${pageContext.request.contextPath}/tradePost";
    	});
    	$("#updateSuccess").click(function(){ 
    		sendPost("${pageContext.request.contextPath}/updateBoard", {"tradeNo": "${tvo.tradeNo}","tradeKind": $('#tradeKind').val(), 
    			"tradeTitle":$('#tradeTitle').val(), "tradeContent":$('#tradeContent').val()})
  	 	 }); // $("#deleteBtn").click(function()	
  	 			 
}); //  $(document).ready(function(){}
</script>