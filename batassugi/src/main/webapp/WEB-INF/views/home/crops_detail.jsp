<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="container">
  <div class="row">
    <div class="col-md-12">
      <form class="form-horizontal" action="${pageContext.request.contextPath}/crops_detail" method="post" name="crops_detail" id="crops_detail" enctype="multipart/form-data">
        <%-- 판넬 헤드 : 농작물 사전 --%>
        <div class="panel-heading">
          <div class="panel-title text-left">
            <h3>${info.cropsVo.cropsName}</h3>
          </div>
        </div>
        <img src="${pageContext.request.contextPath}/resources/img/crops_img/${info.cropsProfileimg}" width="300px" /><br>
        <img src="${pageContext.request.contextPath}/resources/img/crops_img/${info.cropsImg1}" width="100px" />
        <img src="${pageContext.request.contextPath}/resources/img/crops_img/${info.cropsImg2}" width="100px" />
        <img src="${pageContext.request.contextPath}/resources/img/crops_img/${info.cropsImg3}" width="100px" /><br><br>
        	<table>
        		<tbody>
        			<tr><td>작물이름 &nbsp;</td><td>${info.cropsVo.cropsName}</td></tr>
        			<tr><td>파종시기 &nbsp;</td><td>${info.seedSeason}</td></tr>
        			<tr><td>수확시기 &nbsp;</td><td>${info.cropsSeason}</td></tr>
        			<tr><td>수확방법 &nbsp;</td><td>${info.cropsMethod}</td></tr>
        			<tr><td>대표요리 &nbsp;</td><td>${info.cropsFood}</td></tr>
        			<tr><td>난이도 &nbsp;</td><td>${info.cropsVo.cropsLevel} </td></tr>
        		</tbody>
        	</table>
		      </form><%-- form 영역 --%>
  </div><%-- 전체 row --%>
</div><%-- 전체 container --%>