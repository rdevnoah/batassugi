<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
   <div class="container-fluid">
      <div class="row main">
         <div class="col-sm-offset-2 col-sm-8">
			<form action="${pageContext.request.contextPath}/farm_register" method="post" >
				등록 평수<input type="text" name="farmSize"><br>
				농지 등록날짜<input type="text" name="farmStartdate" value="${requestScope.date }" readonly="readOnly"><br>
				농지 등록 만료 날짜<input type="date" name="farmEnddate"><br>
				농지 주소 <input type="text" name="farmAddress"><br>
				 
				작물선택<br> 
            	<c:forEach items="${cropsList}" var="crops">
            	<input type="checkbox" name="cropsNo" value="${crops.cropsNo}">${crops.cropsName}<br>
            	</c:forEach>
				<input type="submit" value="등록">
			</form>
         </div> <%-- col-sm-offset-2 col-sm-8 --%>
      </div> <%-- row main --%>
   </div> <%-- container-fluid --%>
