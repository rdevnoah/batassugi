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
								<img src="${pageContext.request.contextPath}/resources/img/crops_illur/${crops.cropsName}.png">
							</c:forEach>
						</p>
						<!-- 						
						<div class="like">
							<a style="cursor: pointer; color: #FF7473; text-decoration: none;">
								<i class="fa fa-heart-o fa-lg" aria-hidden="true"></i>
							</a> 
							<a style="cursor: pointer; color: #000000; text-decoration: none;">
								100
							</a>
							<i class="fa fa-eye fa-lg"></i> <label>323</label>
						</div> 
						-->
						<c:choose>
							<c:when test="${list.recruitSize >= 10}">
								<button class="btn btn-primary btn-block">대여하기</button>
							</c:when>
							<c:otherwise>
								<button class="btn btn-primary btn-block disabled">대여하기</button>
							</c:otherwise>
						</c:choose>
					</div> <%-- caption --%>
				</div> <%-- thumbnail --%>
			</div> <%-- col-xs-4 --%>
			</c:forEach>
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
// 대여신청 성공시 RedirectAttribute 객체를 받아서 메세지 출력
'${success}' !== '' ? BootstrapDialog.alert('${success}') : ''; // RedirectAttribute 객체가 있다면 모달로 메세지 출력 
$(document).ready(function() {
	// 대여신청게시판 페이징
	$rentPaginationA.on('click',function() {
		rentList.paging($(this), '${pb.startPageOfPageGroup-1}', '${pb.endPageOfPageGroup+1}', 'getRentList');
	});
	
	// 대여신청하기 버튼 이벤트 상세정보페이지로 이동
	$rent.on('click', function() {
		var $recruitNo = $(this).parents('.content').find('span:nth(0)').text(), // 대여신청번호.
			$thisClass = $(this).attr('class'), // 대여신청하기 버튼
			path = 'findRentDetailByRecruitNo', // 전송할 url주소
			param = {'recruitNo' : $recruitNo}; // 전송할 파라미터 객체
		// 대여신청하기버튼이 활성화가 되어있으면, detailView로 이동, 버튼이 비활성화가 되어있으면 모달메세지 출력
		$thisClass == "btn btn-primary btn-block" ?	
				rentList.detail($(this), path, param) : BootstrapDialog.alert("대여불가!").setType('danger')
	});
});
</script>