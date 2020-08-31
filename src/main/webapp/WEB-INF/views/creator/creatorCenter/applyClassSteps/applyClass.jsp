<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<div class="applyClass-leftContainer">
	<div class="applyClass-stepContainer">
		<a href="javascript:void(0)" id="class-basicInfo">
			<div class="applyClass-steps">
				<span>&#9312;</span>
				<span>기본 정보</span>
			</div>
		</a>
		<a href="javascript:void(0)" id="class-introduction">
			<div class="applyClass-steps">
				<span>&#9313;</span>
				<span>클래스 소개</span>
			</div>
		</a>
		<a href="javascript:void(0)" id="class-creatorIntroduction">
			<div class="applyClass-steps">
				<span>&#9314;</span>
				<span>크리에이터 소개</span>
			</div>
		</a>
		<a href="javascript:void(0)" id="class-confirmFinal">			
			<div class="applyClass-steps">
				<span>&#9317;</span>
				<span>신청 전 확인</span>
			</div>
		</a>
	</div>
</div>
<div class="applyClass-rightContainer">
	<div class="applyClass-classInfos">
		<div id="pageView"></div>
	</div>
	<div class="applyClass-classPreview">
		<div class="applyClass-previewStatus">
			<div class="col-md-4">
				<div class="card mb-4 shadow-sm">
					<figure class="class-image">	
	  					<figcaption name="image-container" id="image-container">
	  						<img id="previewImage" src="#" alt="새 이미지" >
	  					</figcaption>
					</figure>
					<div class="class-info">
						<span id="instructor">${user.st_name}</span>
						<span id="type"></span>
						<div class="class-title" id="class-title" name="class-title"></div>
					</div>
					<div class="d-flex">
						<div class="sub-group">
							<div class="like-number"><i class="far fa-heart" aria-hidden="true"></i> </div>
							<div class="recommend-number"><i class="far fa-thumbs-up" aria-hidden="true"></i> </div>
						</div>
						<small class="text-muted"></small>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>