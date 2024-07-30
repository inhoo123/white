
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set value="${pageContext.request.contextPath}" var="rootPath" />

<form action="write" method="GET" class="update">

	<div>
		<label for="m_title">제목</label>
		<textarea id="m_title" name="m_title" rows="1" cols="30"
			placeholder="제목입력"></textarea>
	</div>

	<div>
		<label for="m_memo">내용</label>
		<textarea id="m_memo" name="m_memo" rows="6" cols="30"
			placeholder="내용 입력"></textarea>
	</div>
	<button type="submit">저장</button>
</form>

