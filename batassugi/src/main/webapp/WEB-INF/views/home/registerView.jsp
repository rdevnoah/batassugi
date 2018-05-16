<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>

<div class="container">
  <div class="row">
    <div class="col-md-12">
      <form class="form-horizontal" action="${pageContext.request.contextPath}/register" method="post"name="register" id="register" enctype="multipart/form-data">
        <%-- 판넬 헤드 : 회원가입 --%>
        <div class="panel-heading">
          <div class="panel-title text-left">
            <h3>회원가입</h3>
          </div>
        </div>

        <%-- 로그인을 panel form에 넣음 --%>
        <div class="panel panel-default">
          <%-- 필수 입력정보 헤드 --%>
          <div class="panel-heading">
            <div class="panel-title text-left">필수정보 입력</div>
          </div>
          <%-- 필수 입력정보 내용 : 2단 --%>
          <div class="row">
         	<%-- 1단 --%> 	
            <div class="col-md-6">
              <%-- 아이디 --%>
              <div class="form-group">
                <label class="control-label col-sm-3">아이디 <span class="text-danger">*</span></label>
                <div class="col-md-8 col-sm-9">
                  <div class="input-group">
                    <span class="input-group-addon"></span> 
                    <input type="text" class="form-control" name="memberVo.id" id="id" placeholder="아이디를 입력하세요(영문, 3~10자 사이)">
                  </div>
                  <div class="input-group">
                    <span class="input-group-addon"></span> <small> 아이디 중복확인 영역 </small>
                  </div>
                </div>
              </div>
              <%-- 패스워드 --%>
              <div class="form-group">
                <label class="control-label col-sm-3"> 패스워드입력 <span class="text-danger">*</span></label>
                <div class="col-md-8 col-sm-8">
                  <div class="input-group">
                    <span class="input-group-addon"></span> 
                    <input type="password" class="form-control" name="memberVo.password" id="password" placeholder="패스워드를 입력하세요">
                  </div>
                </div>
              </div>

              <%-- 패스워드 확인 --%>
              <div class="form-group">
                <label class="control-label col-sm-3">패스워드 확인 <span class="text-danger">*</span></label>
                <div class="col-md-8 col-sm-8">
                  <div class="input-group">
                    <span class="input-group-addon"></span> 
                    <input type="password" class="form-control" id="cpassword" placeholder="패스워드 확인">
                  </div>
                  <div class="input-group">
                    <span class="input-group-addon"></span> <small> 패스워드 중복확인 영역 </small>
                  </div>
                </div>
              </div>

              <%-- 회원이름 --%>
              <div class="form-group">
                <label class="control-label col-sm-3"> 이름 <span class="text-danger">*</span></label>
                <div class="col-md-8 col-sm-9">
                  <div class="input-group">
                    <span class="input-group-addon"></span> 
                    <input type="text" class="form-control" name="memberVo.name" id="name" placeholder="당신의 이름을 넣어주세요">
                  </div>
                </div>
              </div>

              <%-- 회원 닉네임 --%>
              <div class="form-group">
                <label class="control-label col-sm-3"> 닉네임 <span class="text-danger">*</span></label>
                <div class="col-md-8 col-sm-9">
                  <div class="input-group">
                    <span class="input-group-addon"></span> 
                    <input type="text" class="form-control" name="memberVo.nickname" id="nickname" placeholder="닉네임을 넣어주세요">
                  </div>
                  <div class="input-group">
                    <span class="input-group-addon"></span> <small> 닉네임 중복확인 영역 </small>
                  </div>
                </div>
              </div>
            </div>
            
            <%-- 2단 --%>            
            <div class="col-md-6">
              <%-- 회원 이메일 --%>
               <div class="form-group">
                <label class="control-label col-sm-3"> 이메일 <span class="text-danger">*</span></label>
                <div class="col-md-7 col-sm-9">
                  <div class="input-group">
                    <span class="input-group-addon"></span> 
                    <input type="email" class="form-control" name="email" id="email" placeholder="이메일을 넣어주세요">
                  </div>
                </div>
              </div> 

              <%-- 회원 전화번호 --%>
              <div class="form-group">
                <label class="control-label col-sm-3">전화번호<span class="text-danger">*</span></label>
                <div class="col-md-7 col-sm-8">
                  <div class="input-group">
                    <span class="input-group-addon"></span> 
                    <input type="text" class="form-control" name="tel" id="tel" placeholder="전화번호를 입력하세요">
                  </div>
                </div>
              </div>

              <%-- 회원 주소 --%>
               <div class="form-group">
                <label class="control-label col-sm-3">주소<span class="text-danger">*</span></label>
                <div class="col-md-7 col-sm-8">
                  <div class="input-group">
                    <span class="input-group-addon"></span> 
                    <input type="text" class="form-control" name="address" id="address" placeholder="주소를 입력하세요">
                  </div>
                </div>
              </div> 

              <%-- 회원 생년월일 --%>
              <div class="form-group">
                <label class="control-label col-sm-3">생년월일<span class="text-danger">*</span></label>
                <div class="col-md-7 col-sm-8">
                  <div class="input-group">
                    <span class="input-group-addon"></span> 
                    <input type="date" class="form-control" name="birthday" id="birthday">
                  </div>
                </div>
              </div> 

              <%-- 회원 성별 --%>
              <div class="form-group">
                <label class="control-label col-sm-3">Gender <span class="text-danger">*</span></label>
                <div class="col-md-7 col-sm-9">
                  <div class="input-group">
                    <span class="input-group-addon"></span> 
                    <label> <input name="gender" type="radio" value="남성" checked> 남자 </label>    
                    <label> <input name="gender" type="radio" value="여성"> 여자 </label>
                  </div>
                </div>
              </div> 
            </div>            
          </div><%-- 필수 입력정보 끝 --%>
          
          <%-- 부가정보 : 등급정보, 이미지 업로드 --%>
          <div class="panel-heading">
            <div class="panel-title text-left">부가정보 입력</div>
          </div>

          <div class="row">
            <%-- 파일정보 업로드 --%>
           <div class="col-md-6">
              <div class="form-group">
                <div class="control-label col-sm-3">
                  <img src="${pageContext.request.contextPath}/resources/img/default.png" width="100px" />
                </div>
                <label class="control-label col-sm-5">Profile Photo(Optional)</label>
                <div class="col-md-8 col-sm-8">
                  <div class="input-group">
                    <span class="input-group-addon" id="file_upload"></span> <input
                      type="file" name="file" id="file" class="form-control upload"
                      placeholder="프로필을 넣어주세요" aria-describedby="file_upload">
                  </div>
                </div>
              </div>
            </div> 
            
            <%--제출 버튼 --%>
            <div class="form-group">
              <div class="col-xs-offset-3 col-xs-10">
                <input name="submit" type="submit" value="회원가입" class="btn btn-primary">
              </div>
            </div>
          </div><%--부가 정보 영역 --%>          
        </div>	<!-- 판넬 폼 종료 -->
      </form><%-- form 영역 --%>
    </div><%-- 메인영역 --%>
  </div><%-- 전체 row --%>
</div><%-- 전체 container --%>


