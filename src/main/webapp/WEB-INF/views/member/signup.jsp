<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class="signup-container">
	<div class="signup-box">
		<h1>회원가입</h1>
	</div>
    <form method="post" action="<%=request.getContextPath()%>/signup">
    	<div class="signup-infos">
	    	<div class="signup-box">
	    		<input type="text" id="st_id" name="st_id" class="id-box" placeholder="아이디" style="width: 70%; margin-right: 22px;">
	    		<label for="st_id" class="id-error" id="id-error"></label>
	    	</div>
	    	<div class="signup-box">
	    		<input type="password" id="password" name="st_password" class="password-box" placeholder="숫자,글자,특수문자조합으로 8자이상">
	    		<label for="st_password" class="pw-error" id="error"></label>
	    	</div>
	    	
	    	<div class="signup-box">
	    		<input type="password" id="password2" name="password2" class="password-box2" placeholder="비밀번호 확인">
	    	</div>
	    	 
	    	<div class="signup-box">
	    		<input type="text" id="phoneNumber" name="st_phoneNumber" class="phone-box" placeholder="전화번호 '-'빼고 입력">
	    	</div>
	    	
	    	<div class="signup-box">
	    		<input type="text" id="st_name" name="st_name" class="user-name" placeholder="성함">
	    	</div>
	    	<div class="signup-box">
	    		<input type="text" id="st_email" name="st_email" class="email-box" placeholder="e-mail 입력">
	    	</div>
	    	<button class="joinIn">가입</button>
	    </div>
    </form>
</div>