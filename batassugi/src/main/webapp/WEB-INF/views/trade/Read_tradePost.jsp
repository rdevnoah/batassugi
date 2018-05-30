<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<div class="container">
	<div class="row main">
		<div class="ccol-xs-12">
			<h3></h3>
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
							<c:if test="${list.tradeKind == '교환'}">
								<td><span class="label label-primary">${list.tradeKind}</span></td>
							</c:if>
							<c:if test="${list.tradeKind == '구매'}">
								<td><span class="label label-danger">${list.tradeKind}</span></td>
							</c:if>
							<td><a>${list.tradeTitle}</a>&nbsp;&nbsp;&nbsp;
							<c:if test="${list.replyCnt > 0}">
								[${list.replyCnt}]
							</c:if>
							</td>
							<td>${list.memberVo.nickname}</td>
							<td>${list.tradeHits}</td>
							<td>${list.regdate}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table> <%-- table table-hover --%>
			<div class="text-right">
				<button class="btn btn-primary" id="wirteTradePost">글쓰기</button>
			</div>
			<c:set value="${tradePostListVo.pagingBean}" var="pb" />
			<div class="text-center" >
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
			<div class="text-center">
				<form class="form-inline" action="findtradePostBySearch" method="post" id="searchForm" onsubmit="return false;">
				<div class="form-group">
					<select class="form-control" name="searchType" required="required" id="searchType">
						<option value="tradeTitle">제목</option>
						<option value="tradeContent">내용</option>
						<option value="nickname">작성자</option>
					</select>
				</div>
				<div class="form-group">
					<input type="text" class="form-control" placeholder="검색"  name="keyword"  required="required" id="keyword">
				</div>
				<div class="form-group">
					<button type="submit" class="btn btn-primary">
						<i class="fa fa-search"></i>
					</button>
				</div>
			 	</form>
			</div>
		</div> <%-- col-sm-offset-2 col-sm-8 --%>
	</div> <%-- row main --%>
</div> <%-- container-fluid --%>
<script src="${pageContext.request.contextPath}/resources/js/spider.js"></script>
<script>
$(document).ready(function() {	
	'${fail}' !== '' && BootstrapDialog.alert('${fail}').setType('danger');
	 $('#searchForm').on('submit',function(){
	      var $searchType = $(this).children('.form-group:nth(0)').children('#searchType').val();
	      var $keyword = $(this).children('.form-group:nth(1)').children('#keyword').val().replace(/\s/g, '');
	      sendPost('findtradePostBySearch', {'keyword':$keyword,'searchType':$searchType})
	 });
	 
	$paginationA.on('click',function() {
		if(${empty tps}) {
			tradeList.paging($(this), '${pb.startPageOfPageGroup-1}', '${pb.endPageOfPageGroup+1}',"tradePost");
		} else {
			tradeList.paging($(this), '${pb.startPageOfPageGroup-1}', '${pb.endPageOfPageGroup+1}', "findtradePostBySearch", "${tps.keyword}", "${tps.searchType}" );
		}
			
	});
	$postListA.on('click', function() {
		var tradeNo = $(this).parents().children('td:nth(0)').text();
		tradeList.detail($(this),"findTradePostListByNo",{"tradeNo": tradeNo});
	});
	$("#wirteTradePost").click(function() {
		location.href = "${pageContext.request.contextPath}/common/createTradePostForm";
	});
});
</script>