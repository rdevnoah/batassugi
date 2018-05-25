<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
  <div class="container">
    <div class="row">
      <div class="col-xs-12">
        <form class="form-inline" method="post" action="${pageContext.request.contextPath}/seller/registerRecruit" onsubmit="return recruitCheck()">
          <input type="hidden" name="farmNo" value="${recruitMap.farmVo.farmVo.farmNo}">
          <div class="panel panel-info animated fadeIn">
            <div class="panel-heading">
              <div class="panel-title text-center">농지 모집 등록</div>
            </div>
            <div class="panel-body"><%-- 평수 --%>
              <div class="form-group col-xs-offset-1 col-xs-3">
                <label>평수 : </label>
                <input type="number" name="recruitSize" class="form-control" min="10" max="${recruitMap.rentSize}" required style="width: 30%;"><label class="text-danger">/ ${recruitMap.rentSize}</label>
              </div> <%-- form-group col-xs-offset-1 col-xs-3 --%>
              <%--재배가능농작물 --%>
              <div class="form-group col-xs-4">
                <label>모집종료일 : </label>
                <input type="date" id="recruitEnddate" required name="recruitEnddate">
              </div> <%-- form-group col-xs-4 --%>
              <%-- 대여기간 --%>
              <div class="form-group col-xs-4">
                <label>대여기간 : </label>
                <input class="form-control" type="text" name="maxRentMonth" value="${recruitMap.maxMonth}" readonly style="width: 30%;">
              </div> <%-- form-group col-xs-4 --%>
              <%-- 농지주소 --%>
              <div class="form-group col-xs-offset-1 col-xs-3">
                <label>주소 : </label>
                <input class="form-control" type="text" value="${recruitMap.farmVo.farmVo.farmAddress}" readonly style="width: 30%;">
              </div> <%-- form-group col-xs-offset-1 col-xs-3 --%>
              <%-- 농지임대자의 전화번호 --%>
              <div class="form-group col-xs-4">
                <label>모집분류 : </label>
                <input class="form-control" type="text" name="recruitKind" value="대여" readonly style="width: 33%;">
              </div> <%-- form-group col-xs-4 --%>
              <%-- 평당 월 가격 --%>
              <div class="form-group col-xs-4">
                <label>평당 월 가격 : </label>
                  <input class="form-control" type="number" min="0" name="price" required="required" style="width: 45%;" placeholder="가격을 입력하세요">
              </div> <%-- form-group col-xs-4 --%>
              <%-- 상세내용 --%>
              <div class="form-group col-xs-offset-1 col-xs-10"><br>
                <h5>상세내용</h5>
                <textarea name="recruitContent" required="required" style="width : 100%; border: solid 1px; height: 100px; overflow-y: scroll;"></textarea>
              </div>
            </div> <%-- form-group col-xs-offset-1 col-xs-10 --%>
          </div> <%-- panel-body --%>
          <div class="panel-footer">
            <div class="text-center">
              <button type="submit" class="btn btn-info">모집등록하기</button>
            </div> <%-- text-center --%>
          </div> <%-- panel-footer --%>
        </form> <%-- form-inline --%>
      </div> <%-- panel panel-info animated fadeIn --%>
    </div> <%-- col-xs-12 --%>
  </div> <%-- row --%> 
  
  <script>
  	function recruitCheck(){
  		var enddate=new Date();
  		enddate=$("#recruitEnddate").val();
  		var nowDate=new Date().toLocaleDateString();
  		if (enddate < nowDate){
  			BootstrapDialog.alert("모집 종료날짜를 바르게 입력해주세요.");
  			return false;
  		}else{
  			return true;
  		}

  	}
  </script>
