<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set value="${pageContext.request.contextPath}" var="rootPath" />
<h1>오늘은 내 생의 가장 젊은날</h1>
<fieldset>
	<form method="get">
		<div>
			<textarea rows="1" cols="30" id="m_author" name="e-mail"
				value="${MEMO.m_author}"></textarea>
		</div>
		<div>
			<textarea rows="1" cols="30" id="m_title" name="m_title"
				value="${MEMO.m_title}"></textarea>
		</div>
		<div>
			<textarea rows="5" cols="30" id="m-name" name="m_memo"
				value="${MEMO.m_memo}"></textarea>
		</div>
		<button type="submit">작성하기</button>
	</form>
</fieldset>
<footer>xkdns50@naver.com</footer>
</html>
