<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<div class="container">
	<div class="row main">
		<div class="ccol-xs-12">
			<h3>spider-board</h3>
			<table class="table table-hover text-center">
				<thead>
					<tr class="info">
						<th class="text-center" style="width: 10%">글번호</th>
						<th class="text-center" style="width: 10%">종류</th>
						<th class="text-center" style="width: 20%">제목</th>
						<th class="text-center" style="width: 20%">작성자</th>
						<th class="text-center" style="width: 10%">조회수</th>
						<th class="text-center" style="width: 20%">작성일</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${tradePostListVo.tradepostList}" var="list">
						<tr class="postList">
							<td>${list.tradeNo}</td>
							<c:if test="${list.tradeKind == '판매'}">
								<td><span class="label label-success">${list.tradeKind}</span></td>
							</c:if>
							<c:if test="${list.tradeKind == '구매'}">
								<td><span class="label label-primary">${list.tradeKind}</span></td>
							</c:if>
							<c:if test="${list.tradeKind == '나눔'}">
								<td><span class="label label-danger">${list.tradeKind}</span></td>
							</c:if>
							<td><a>${list.tradeTitle}</a></td>
							<td>${list.memberVo.name}</td>
							<td>${list.tradeHits}</td>
							<td>${list.regdate}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table> <%-- table table-hover --%>
			
			<c:set value="${tradePostListVo.pagingBean}" var="pb" />
			<div class="text-center">
				<nav>
					<ul class="pagination">
						<c:if test="${pb.previousPageGroup}">
							<li>
								<a id="previousPage"><i class="fa fa-angle-left"></i></a>
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
										<a href="#">${i}</a>
									</li>
								</c:otherwise>
							</c:choose>
						</c:forEach>
						<c:if test="${pb.nextPageGroup}">
							<li>
								<a id="nextPage"><i class="fa fa-angle-right"></i></a>
							</li>
						</c:if>
					</ul>
				</nav>
			</div>
			
		</div> <%-- col-sm-offset-2 col-sm-8 --%>
	</div> <%-- row main --%>
</div> <%-- container-fluid --%>
<script src="${pageContext.request.contextPath}/resources/js/spider.js"></script>
<script>
$(function() {
	$paginationA.on('click',function() {
		postEvent.paging($(this), '${pb.startPageOfPageGroup-1}', '${pb.endPageOfPageGroup+1}')
	});
	$postListA.on('click', function() {
		postEvent.findPostDetail($(this));
	});
})
</script>