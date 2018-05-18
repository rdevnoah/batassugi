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
            <h3>농작물 사전</h3>
          </div>
        </div>
        <c:forEach var="item" items="${icon}">
		    <a href="${pageContext.request.contextPath}/home/crops_detail?cropsNo=${item.cropsVo.cropsNo}"><img src="${pageContext.request.contextPath}/resources/img/crops_img/${item.cropsIcon}" width="100px" /></a>
		 </c:forEach> 
		      </form><%-- form 영역 --%>
    </div><%-- 메인영역 --%>
  </div><%-- 전체 row --%>
</div><%-- 전체 container --%>

