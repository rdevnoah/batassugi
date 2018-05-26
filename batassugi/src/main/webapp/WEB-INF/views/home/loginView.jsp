<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="container">
	<div id="loginbox" class="col-xs-offset-3 col-xs-6">
		<div class="panel panel-primary">
			<div class="panel-heading">
				<div class="panel-title text-center">반갑습니다! 밭아쓰기입니다.</div>
			</div>

			<div class="panel-body text-center">
				<form class="form-horizontal text-center" action="${pageContext.request.contextPath}/login" method="POST">

					<div class="form-group">
						<label class="form-label col-xs-offset-2 col-xs-2" style="padding-top: 10px;">아 이 디 </label>
						<div class="col-xs-5">
							<input id="user" type="text" class="form-control" name="id" value="" placeholder="User" required="required">
						</div>
					</div>

					<div class="form-group">
						<label class="form-label col-xs-offset-2 col-xs-2" style="padding-top: 10px;">패스워드</label>
						<div class="col-xs-5">
							<input id="password" type="password" class="form-control" name="password" placeholder="Password" required="required">
						</div>
					</div>

					<div class="form-group">
						<!-- Button -->
						<div class="col-xs-offset-4 col-xs-5">
							<button type="submit" class="btn btn-primary btn-block"> Log in</button>
						</div>
					</div>
				</form>

			</div>
		</div>
	</div>
</div>