<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class="signup-container">
	<div class="signup-box">
		<h1>회원가입</h1>
	</div>
    <form>
    	<div class="signup-box">
    		<input type="text" id="id" class="id-box" placeholder="아이디">
    		<button class="check-id">중복확인</button>
    	</div>
    	<div class="signup-box">
    		<input type="password" id="password" class="password-box" placeholder="숫자,글자,특수문자조합으로 8자이상">
    	</div>
    	<div class="signup-box">
    		<input type="password" id="password2" class="password-box2" placeholder="비밀번호 확인">
    	</div>
    	<div class="signup-box"></div>
    </form>
</div>