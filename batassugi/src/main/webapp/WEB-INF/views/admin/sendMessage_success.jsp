<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script type="text/javascript">
	BootstrapDialog.alert({
		title : '밭아쓰기',
		message : '메세지 전송이 완료되었습니다.',
		onhidden : function() {
			location.href=("${pageContext.request.contextPath}/admin/sendBox");
		}
	});
</script>