<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script type="text/javascript">
	BootstrapDialog.alert({
		title : '밭아쑤기',
		message : '회원가입이 완료되었습니다',
		onhidden : function() {
			location.href=("${pageContext.request.contextPath}/home/loginView");
		}
	});
</script>