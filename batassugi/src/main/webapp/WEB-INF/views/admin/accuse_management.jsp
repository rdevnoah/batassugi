<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="container">
  <div class="row">
    <div class="col-md-12">
       <form class="form-horizontal" action="${pageContext.request.contextPath}/adminAccuse" method="post"name="adminAccuse" 
      id="adminAccuse" enctype="multipart/form-data" >
        <div class="panel-heading">
          <div class="panel-title text-left">
            <h3>신고관리</h3>
            <table>
            <thead>
            <tr>
            	<th>#</th><th>신청일</th><th>신청자 ID</th><th>신고대상</th><th>분류</th><th>처리상태</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="list" items="${list}">
            <tr>
            	<td>${list.accuseNo}</td>
            	<td>${list.accuseDate}</td>
            	<td>${list.accuseId}</td>
            	<td>${list.reportedId}</td>
            	<td>${list.accuseCategory}</td>
            	<td>${list.accuseResultday}</td>
            </tr>
            </c:forEach>
            </tbody>
            </table>
          </div>
        </div>
      </form><%-- form 영역 --%>
    </div><%-- 메인영역 --%>
  </div><%-- 전체 row --%>
</div><%-- 전체 container --%>