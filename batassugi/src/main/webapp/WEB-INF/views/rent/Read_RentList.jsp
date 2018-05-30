<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<div class="container boatd_contents">
	<div class="row">
		<div class="col-xs-12">
			<c:forEach items="${rentListVo.recruitList}" var="list" >
			<div class="col-xs-3">
				<div class="thumbnail rent">
					<img src="${pageContext.request.contextPath}/resources/img/farm_photo/${list.farmVo.image}" style="height: 150px;">
					<div class="caption content">
						<div class="hidden"><span>${list.recruitNo}</span></div>
						<div><i class="fa fa-user fa-2x"></i>&nbsp;<span>${list.farmVo.memberInfoVo.memberVo.nickname}</span></div>
						<div class="text-danger"><i class="fa fa-calendar-check-o fa-lg"></i> <span>${list.recruitEnddate}</span> 까지</div>
						<div><i class="fa fa-fort-awesome fa-lg"></i> <span>${list.recruitSize}</span>평</div>
						<!-- <div><i class="fa fa-comment-o fa-lg"></i> <span>서현에 위치한 농장을 대여 해드립니다</span></div> -->
						<div>&nbsp;<i class="fa fa-map-marker fa-lg"></i> &nbsp;<span>${list.farmVo.farmAddress}</span></div>
						<p class="cropsList">
							<c:forEach items="${list.farmVo.cropsVo}" var="crops">
								<a data-placement="top" data-toggle="popover" data-trigger="hover" title="" data-content="${crops.cropsName}">
									<img src="${pageContext.request.contextPath}/resources/img/crops_illur/${crops.cropsName}.png">
								</a>
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
								<button class="btn btn-primary btn-block rentBtn">대여하기</button>
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
			<div >
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
			</div> <%-- nav --%>
		</div> <%-- text-center --%>
		<div class="col-xs-12 text-center">
			<form id="searchForm" class="form-inline" onsubmit="return false;">
				<div class="form-group">
					<select id="searchCategory" class="form-control" required>
						<option value="">종류</option>
						<option value="crops">작물</option>
						<option value="address">주소</option>
					</select>
				</div>
				<div class="form-group">
					<input type="text" id="searchKeyword" class="form-control" placeholder="검색" required autocomplete="off">
				</div>
				<div class="form-group">
					<button type="submit" class="btn btn-primary"><i class="fa fa-search"></i></button>
				</div>
			</form>
		</div>
		<h1></h1>
		<div class="hidden" id="startPageOfPageGroup">${pb.startPageOfPageGroup-1}</div>
		<div class="hidden" id="endPageOfPageGroup">${pb.endPageOfPageGroup+1}</div>
		<div class="hidden" id="searchVo"><c:if test="${empty searchVo}">getRentList</c:if><c:if test="${!empty searchVo}">findRentListByKeyword</c:if></div>
		<div class="hidden" id="keyword">${searchVo.keyword}</div>
		<div class="hidden" id="category">${searchVo.category}</div>
		<div class="hidden" id="fail">${fail}</div>
		<div class="hidden" id="success">${success}</div>
	</div> <%-- row --%>
</div> <%-- container --%>
<script>
$(function () {
    $('[data-toggle="popover"]').popover()
})
</script>
