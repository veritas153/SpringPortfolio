<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>


<div id="demo" class="carousel slide" data-ride="carousel">

  <!-- Indicators -->
  <ul class="carousel-indicators">
    <li data-target="#demo" data-slide-to="0" class="active"></li>
    <li data-target="#demo" data-slide-to="1"></li>
    <li data-target="#demo" data-slide-to="2"></li>
  </ul>
  
  <!-- The slideshow -->
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="<%=request.getContextPath()%>/resources/image/mainpage/carousel1.jpg" alt="Music for Everyone" width="1100" height="500">
    </div>
    <div class="carousel-item">
      <img src="<%=request.getContextPath()%>/resources/image/mainpage/carousel2.jpg" alt="Arts for Everyone" width="1100" height="500">
    </div>
    <div class="carousel-item">
      <img src="<%=request.getContextPath()%>/resources/image/mainpage/carousel3.jpg" alt="Culture for Everyone" width="1100" height="500">
    </div>
  </div>
  
  <!-- Left and right controls -->
  <a class="carousel-control-prev" href="#demo" data-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </a>
  <a class="carousel-control-next" href="#demo" data-slide="next">
    <span class="carousel-control-next-icon"></span>
  </a>
</div>

<div class="classType-container">
	<div class="classType">전체 클래스</div>
</div>

<div class="classList-container">
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
	</div>
</div>
<div class="classType-container">
	<div class="classType">개강 예정 클래스</div>
</div>

<div class="classList-container">
	<div class="classList">
		<c:if test="${futureClassList != null}">
			<div class="classList-row">
				<c:forEach var="classBox" items="${futureClassList}">
					<a class="class-link" href="javascript:void(0)">
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
									
									<small class="text-muted"><fmt:formatDate pattern="MM/dd" value="${classBox.class_openDate}" /> 오픈 예정</small>
								</div>
							</div>
						</div>
					</a>
				</c:forEach>
			</div>
		</c:if>
	</div>
</div>