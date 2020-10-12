<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
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
		<c:if test="${classList != null}">
			<div class="classList-row">
				<c:forEach var="classBox" items="${classList}">
					<a class="class-link" href="<%=request.getContextPath()%>/class?code=${classBox.class_code}">
						<div class="col-md-4">
							<div class="card mb-4 shadow-sm">
								<figure class="class-image">
			  						<img src="<%=request.getContextPath()%>/resources/uploadedImage${classBox.class_image}">					
			  						<figcaption>
			  							<h6>${classBox.class_title}</h6>
			  							<p>${classBox.class_thumbIntro}</p>
			  						</figcaption>
								</figure>
								<div class="class-info">
									<span id="instructor">${classBox.class_creatorName}</span>
									<span id="type">${classBox.class_category}</span>
									<div class="class-title">${classBox.class_title}</div>
								</div>
								<div class="d-flex">
									<div class="sub-group">
										<div class="like-number"><i class="far fa-heart"></i> </div>
										<div class="recommend-number"><i class="far fa-thumbs-up"></i> </div>
									</div>
									
									<small class="text-muted">바로 수강 가능</small>
								</div>
							</div>
						</div>
					</a>
				</c:forEach>
			</div>
		</c:if>
		<c:if test="${classList == null}">
			<span>클래스 준비 중입니다. 기대해주세요! </span>
		</c:if>
	</div>
</div>