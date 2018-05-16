<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<div class="container">
	<div class="row">
		<div class="col-xs-12">
			<c:forEach begin="1" end="4" var="i">
			<div class="col-xs-3">
				<div class="thumbnail rent">
					<img src="${pageContext.request.contextPath}/resources/img/대여신청_밭사진${i}.png" class="img-responsive">
					<div class="caption">
						<div class="hidden"><span>1</span></div>
						<div><i class="fa fa-calendar-check-o fa-lg"></i> <span>18.05.09</span> 까지</div>
						<div><i class="fa fa-fort-awesome fa-lg"></i> <span>2만평</span></div>
						<!-- <div><i class="fa fa-comment-o fa-lg"></i> <span>서현에 위치한 농장을 대여 해드립니다</span></div> -->
						<div>&nbsp;<i class="fa fa-map-marker fa-lg"></i> &nbsp;<span>경기도 성남시 분당동</span></div>
						<p>
							<img src="${pageContext.request.contextPath}/resources/img/작물1.png">
							<img src="${pageContext.request.contextPath}/resources/img/작물2.png">
							<img src="${pageContext.request.contextPath}/resources/img/작물3.png">
							<img src="${pageContext.request.contextPath}/resources/img/작물4.png">
						</p>
						<div class="like">
							<a style="cursor: pointer; color: #FF7473; text-decoration: none;">
								<i class="fa fa-heart-o fa-lg" aria-hidden="true"></i>
							</a> 
							<a style="cursor: pointer; color: #000000; text-decoration: none;">
								100
							</a>
							<i class="fa fa-eye fa-lg" aria-hidden="true"></i> <label>323</label>
						</div>
						<button class="btn btn-primary btn-block">대여하기${i}</button>
					</div> <%-- caption --%>
				</div> <%-- thumbnail --%>
			</div> <%-- col-xs-4 --%>
			</c:forEach>
		</div> <%-- col-xs-12 --%>
	</div> <%-- row --%>
</div> <%-- container --%>
<script>
$(document).ready(function() {
	var $rent = $('.rent button');
	$rent.on('click', function() {
		sendPost('findRentDetailByRecruitNo')
		//alert($content.length)
		//alert($content.children('div:nth(3)').text())
	})
})
</script>