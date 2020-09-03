<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
<!DOCTYPE html>
<html>
<head>
<title>관리자 창</title>
<jsp:include page="/WEB-INF/views/include/adminHead.jsp"></jsp:include>
</head>
<body>
    <tiles:insertAttribute name="header"/>
    <div class="body-container">
    	<tiles:insertAttribute name="sideMenu"/> 
    	<div class="creatorMain-container">              
        	<tiles:insertAttribute name="body" />
        </div>
    </div>                                                  
  
</body>
</html>
