<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<div class="container-fluid">
		<div class="row main">
			<div class="col-xs-12">
				<table class="table table-hover text-center">
					<thead>
						<tr class="success">
							<th class="text-center">종류</th>
							<th class="text-center">이름</th>
							<th class="text-center">농지 주소</th>
							<th class="text-center">평수</th>
							<th class="text-center">대여기간</th>
							<th class="text-center">작물</th>
							<th class="text-center">농작물 진행상태</th>
							<th class="text-center">신청일</th>
							<th class="text-center">처리상태</th>
						</tr>
					</thead>
					<tbody>
					<c:forEach items="${rentList}" var="list">
						<tr class="rentList">
							<td class="hidden">${list.rentNo}</td>
							<td>${list.recruitVo.recruitKind}</td>
							<td>${list.recruitVo.farmVo.memberInfoVo.memberVo.name}</td>
							<td>${list.recruitVo.farmVo.farmAddress}</td>
							<td>${list.rentSize}</td>
							<td>${list.rentMonth}개월</td>
							<td>${list.cropsVo.cropsName}</td>
							<td><a>여기는작물진행상태다</a></td>
							<td>${list.rentStartdate}</td>
							<td><a>${list.rentStatus}<c:if test="${list.rentStatus == '미처리'}"> <span class="text-danger">(취소하기)</span></c:if></a></td>
						</tr>
					</c:forEach>
					</tbody>
				</table> <%-- table table-hover --%>
				
			</div> <%-- col-sm-offset-2 col-sm-8 --%>
		</div> <%-- row main --%>
	</div> <%-- container-fluid --%>
<script>

</script>
