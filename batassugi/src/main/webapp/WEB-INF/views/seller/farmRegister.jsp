<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
   <div class="container-fluid">
      <div class="row main">
         <div class="col-sm-offset-2 col-sm-8">
			<form action="${pageContext.request.contextPath}/farm_register" method="post" >
				밭평수<input type="text" name="farmSize"><br>
				밭등록날짜<input type="date" name="farmStartdate"><br>
				밭마감날짜<input type="date" name="farmEnddate"><br>
				 밭 주소 <input type="text" name="farmAddress"><br>
				작물선택 <input type="checkbox" name="cropsNo" value="1">상추
				<input type="checkbox" name="cropsNo" value="2">땅콩
				<input type="checkbox" name="cropsNo" value="3">깻잎
				<input type="checkbox" name="cropsNo" value="4">부추
				<input type="submit" value="등록">
			</form>
         </div> <%-- col-sm-offset-2 col-sm-8 --%>
      </div> <%-- row main --%>
   </div> <%-- container-fluid --%>
