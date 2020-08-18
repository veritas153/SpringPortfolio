<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div class="classType-container">
	<div class="classType">전체 클래스</div>
</div>

<div class="classList-container">
	<span id="classList-name">클래스 목록</span>
	<div class="class-selectbox">
		<select name="orderBy">
			<option value="">분류순</option>
			<option value="">인기순</option>
			<option value="">최신등록순</option>
			<option value="">추천순</option>
		</select>
	</div>
	<div class="classList">
		<a class="class-link" href="#">
			<div class="classList-row">
				<div class="col-md-4">
					<div class="card mb-4 shadow-sm">
						<figure class="class-image">
	  						<img src="<%=request.getContextPath()%>/resources/image/classImages/arts1.jpg">					
						</figure>
						<div class="class-info">
							<span id="instructor">김무스무스</span>
							<span id="type">순수미술</span>
							<div class="class-title">지금 당장 시작하는 드로잉</div>
						</div>
						<div class="d-flex">
							<div class="sub-group">
								<div class="like-number"><i class="far fa-heart"></i> 330</div>
								<div class="recommend-number"><i class="far fa-thumbs-up"></i> 100</div>
							</div>
							<small class="text-muted">바로 수강 가능</small>
						</div>
					</div>
				</div>
			</div>
		</a>
	</div>
</div>
