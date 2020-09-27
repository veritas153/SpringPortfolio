<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<div class="chapterContent-container">
	<div class="class-titleContainer">${classList.class_title}</div>
	<input type="number" name="subChapter_priNum" value="${subContent.subChapter_priNum}" readonly style="visibility: hidden;">
	<div class="subContent-container">
		<div class="subChapter-title">${subContent.subChapter_title}</div>
		<div class="subChapter-content">${subContent.subChapter_content}</div>
	</div>
</div>