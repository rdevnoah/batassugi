<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script type="text/javascript">
	BootstrapDialog.alert({
		title : '밭아쓰기',
		message : '회원정보 수정이 완료되었습니다',
		onhidden : function() {
			location.href=("${pageContext.request.contextPath}/seller/seller_Home");
		}
	});
</script>