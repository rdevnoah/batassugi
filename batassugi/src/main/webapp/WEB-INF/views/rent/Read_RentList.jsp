<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<div class="container">
	<div class="row">
		<div class="col-xs-12">
			<c:forEach items="${rentListVo.recruitList}" var="list" >
			<div class="col-xs-3">
				<div class="thumbnail rent">
					<img src="${pageContext.request.contextPath}/resources/img/대여신청_밭사진1.png" class="img-responsive">
					<div class="caption content">
						<div class="hidden"><span>${list.recruitNo}</span></div>
						<div><i class="fa fa-calendar-check-o fa-lg"></i> <span>${list.recruitEnddate}</span> 까지</div>
						<div><i class="fa fa-fort-awesome fa-lg"></i> <span>${list.recruitSize}</span>평</div>
						<!-- <div><i class="fa fa-comment-o fa-lg"></i> <span>서현에 위치한 농장을 대여 해드립니다</span></div> -->
						<div>&nbsp;<i class="fa fa-map-marker fa-lg"></i> &nbsp;<span>${list.farmVo.farmAddress}</span></div>
						<p>
							<%-- <img src="${pageContext.request.contextPath}/resources/img/작물1.png">
							<img src="${pageContext.request.contextPath}/resources/img/작물2.png">
							<img src="${pageContext.request.contextPath}/resources/img/작물3.png">
							<img src="${pageContext.request.contextPath}/resources/img/작물4.png"> --%>
							<c:forEach items="${list.farmVo.cropsVo}" var="crops">
								${crops.cropsNo} ${crops.cropsName}
							</c:forEach>
						</p>
						<div class="like">
							<a style="cursor: pointer; color: #FF7473; text-decoration: none;">
								<i class="fa fa-heart-o fa-lg" aria-hidden="true"></i>
							</a> 
							<a style="cursor: pointer; color: #000000; text-decoration: none;">
								100
							</a>
							<i class="fa fa-eye fa-lg"></i> <label>323</label>
						</div>
						<button class="btn btn-primary btn-block">대여하기</button>
					</div> <%-- caption --%>
				</div> <%-- thumbnail --%>
			</div> <%-- col-xs-4 --%>
			</c:forEach>
			<div class="col-xs-11 text-right">
				<button class="btn btn-info">농지 등록</button>
			</div>
		</div> <%-- col-xs-12 --%>
		<c:set value="${rentListVo.pagingBean}" var="pb" />
		<div class="text-center">
			<nav>
				<ul class="pagination rentPagination">
					<c:if test="${pb.previousPageGroup}">
					<li>
						<a id="previousPage"><i class="fa fa-caret-left"></i></a>
					</li>
				</c:if>
				<c:forEach var="i" begin="${pb.startPageOfPageGroup}" end="${pb.endPageOfPageGroup}">
					<c:choose>
						<c:when test="${pb.nowPage != i}">
							<li>
								<a id="pageNum">${i}</a>
							</li>
						</c:when>
						<c:otherwise>
							<li class="active">
								<a>${i}</a>
							</li>
						</c:otherwise>
					</c:choose>
				</c:forEach>
				<c:if test="${pb.nextPageGroup}">
					<li>
						<a id="nextPage"><i class="fa fa-caret-right"></i></a>
					</li> <%-- nextPage --%>
				</c:if>
				</ul> <%-- pagination rentPagination --%>
			</nav> <%-- nav --%>
		</div> <%-- text-center --%>
	</div> <%-- row --%>
</div> <%-- container --%>
<script>
var result = '${success}';
if(result !== '') {
	BootstrapDialog.alert(result)
}
$(document).ready(function() {
	
	$rentPaginationA.on('click',function() {
		rentList.paging($(this), '${pb.startPageOfPageGroup-1}', '${pb.endPageOfPageGroup+1}', 'getRentList');
	});
	
	$rent.on('click', function() {
		var $recruitNo = $(this).parents('.content').find('span:nth(0)').text();
		rentList.detail($(this), 'findRentDetailByRecruitNo', {'recruitNo' : $recruitNo});
	});

	
});
</script>