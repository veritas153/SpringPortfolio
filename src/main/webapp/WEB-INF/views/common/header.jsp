<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<header class="head-wrapper">
	<div class="logo-container">
		<a class="logo-home" href="<%=request.getContextPath()%>/">
			<img class="logo" src="<%=request.getContextPath()%>/resources/image/logo.png" width="200" height="40" >
		</a>
		<form>
			<div class="search-box">
				<div class="search-icon">
					<i class="fas fa-search"></i>
				</div>
				<input type="text" class="search" placeholder="검색어를 입력하세요">
			</div>
		</form>
	</div>
	<div class="log-container">
		<a href="<%=request.getContextPath()%>/signup">회원가입</a>
		<a href="<%=request.getContextPath()%>/login">로그인</a>
	</div>
</header>
<nav class="navbar navbar-expand-md bg-dark navbar-dark">
	<div class="container">
	  	<a class="navbar-brand" href="#">Navbar</a>
	  	<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
	    	<span class="navbar-toggler-icon"></span>
	  	</button>
	  	<div class="collapse navbar-collapse" id="collapsibleNavbar">
	    	<ul class="navbar-nav">
		      	<li class="nav-item">
		        	<a class="nav-link" href="#">Link</a>
		      	</li>
		      	<li class="nav-item">
		        	<a class="nav-link" href="#">Link</a>
		      	</li>
		      	<li class="nav-item">
		        	<a class="nav-link" href="#">Link</a>
		      	</li>    
	    	</ul>
		</div> 
	</div> 
</nav>