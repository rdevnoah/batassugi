<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<div>
	<button id='createScheduleBtn' class='btn btn-success'>등록하기</button> 
</div>

<div id="calendar" style="padding-bottom:100px;"></div>

<div class="modal fade" id="createScheduleModal" role="dialog">
	<div class="modal-dialog">
		<form id="registerForm" action='${pageContext.request.contextPath}/buyer/createSchedule' method="post" onsubmit="return false;">
				<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h3 class="modal-title">일정등록</h3>
				</div>
				<div class="modal-body">									
					<div class="form-group">
						<label for="category">카테고리</label> 
						<input type="text" class="form-control" value="참여일정" readonly="readonly">
						<input type="hidden" value="${rentNo}" name="rentNo">
					</div>
					<div class="form-group">
						<label for="title">제목</label> 
						<input type="text"class="form-control" id="newtitle" name="scheduleTitle">
					</div>
					<div class="row">
						<div class="col-sm-6">
							<div class="form-group">
								<label for="sttdate">시작일시</label>
								<input type="date" class="form-control" name="scheduleStartdate" id="sttdate">
							</div>
						</div>
						<div class="col-sm-6">
							<div class="form-group">
								<label for="enddate">종료일시</label>
								<input type="date" class="form-control" name="scheduleEnddate" id="enddate">
							</div>
						</div>
					</div>
					<div class="form-group">
						<label>상세내용</label>
						<textarea class="form-control" rows="5" id="newDescription" name="scheduleContent"></textarea>
					</div>
				</div>
				<div class="modal-footer">
					<button type="submit" class="btn btn-default" id="finalRegisterBtn">등록</button>
					<button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
				</div>
			</div>
		</form>
	</div>
</div>




<div class="modal fade" id="detailScheduleModal" role="dialog">
	<div class="modal-dialog">
		<form id="detailForm" action='' method="post" onsubmit="return false;">
				<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h3 class="modal-title">상세보기</h3>
				</div>
				<div class="modal-body">									
					<div class="form-group">
						<label for="category">카테고리</label> 
						<input type="text" class="form-control" id="detailAuth" readonly="readonly">
						<input type="hidden" value="${rentNo}" name="rentNo">
					</div>
					<div class="form-group">
						<label for="title">제목</label> 
						<input type="text"class="form-control" id="detailTitle" readonly="readonly" name="detailTitle">
					</div>
					<div class="row">
						<div class="col-sm-6">
							<div class="form-group">
								<label for="sttdate">시작일시</label>
								<input type="date" class="form-control" name="detailStartdate" id="detailStartdate" readonly="readonly">
							</div>
						</div>
						<div class="col-sm-6">
							<div class="form-group">
								<label for="enddate">종료일시</label>
								<input type="date" class="form-control" name="detailEnddate" id="detailEnddate" readonly="readonly">
							</div>
						</div>
					</div>
					<div class="form-group">
						<label>상세내용</label>
						<textarea class="form-control" rows="5" id="detailContent" name="detailContent" readonly="readonly"></textarea>
					</div>
				</div>
				<div class="modal-footer">
					<!-- <button type="submit" class="btn btn-default" id="finalRegisterBtn">등록</button> -->
					<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
				</div>
			</div>
		</form>
	</div>
</div>



<script>
$(document).ready(function(){

	$("#createScheduleBtn").on('click', function(){
		$("#createScheduleModal").modal();
		$(this).removeData('bs.modal');
	});
	
	$("#createScheduleModal").on('show.bs.modal', function(){
		$("#registerForm").on('submit', function(){
			var flag=false;
			BootstrapDialog.confirm({
				message: '등록하시겠습니까?',
				onhidden: function(){
					flag && $("#registerForm").attr('onsubmit', 'return true;').submit();
				},
				callback: function(e){
					flag=e;
				}
			})
		})
	})
	
		

	
	var todoJson = ${scheduleList};
	var events=new Array();
	var todoEvents2 = new Array();
	for (var i=0 ; i<todoJson.length ; i++){
		event = new Object();
		event.title = todoJson[i].scheduleTitle;
		event.start = new Date(todoJson[i].scheduleStartdate);
		event.auth=todoJson[i].auth;
		var endDate = new Date(todoJson[i].scheduleEnddate);
		event.content=todoJson[i].scheduleContent;
		event.end = endDate+1;
		
		if (todoJson[i].auth==1){
			event.backgroundColor='#FA5882';
			event.borderColor='#FA5882';
			
		}else if (todoJson[i].auth==2){
			event.backgroundColor='#81DAF5';
			event.borderColor='#81DAF5';
		}
		events.push(event);
	}
	
		
	
		
 
	$("#calendar").fullCalendar({
			height : 500,
			header: {
			left: '',
			right: '',
			center: 'prev title next today'	
			}, 
			displayEventTime: false,
			eventClick : function (e) {
				var start = new Date(e.start);
				var startString = start.getFullYear()+'-'+('0' + (start.getMonth()+1)).slice(-2)
				+'-'+('0' + start.getDate()).slice(-2);
				
				var end = new Date(e.end);
				var endString = end.getFullYear()+'-'+('0' + (end.getMonth()+1)).slice(-2)
				+'-'+('0' + end.getDate()).slice(-2);
				if (e.auth==1){
					$("#detailAuth").val("필수업무");
				}else{
					$("#detailAuth").val("대여인참여");
				}
				$("#detailTitle").val(e.title);
				$("#detailStartdate").val(startString);
				$("#detailEnddate").val(endString);
				$("#detailContent").val(e.content);
				$("#detailScheduleModal").modal();
				//$(this).removeData('bs.modal');
				
				
			}
		})
	
		
	$('#calendar').fullCalendar('addEventSource',events);
	

	
})


</script>

