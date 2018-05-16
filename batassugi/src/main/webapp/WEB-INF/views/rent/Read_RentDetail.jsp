<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<div class="container">
	<div class="row">
		<div class="col-xs-12">
			<div class="panel panel-info animated fadeIn">
				<div class="panel-heading">
					<div class="panel-title text-center">농지대여 신청</div>
				</div>
	
				<div class="panel-body">
					<form class="form-inline">
						<div class="form-group col-xs-offset-1 col-xs-3">
							<label>평수 : </label>
							<select class="form-control" style="width: 50%;">
								<option value="5000">5000</option>
								<option value="15000">15000</option>
								<option value="20000">20000</option>
								<option value="25000">25000</option>
							</select>
						</div>
						<div class="form-group col-xs-4">
							<label>작물 : </label>
							<select class="form-control" style="width: 50%;">
								<option value="양파">양파</option>
								<option value="마늘">마늘</option>
								<option value="대파">대파</option>
								<option value="상추">상추</option>
							</select>
						</div>
						<div class="form-group col-xs-4">
							<label>대여기간 : </label>
							<select class="form-control" style="width: 50%;">
								<option value="1">1개월</option>
								<option value="2">2개월</option>
								<option value="3">3개월</option>
								<option value="4">4개월</option>
								<option value="5">5개월</option>
								<option value="6">6개월</option>
							</select>
						</div>
						<div class="form-group col-xs-offset-1 col-xs-3">
							<label>주소 : </label>
							<input class="form-control" type="text" value="경기도 성남시 판교" readonly>
						</div>
						<div class="form-group col-xs-4">
							<label>전화번호 : </label>
							<input class="form-control" type="text" value="010-5354-1231" readonly>
						</div>
						<div class="form-group col-xs-4">
							<label>평당 월 가격 : </label>
							<input class="form-control" type="text" value="1000" readonly>
						</div>
						
						<div class="form-group col-xs-offset-1 col-xs-10">
							<br>
							<h5>상세내용</h5>
							<div style="white-space: pre-line; color: #dddddd; border: solid 1px;">
								<span style="color: black;">dddafdsafs
								fsafasfafㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ
								afsadfzxcvxzv
								xcvxvc
								sfsfs
								</span>
							</div>
						</div>
					</form>
				</div>
				<div class="panel-footer">
					<div class="text-center">
						<button class="btn btn-info">신청하기</button>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>