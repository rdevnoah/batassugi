<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="container">
   <div class="row">
      <div class="col-xs-12">
         <c:forEach items="${farmList}" var="farmVo">
         <div class="col-xs-3">
            <div class="thumbnail rent">
               <img src="${pageContext.request.contextPath}/resources/img/대여신청_밭사진1.png" class="img-responsive">
               <div class="caption">
                  <div class="hidden"><span>${farmVo.farmNo}</span></div>
                  <div><i class="fa fa-calendar-check-o fa-lg"></i> <span>${farmVo.farmEnddate}</span> 까지</div>
                  <div><i class="fa fa-fort-awesome fa-lg"></i> <span>${farmVo.farmSize}평</span></div>
                  <!-- <div><i class="fa fa-comment-o fa-lg"></i> <span>서현에 위치한 농장을 대여 해드립니다</span></div> -->
                  <div>&nbsp;<i class="fa fa-map-marker fa-lg"></i> &nbsp;<span>${farmVo.farmAddress}</span></div>
                  <p>
                     <c:forEach items="${farmVo.cropsVo}" var="crops">
                     	${crops.cropsName}
                     </c:forEach>
                  </p>
                  <button class="btn btn-primary btn-block detailFarm" value="${farmVo.farmNo}">상세보기</button>
               </div> <%-- caption --%>
            </div> <%-- thumbnail --%>
         </div> <%-- col-xs-4 --%>
         </c:forEach>
      </div> <%-- col-xs-12 --%>
   </div> <%-- row --%>
</div> <%-- container --%>
   <script src="${pageContext.request.contextPath}/resources/js/spider.js"></script>
</body>
