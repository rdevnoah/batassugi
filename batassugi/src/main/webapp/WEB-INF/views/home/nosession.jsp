<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script type="text/javascript">
	BootstrapDialog.alert({
		title : '밭아쑤기',
		message : '잘못된 접근입니다. 메인으로 이동합니다.',
		onhidden : function() {
			location.href=("${pageContext.request.contextPath}/");
		}
	});
</script>