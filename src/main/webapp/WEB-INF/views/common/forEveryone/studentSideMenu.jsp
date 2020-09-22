<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
<div class="sideMenu-container">
	<div class="user-container">
		<div class="user-imageContainer">
			<div class="image-part">
				<span><i class="fas fa-user"></i></span>
				
				<div class="image-insert">
					<span><i class="fas fa-pencil-alt"></i></span>
				</div>
			</div>
		</div>
		<div class="user-shortInfoContainer">
			<div class="userName-container">
				<span>${user.st_name}</span>
			</div>
			<div class="userEmail-container">
				<span>${user.st_email}</span>
			</div>
		</div>
	</div>
	<div class="sidemenu-area">
		<div class="sidemenu-list">
			<div class="sidemenu">
				<a href="<%=request.getContextPath()%>/studentInfo" class="sidemenu-link">
					<span class="myClass">
						<i class="fas fa-home"></i>
						<span>회원 전체 현황</span>
					</span>
				</a>
			</div>
			<div class="sidemenu">
				<a href="#" class="sidemenu-link">
					<span class="myClass">
						<i class="fas fa-book"></i>
						<span>내 클래스</span>
					</span>
				</a>
			</div>
			<div class="sidemenu">
				<a href="#" class="sidemenu-link">
					<span class="creator-announcement">
						<i class="far fa-bell"></i>
						<span>클래스 질의응답</span>
					</span>
				</a>
			</div>
			<div class="sidemenu">
				<a href="#" class="sidemenu-link">
					<span class="personalInfo-modify">
						<i class="fas fa-info-circle"></i>
						<span>개인정보 변경 </span>
					</span>
				</a>
			</div>
		</div>
	</div>
</div>