<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>title</title>
</head>
<body>
 
    <!-- form enctype="multipart/form-data" 을 꼭 적어줘야 함 -->
    <form class="form-horizontal" method="post" action="<c:url value='/re/add'/>" enctype="multipart/form-data">
        <!-- input type="file" 이라고 꼭 저어줘야 함 -->
        <input type="file" class="form-control1" id="uploadFile" name="uploadFile" style="border:0px solid black;"/>        
        <button type="submit" class="btn btn-default">등록</button>
        <button type="reset" class="btn btn-default">취소</button>
    </form>
    <a href="http://diaryofgreen.tistory.com/146">파일업로드 참고사이트</a>
 
</body>
</html>
