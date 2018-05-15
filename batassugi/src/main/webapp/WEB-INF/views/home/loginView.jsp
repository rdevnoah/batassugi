<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="container">

	<div id="loginbox"
		class="mainbox col-md-6 col-md-offset-3 col-sm-6 col-sm-offset-3">
		<div class="panel panel-default">
			<div class="panel-heading">
				<div class="panel-title text-center">반갑습니다! 밭아쓰기입니다.</div>
			</div>

			<div class="panel-body">
				<form action="${pageContext.request.contextPath}/login" method="POST">

					<div class="input-group">
						<span class="input-group-addon">아 이 디</span> <input id="user"
							type="text" class="form-control" name="id" value=""
							placeholder="User">
					</div>

					<div class="input-group">
						<span class="input-group-addon">패스워드</span> <input id="password"
							type="password" class="form-control" name="password"
							placeholder="Password">
					</div>

					<div class="form-group">
						<!-- Button -->
						<div class="col-sm-12 controls">
							<button type="submit" class="btn btn-primary pull-right">
								Log in
							</button>
						</div>
					</div>

				</form>

			</div>
		</div>
	</div>
</div>