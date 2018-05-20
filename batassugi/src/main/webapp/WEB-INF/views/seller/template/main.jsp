<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="container">
	<div class="row">
		<div class="col-xs-12">
			<c:forEach items="${farmList}" var="farmVo" varStatus="i">
				<div class="col-xs-3">
					<div class="thumbnail rent">
						<img src="${pageContext.request.contextPath}/resources/img/${farmVo.image}" width="100px" class="img-responsive">
						<div class="caption">
							<div><i class="fa fa-calendar-check-o fa-lg"></i> <span>${farmVo.farmEnddate}</span> 까지</div>
							<div><i class="fa fa-fort-awesome fa-lg"></i> <span>${farmVo.farmSize}평</span></div>
							<div>&nbsp;<i class="fa fa-map-marker fa-lg"></i> &nbsp;<span>${farmVo.farmAddress}</span></div>
								<p>
								<c:forEach items="${farmVo.cropsVo}" var="crops">
									${crops.cropsName}
								</c:forEach>
								</p>
							<div>
								<h4>
								<c:if test="${farmVo.labels.size()==0 }">
									<span class="label label-danger">미사용</span>
								</c:if>
								<c:forEach items="${farmVo.labels}" var="label">
									<c:choose>
									<c:when test="${label=='승인'}">
										<span class="label label-success">대여중</span>
									</c:when>
									<c:when test="${label=='모집중'}">
										<span class="label label-warning">모집중</span>
									</c:when>
									</c:choose>
								</c:forEach>
								</h4>
							</div>
							<button class="btn btn-primary btn-block detailFarm" value="${farmVo.farmNo}">상세보기</button>
						</div> <%-- caption --%>
					</div> <%-- thumbnail --%>
				</div> <%-- col-xs-4 --%>
			</c:forEach>
		</div> <%-- col-xs-12 --%>
	</div> <%-- row --%>
</div> <%-- container --%>



<%--modal --%>
<div class="modal fade" id="myModalFarmDetail" role="dialog">
	<div class="modal-dialog">
		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">농지상세보기</h4>
			</div>
			<div class="modal-body">
				<div class="row">
					<div class="col-xs-5">
						통계영역<br>
						<table class="table table-hover text-center">
							<thead>
								<tr>
									<td colspan="2">
										대여인 목록
									</td>
								</tr>
								<tr>
									<td>
										대여인
									</td>
									<td>
										사용량
									</td>
								</tr>
							</thead>
							<tbody id="buyerTable">
								<%--ajax 데이터 입력 --%>
							</tbody>
						</table>
					</div>
					<div class="col-xs-7">
						평수 : <span id="farmSize"></span><br>
						농지 주소 : <span id="farmAddress"></span><br>
						농지주인 : <span id="farmOwner"></span><br>
						등록만료일 : <span id="farmEnddate"></span><br>
						재배가능작물 : <span id="crops"></span><br>
					</div>
				</div>
			</div>
			<div class="modal-footer">
				<button class="btn btn-default" data-dismiss="modal" id="recruitStatusBtn">신청현황</button>
				<button class="btn btn-default" data-dismiss="modal" id="recruitBtn">대여모집하기</button>
				<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
			</div>
		</div>
	</div>
</div>

<script src="${pageContext.request.contextPath}/resources/js/spider.js"></script>
</body>
<script>
$(document).ready(function() {
	var $data;
	var $farmNo;
	$(".detailFarm").on('click', function(e) {
		$farmNo=e.target.value;
		$("#myModalFarmDetail").modal();
	})
	 $("#myModalFarmDetail").on('show.bs.modal', function(e){
			 $.ajax({
				type : 'post',
				url:'getDetailFarm',
				data : 'farmNo='+$farmNo,
				async : false,
				success : function(data) {
					$data=data;
					var crops='';
					for (var i=0 ; i < data.farmVo.cropsVo.length ; i++){
						crops+=data.farmVo.cropsVo[i].cropsName+' ';
					}
					$("#farmSize").html(data.farmVo.farmSize);
					$("#farmAddress").html(data.farmVo.farmAddress);
					$("#farmOwner").html(data.farmVo.id);
					$("#farmEnddate").html(data.farmVo.farmEnddate);
					$("#crops").html(crops);
					var buyerTable='';
					for (var i=0 ; i< data.rentList.length ; i++){
						buyerTable+="<tr>";
						buyerTable+="<td>"
						buyerTable+=data.rentList[i].id;
						buyerTable+="</td>";
						buyerTable+="<td>";
						buyerTable+=data.rentList[i].rentSize;
						buyerTable+="</td>";
						buyerTable+="</tr>";
					}
					$("#buyerTable").append(buyerTable);
				}	
			}) 
	 })	
	 
	 
	 $('#myModalFarmDetail').on('hidden.bs.modal', function () {
        $(this).removeData('bs.modal');
        $('#buyerTable').html('');
     });
	
	 $("#recruitStatusBtn").on('click', function(){
		 sendPost('recruitList', {
			 'farmNo' : $data.farmVo.farmNo
		 });
	 });
	 
	 $("#recruitBtn").on('click', function(){
		 sendPost('registerRecruitForm', {
			 'farmNo' : $data.farmVo.farmNo
		 });
	 });
});

</script>
