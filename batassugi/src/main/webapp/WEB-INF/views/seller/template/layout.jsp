<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title><tiles:insertAttribute name="seller_title" ignore="true" /></title>
<!-- Bootstrap CSS CDN -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<%-- Favicon --%>
<%-- <link href="${pageContext.request.contextPath}/resources/favicon.ico" rel="shortcut icon" type="image/x-icon"> --%>

<!-- Our Custom CSS -->
<link href="${pageContext.request.contextPath}/resources/css/seller.css" rel="stylesheet">

<%-- Bootstrap-dialog --%>
<link href="${pageContext.request.contextPath}/resources/css/bootstrap-dialog.css" rel="stylesheet">
<%-- Animate --%>
<link href="${pageContext.request.contextPath}/resources/css/animate.css" rel="stylesheet">


<%-- Jquery v3.3.1 --%>
<script src="${pageContext.request.contextPath}/resources/js/jquery-3.3.1.js"></script>
<%-- Bootstrap v3.3.7 --%>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.js"></script>
<%-- Bootstrap-dialog --%>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap-dialog.js"></script>
<%-- Parallax --%>
<script src="${pageContext.request.contextPath}/resources/js/parallax.js"></script>


</head>
<body>
	

	<!-- jQuery CDN -->
	<script src="https://code.jquery.com/jquery-1.12.0.min.js">
	<!-- Bootstrap Js CDN -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
 	<div class="wrapper">
		
		<%-- 사이드바 --%>
		<tiles:insertAttribute name="seller_left" />
		
		<div id="content">
		
		
					
			
			<%-- 헤더 --%>
			<tiles:insertAttribute name="seller_header" />
			<%-- 본문 --%>
       		<tiles:insertAttribute name="seller_main" />
    	</div>
	</div>

	
	        <!-- jQuery CDN -->
         <script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
         <!-- Bootstrap Js CDN -->
         <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

                  <script type="text/javascript">
             $(document).ready(function () {
                 $('#sidebarCollapse').on('click', function () {
                     $('#sidebar').toggleClass('active');
                     $(this).toggleClass('active');
                 });
             });
         </script>
		<script>
	$(document).ready(function() {
		var $detailFarm = $('.detailFarm');
		$detailFarm.on('click', function() {
			//alert($(this).val());
			//alert($('.hidden').children("span:nth(0)").text());
			var $farmNo=$(this).val();
			var $data;
			 $.ajax({
				type : 'post',
				url:'getDetailFarm',
				data : 'farmNo='+$farmNo,
				async : false,
				success : function(data) {
					//alert(data.farmVo.farmEnddate);
					$data=data;		
				}	
			})
			var $detailModal = new BootstrapDialog({
				type : 'default',
				title : '내 농지 정보',
				body : 'asdfasdfasdfasdf',
				buttons : [{
	                label: '대여모집',
	                action : function() {
	                	sendPost('registerRecruitForm', {
	                		'farmNo' : $data.farmVo.farmNo
	                	})
						//location.href="registerRecruitForm";
					}
	            },{
	            	label:'주말농장모집',
	            	action : function(){
	            		
	            	}
	            },
	            {
	            	label: '닫기',
	            	action: function(dialogRef) {
						dialogRef.close();
					}            	
	            }],
				closable : true,
			})
			$detailModal.realize();
			$detailModal.getModalHeader().parents().find(".modal-header").append("<hr>");
			var $myModalBody=$detailModal.getModalBody().parents().find(".bootstrap-dialog-body");
			var appendString='';
			var crops='';
			for (var i=0 ; i < $data.farmVo.cropsVo.length ; i++){
				crops+=$data.farmVo.cropsVo[i].cropsName+' ';
			}
			appendString+="<div class='col-xs-5'>asdf";
			appendString+="</div>";
			appendString+="<div class='col-xs-7'>평수 : "+ $data.farmVo.farmSize+"<hr>";
			appendString+="밭 주소 : "+$data.farmVo.farmAddress+"<hr>";
			appendString+="등록만료일 : "+$data.farmVo.farmEnddate+"<hr>";
			appendString+="농지주인 : "+$data.farmVo.id+"<hr>";
			appendString+="재배가능농작물 : "+crops+"<br><br><br><br>";
			appendString+="</div><hr>";
			
			$myModalBody.append(appendString);
			//alert($myModalBody.html());
			$detailModal.open();
			//alert(($data).farmVo.farmAddress);
			// 
		})
	})
</script>
	
    
</body>
</html>