<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="container">
  <div class="row">
    <div class="col-md-12">
      <form class="form-horizontal" action="${pageContext.request.contextPath}/crops_detail" method="post" name="crops_detail" id="crops_detail" enctype="multipart/form-data">
        <%-- 판넬 헤드 : 농작물 사전 --%>
        <div class="panel-heading">
          <div class="panel-title text-left">
            <h3>밭아쓰기에 오신 것을 환영합니다.</h3>
          </div>
        </div>
		      </form><%-- form 영역 --%>
    </div><%-- 메인영역 --%>
  </div><%-- 전체 row --%>
</div><%-- 전체 container --%>