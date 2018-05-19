<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<div class="container">
	<div class="row">
		<div class="col-xs-12">
			<form id="rentForm" class="form-inline" action="registerRentByRentVo" method="post" onsubmit="return false;">
				<input type="hidden" name="recruitVo.recruitNo" value="${recruitVo.recruitNo}">
				<div class="panel panel-info animated fadeIn">
				
					<div class="panel-heading">
						<div class="panel-title text-center">농지대여 신청</div>
					</div>
					
					<div class="panel-body">
						<%-- 평수 --%>
						<div class="form-group col-xs-offset-1 col-xs-3">
							<label>평수 : </label>
							<input name="rentSize" type="number" class="form-control" min="1000" max="${recruitVo.recruitSize}" required style="width: 30%;"><label class="text-danger">/ ${recruitVo.recruitSize}</label>
						</div> <%-- form-group col-xs-offset-1 col-xs-3 --%>
						
						<%-- 재배가능작물 --%>
						<div class="form-group col-xs-4">
							<label>작물 : </label>
							<select name="cropsVo.cropsNo" class="form-control" required style="width: 40%;">
								<option value="">&nbsp;------- 선택 -------</option>
								<c:forEach items="${recruitVo.farmVo.cropsVo}" var="cropsVo">
									<option value="${cropsVo.cropsNo}">${cropsVo.cropsName}</option>
								</c:forEach>
							</select>
						</div> <%-- form-group col-xs-4 --%>
						
						<%-- 대여기간 --%>
						<div class="form-group col-xs-4">
							<label>대여기간 : </label>
							<select name="rentMonth" class="form-control" required style="width: 50%;">
								<option value="">&nbsp;------- 선택 -------</option>
								<c:forEach begin="1" end="${recruitVo.maxRentMonth}" var="i">
								<option value="${i}">${i}개월</option>
								</c:forEach>
							</select> <%-- form-control --%>
						</div> <%-- form-group col-xs-4 --%>
						
						<%-- 농지주소 --%>
						<div class="form-group col-xs-offset-1 col-xs-3">
							<label>주소 : </label>
							<input class="form-control" type="text" value="${recruitVo.farmVo.farmAddress}" readonly style="width: 30%;">
						</div> <%-- form-group col-xs-offset-1 col-xs-3 --%>
						
						<%-- 농지임대자의 전화번호 --%>
						<div class="form-group col-xs-4">
							<label>전화번호 : </label>
							<input class="form-control" type="text" value="${recruitVo.farmVo.memberInfoVo.tel}" readonly style="width: 33%;">
						</div> <%-- form-group col-xs-4 --%>
						
						<%-- 평당 월 가격 --%>
						<div class="form-group col-xs-4">
							<label>평당 월 가격 : </label>
							<input class="form-control" type="text" value="${recruitVo.recruitSize}" readonly style="width: 45%;">
						</div> <%-- form-group col-xs-4 --%>
						
						<%-- 상세내용 --%>
						<div class="form-group col-xs-offset-1 col-xs-10">
							<br>
							<h5>상세내용</h5>
							<div style="white-space: pre-line; color: #dddddd; border: solid 1px; height: 100px; overflow-y: scroll;"><span style="color: black;">${recruitVo.recruitContent}</span>
							</div>
						</div> <%-- form-group col-xs-offset-1 col-xs-10 --%>
						
					</div> <%-- panel-body --%>
					
					<div class="panel-footer">
						<div class="text-center">
							<button id="rentBtn" type="submit" class="btn btn-info">신청하기</button>
						</div> <%-- text-center --%>
					</div> <%-- panel-footer --%>
					
				</div> <%-- panel panel-info animated fadeIn --%>
			</form> <%-- form-inline --%>
		</div> <%-- col-xs-12 --%>
	</div> <%-- row --%>
</div> <%-- container --%>