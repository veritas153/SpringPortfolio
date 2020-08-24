<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class="signup-container">
	<div class="signup-box">
		<h1>로그인</h1>
	</div>
    <form method="post" action="<%=request.getContextPath()%>/login">
    	<div class="login-container">
	    	<div class="signup-box">
	    		<input type="text" id="id" name="st_id" class="id-box" placeholder="아이디">
	    	</div>
	    	<div class="signup-box">
	    		<input type="password" id="password" name="st_password" class="password-box" placeholder="패스워드">
	    	</div>
	    	<button>로그인</button>
	    </div>
    </form>
</div>