<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<div class="container">
  <h2>Aurts 크리에이터 공지 사항</h2>
  <p>크리에이터 전체 공지 사항입니다. 클래스 개설 전, 약관 변경 등이 있을 경우 여기서 업데이트 됩니다.</p>            
  <table class="table table-hover">
    <thead>
      <tr>
        <th>공지 사항</th>
        <th>공지일</th>
      </tr>
    </thead>
    <tbody>
    	<c:if test="${adminList eq null}">
    		<tr>
    			<td colspan="5">등록된 게시글이 없습니다.</td>
    		</tr>
    	</c:if>
    	<c:if test="${adminList ne null}">
     		 <tr>
      			<td>
      				<a href="<%=request.getContextPath()%>/admin/announcement/read?"></a>
      			</td>
      		</tr>
		</c:if>
    </tbody>
  </table>
  <!-- 페이지네이션 -->
	<ul class="pagination">
		<li class="page-item"><a class="page-link" href="#">Previous</a></li>
		<li class="page-item"><a class="page-link" href="#">1</a></li>
		<li class="page-item active"><a class="page-link" href="#">2</a></li>
		<li class="page-item"><a class="page-link" href="#">3</a></li>
		<li class="page-item"><a class="page-link" href="#">Next</a></li>
	</ul>
</div>
<div>
	<a href="<%=request.getContextPath()%>/admin/announcement/write">
		<button>글 작성</button>
	</a>
</div>

