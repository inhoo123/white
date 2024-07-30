<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set value="${pageContext.request.contextPath}" var="rootPath" />
<link href="${rootPath}/static/css/main.css" rel="stylesheet" />

<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<h2>오늘은 내 생의 가장 젊은날</h2>
<body>
	<div class="container">
		<div class="list">
			<%@ include file="/WEB-INF/views/list.jsp"%>
		</div>
		<div class="input" id="inputForm">
			<%@ include file="/WEB-INF/views/input.jsp"%>
		</div>
	</div>
	<button onclick="showInputForm()">작성</button>
</body>

<footer>xkdns50@naver.com</footer>

<script>
	function showInputForm() {
		var inputForm = document.getElementById("inputForm");
		inputForm.classList.toggle("show");
	}
</script>
