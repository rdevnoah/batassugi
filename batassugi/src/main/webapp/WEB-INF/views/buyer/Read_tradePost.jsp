<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<div class="container">
	<div class="row main">
		<div class="col-sm-offset-2 col-sm-8">
			<h3>spider-board</h3>
			
			<table class="table table-hover text-center">
				<thead>
					<tr class="info">
						<th class="text-center" style="width: 10%">글번호</th>
						<th class="text-center" style="width: 40%">제목</th>
						<th class="text-center" style="width: 20%">작성자</th>
						<th class="text-center" style="width: 10%">조회수</th>
						<th class="text-center" style="width: 30%">작성일</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${listVo.postList}" var="list">
						<tr class="postList">
							<td>${list.no}</td>
							<td><a href="#" style="color: black;">${list.title}</a></td>
							<td>${list.memberVo.name}</td>
							<td>${list.hits}</td>
							<td>${list.timePosted}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table> <%-- table table-hover --%>
			
			<c:set value="${listVo.pagingBean}" var="pb" />
			<div class="text-center">
				<nav>
					<ul class="pagination">
						<c:if test="${pb.previousPageGroup}">
							<li>
								<a id="previousPage" href="#"><i class="fas fa-angle-left"></i></a>
							</li>
						</c:if>
						<c:forEach var="i" begin="${pb.startPageOfPageGroup}" end="${pb.endPageOfPageGroup}">
							<c:choose>
								<c:when test="${pb.nowPage != i}">
									<li>
										<a id="pageNum" href="#">${i}</a>
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
								<a id="nextPage" href="#"><i class="fas fa-angle-right"></i></a>
							</li>
						</c:if>
					</ul>
				</nav>
			</div>
			
		</div> <%-- col-sm-offset-2 col-sm-8 --%>
	</div> <%-- row main --%>
</div> <%-- container-fluid --%>