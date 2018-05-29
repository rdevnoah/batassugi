<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container">
	<div class="row">
		<div class="col-xs-12">
			<c:forEach items="${farmList}" var="farmVo" varStatus="i">
				<div class="col-xs-3">
					<div class="thumbnail rent">
						<img src="${pageContext.request.contextPath}/resources/img/farm_photo/${farmVo.image}" style="height: 230px;">
						<div class="caption">
							<div><i class="fa fa-calendar-check-o fa-lg"></i> <span>${farmVo.farmEnddate}</span> 까지</div>
							<div><i class="fa fa-fort-awesome fa-lg"></i> <span>${farmVo.farmSize}평</span></div>
							<div>&nbsp;<i class="fa fa-map-marker fa-lg"></i> &nbsp;<span>${farmVo.farmAddress}</span></div>
								
								<c:forEach items="${farmVo.cropsVo}" var="crops">
									<img src="${pageContext.request.contextPath}/resources/img/crops_illur/${crops.cropsName}.png">
								
								</c:forEach>
								
								
							<div>
								<h4>
								<c:if test="${farmVo.labels.size()==0 }">
									<span class="label label-danger">미사용</span>
								</c:if>
								<c:forEach items="${farmVo.labels}" var="label">
									<c:choose>
									<c:when test="${label=='대여중'}">
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
					<div class="col-xs-6">
						<div id="charts">
						</div>
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
					<div class="col-xs-6">
						<div class="row text-center" id="farmImage">
							
							
						</div>
						<div class="row">
							<table class="table table-hover text-center">
								<thead>
									<tr>
										<td colspan="2">농지 상세정보</td>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>평수 : </td><td><span id="farmSize"></span></td>
									<tr>
									<tr>
										<td>농지 주소 : </td><td><span id="farmAddress"></span></td>
									</tr>
									<tr>
										<td>등록만료일 : </td><td><span id="farmEnddate"></span></td>
									</tr>
									<tr>
										<td>재배가능작물 : </td><td><span id="crops"></span></td>
									</tr>
								</tbody>
							</table>
						</div>
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

</body>
<script src="${pageContext.request.contextPath}/resources/js/spider.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/highcharts/highcharts.js"></script>
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
					if ($data.recruitSize==null){
						$data.recruitSize=0;
					}if ($data.canRecruitSize==null){
						$data.canRecruitSize=0;
					}if ($data.rentSize==null){
						$data.rentSize=0;
					}
					
					var crops='';
					for (var i=0 ; i < data.farmVo.cropsVo.length ; i++){
						crops+=data.farmVo.cropsVo[i].cropsName+' ';
					}
					
					$("#farmImage").html("<img src='${pageContext.request.contextPath}/resources/img/farm_photo/"+data.farmVo.image+"' style='height:170px;''>");
					$("#farmSize").html(data.farmVo.farmSize);
					$("#farmAddress").html(data.farmVo.farmAddress);
					$("#farmEnddate").html(data.farmVo.farmEnddate);
					$("#crops").html(crops);
					/* $("#crops").html(crops); */
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
					
					
					// Build the chart
					
					/* var farmData[];
					
					farmData.push({
						
						
					}) */
				    var $charts = new Highcharts.chart('charts', {
				        chart: {
				            plotBackgroundColor: null,
				            plotBorderWidth: null,
				            plotShadow: false,
				            type: 'pie'
				        },
				        title: {
				            text: '농지 사용 정보'
				            		
				        },
				        subtitle: {
				        	text:'총량:'+data.farmVo.farmSize
				        },
				        tooltip: {
				            pointFormat: '{series.name}: <b>{point.y}평</b>'
				        },
				        plotOptions: {
				            pie: {
				                allowPointSelect: true,
				                cursor: 'pointer',
				                dataLabels: {
				            		format: '{point.y}',
				            		distance: -20
				            		
				                    /* enabled: false */
				                },
				                showInLegend: true,
				                size: 200
				            }
				        },
				        series: [{
				            name: '사용량',
				            colorByPoint: true,
				            data: [{
				                name: '모집중',
				                color: '#FE9A2E',
				                y: parseInt($data.recruitSize)
				            }, {
				                name: '대여중',
				                color: '#F5A9D0',
				                y: parseInt($data.rentSize)
				            }, {
				                name: '모집가능',
				                color: '#A9F5BC',
				                y: parseInt($data.canRecruitSize)
				            }]
				        }]
				    });
				 
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



