
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set value="${pageContext.request.contextPath}" var="rootPath" />

<table class="memo detail">
	<thead>
		<tr>
			<th>${MEMO.m_author}</th>
			<th>${MEMO.m_date}</th>
			<th>${MEMO.m_memo}</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>${MEMO.m_author}</td>
			<td>${MEMO.m_date}</td>
			<td>${MEMO.m_memo}</td>
		</tr>
	</tbody>
</table>