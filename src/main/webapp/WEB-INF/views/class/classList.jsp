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
	
		<div class="classList-row">
			<a class="class-link" href="#">
				<div class="col-md-4">
					<div class="card mb-4 shadow-sm">
						<figure class="class-image">
	  						<img src="<%=request.getContextPath()%>/resources/image/classImages/arts1.jpg">					
	  						<figcaption>
	  							<h6>지금 당장 시작하는 드로잉</h6>
	  							<p>기초부터 정확하게 다지는 클래스!</p>
	  						</figcaption>
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
			</a>
			
			<a class="class-link" href="#">
				<div class="col-md-4">
					<div class="card mb-4 shadow-sm">
						<figure class="class-image">
	  						<img src="<%=request.getContextPath()%>/resources/image/classImages/programming1.jpg">					
	  						<figcaption>
	  							<h6>Python 입문</h6>
	  							<p>배우기도 쉽고, 쓸곳도 많은 파이선을 배워봅시다!</p>
	  						</figcaption>
						</figure>
						<div class="class-info">
							<span id="instructor">김자바ㄴ</span>
							<span id="type">프로그래밍</span>
							<div class="class-title">Python 입문</div>
						</div>
						<div class="d-flex">
							<div class="sub-group">
								<div class="like-number"><i class="far fa-heart"></i> 222</div>
								<div class="recommend-number"><i class="far fa-thumbs-up"></i> 222</div>
							</div>
							<small class="text-muted">바로 수강 가능</small>
						</div>
					</div>
				</div>
			</a>
			
			<a class="class-link" href="#">
				<div class="col-md-4">
					<div class="card mb-4 shadow-sm">
						<figure class="class-image">
	  						<img src="<%=request.getContextPath()%>/resources/image/classImages/music1.jpg">					
	  						<figcaption>
	  							<h6>Synthesis 101</h6>
	  							<p>EDM, 팝에 많이 쓰이는 사운드들을 직접 만들어봅시다.</p>
	  						</figcaption>
						</figure>
						<div class="class-info">
							<span id="instructor">신디</span>
							<span id="type">음악</span>
							<div class="class-title">Synthesis 101</div>
						</div>
						<div class="d-flex">
							<div class="sub-group">
								<div class="like-number"><i class="far fa-heart"></i> 101</div>
								<div class="recommend-number"><i class="far fa-thumbs-up"></i> 101</div>
							</div>
							<small class="text-muted">바로 수강 가능</small>
						</div>
					</div>
				</div>
			</a>
			
			<a class="class-link" href="#">
				<div class="col-md-4">
					<div class="card mb-4 shadow-sm">
						<figure class="class-image">
	  						<img src="<%=request.getContextPath()%>/resources/image/classImages/programming2.png">					
	  						<figcaption>
	  							<h6>Spring Framework</h6>
	  							<p>JAVA를 이용해 웹사이트를 만들어봅시다.</p>
	  						</figcaption>
						</figure>
						<div class="class-info">
							<span id="instructor">김자바ㄴ</span>
							<span id="type">프로그래밍</span>
							<div class="class-title">Spring Framework</div>
						</div>
						<div class="d-flex">
							<div class="sub-group">
								<div class="like-number"><i class="far fa-heart"></i> 222</div>
								<div class="recommend-number"><i class="far fa-thumbs-up"></i> 222</div>
							</div>
							<small class="text-muted">바로 수강 가능</small>
						</div>
					</div>
				</div>
			</a>	
				
				
		</div>
		
	</div>
	
	
</div>
