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
      <img src="<%=request.getContextPath()%>/resources/image/mainpage/carousel1.jpg" alt="Music for Everyone" width="1100" height="500">
      <div class="carousal-description">모두를 위한 문화</div>
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

<input type="hidden" id="isLogin" value="${isLogin}">
<script>

	if ($('#isLogin').val() == 'true'){
			alert('회원가입이 완료되었습니다.');
			$('#isLogin').val('')
		}
</script>

