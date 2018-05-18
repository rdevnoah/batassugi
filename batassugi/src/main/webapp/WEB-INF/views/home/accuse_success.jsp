<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script type="text/javascript">
	BootstrapDialog.alert({
		title : '밭아쑤기',
		message : '신고신청이 완료되었습니다. 빠른시일내에 처리하겠습니다.',
		onhidden : function() {
			location.href=("${pageContext.request.contextPath}/home/accuse_board");
		}
	});
</script>