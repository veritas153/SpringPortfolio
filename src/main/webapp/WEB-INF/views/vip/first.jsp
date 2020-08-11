<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


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
      <img src="<%=request.getContextPath()%>/resources/image/vipCarousel/vipCarousel1.jpg" alt="Music for Everyone" width="1100" height="500">
    </div>
    <div class="carousel-item">
      <img src="<%=request.getContextPath()%>/resources/image/vipCarousel/vipCarousel2.jpg" alt="Arts for Everyone" width="1100" height="500">
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

<div class="main-container">
	<div class="vipPlan-advertisement">
		<a href="<%=request.getContextPath()%>/vipClass/plan" class="vipPlan-link">
			<div class="vipPlan">VIP플랜 더 알아보기</div>
		</a>
	</div>
</div>

