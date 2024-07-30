<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set value="${pageContext.request.contextPath}" var="rootPath" />
<script>
	const rootPath = "${rootPath}";
</script>
<script src="${rootPath}/static/js/list.js"></script>
<table class="memo list">
	<thead>
		<tr>
			<th>번호</th>
			<th>작성자</th>
			<th>작성일</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${MEMO_LIST}" var="MEMO">
			<tr data-st_num="${MEMO.m_seq}">
				<td>${MEMO.m_seq}</td>
				<td>${MEMO.m_author}</td>
				<td>${MEMO.m_date}</td>
			</tr>
		</c:forEach>
	</tbody>
</table>
