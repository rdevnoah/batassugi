<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<div class="container-fluid">
      <div class="row main">
         <div class="col-sm-offset-2 col-sm-8">
            <h3>신청내역</h3><br>
            <table class="table table-hover text-center">
                <thead class="text-center">
                    <tr class="text-center">
                        <th>선택</th><th>신청인</th><th>신청량</th><th>대여기간</th><th>상세정보</th><th>승인상태</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${pagingList.rentList}" var="rent">
                    <tr>
                       <c:choose>
                          <c:when test="${rent.rentStatus!='대기'}">
                       		  <td><input type="checkbox" disabled="disabled" id="userCheck" name="rentNo" value="${rent.rentNo}"></td> 
                          </c:when>
                          <c:otherwise>
                             <td><input type="checkbox" name="userCheck" value="${rent.rentNo}"></td>
                          </c:otherwise>
                   	   </c:choose>
                       
                       <td>${rent.id}</td>
                       <td>${rent.rentSize}</td>
                       <td>${rent.rentMonth}</td>
                       <td>보기</td>
                       <td>
                           <c:if test="${rent.rentStatus=='승인'}">
                              <h5><span class="label label-success">승인</span></h5>
                       	   </c:if>
                       	   <c:if test="${rent.rentStatus=='거절'}">
                              <h5><span class="label label-danger">거절</span></h5>
                       	   </c:if>
                       	   <c:if test="${rent.rentStatus=='대기'}">
                              <h5><span class="label label-warning">대기</span></h5>
                       	   </c:if>
                       </td>
                    </tr>
                    </c:forEach>
                </tbody>               
            </table>
            <div class="text-center">
	            <c:if test="${pagingList.pb.previousPageGroup==true}">
	                <a href="recruitList?nowPage=${pagingList.pb.startPageOfPageGroup-1}&farmNo=${farmNo}">이전</a>
	            </c:if>
	            <c:forEach var="i" begin="${pagingList.pb.startPageOfPageGroup}" end="${pagingList.pb.endPageOfPageGroup}">
	                <c:choose>
	                    <c:when test="${i==pagingList.pb.nowPage}">
	                        ${i}
	                    </c:when>
	                    <c:otherwise>
	                        <a href="recruitList?nowPage=${i}&farmNo=${farmNo}">${i}</a>
	                    </c:otherwise>
	                </c:choose>
	            
	            </c:forEach>
	            <c:if test="${pagingList.pb.nextPageGroup==true}">
	                <a href="recruitList?nowPage=${pagingList.pb.endPageOfPageGroup+1}&farmNo=${farmNo}">다음</a>
	            </c:if>
            </div> <%-- 페이지 번호 div --%>
            <div>
            	<button id="confirmBtn">승인</button>
            	<button id="rejectBtn">거절</button>
            </div><%-- 승인, 거절 버튼 div --%>
         </div> <%-- col-sm-offset-2 col-sm-8 --%>
      </div> <%-- row main --%>
   </div> <%-- container-fluid --%>
    <script src="${pageContext.request.contextPath}/resources/js/spider.js"></script>
   <script>
     $(document).ready(function() {
     	$('#confirmBtn').on('click',function(){
     		var checked=[];
     		$.each($("input[name=userCheck]:checked"), function() {
     			checked.push($(this).val());
     		})
     		sendPost('updateRentStatusConfirm', {
     			'rentNo' : checked,
     			'farmNo' : ${farmNo}
     		})
     	})
     	
     	$('#rejectBtn').on('click',function(){
     		var checked=[];
     		$.each($("input[name=userCheck]:checked"), function() {
     			checked.push($(this).val());
     		})
     		sendPost('updateRentStatusReject', {
     			'rentNo' : checked,
     			'farmNo' : ${farmNo}
     		})
     	})
     })
   </script>