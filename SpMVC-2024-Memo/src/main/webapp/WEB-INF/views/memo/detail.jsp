
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set value="${pageContext.request.contextPath}" var="rootPath" />
<h2>글 상세정보</h2>

글번호${MEMO.m_seq} 작성자 ${MEMO.m_author} 작성일${MEMO.m_date}
<a href="${rootPath}/update?m_seq=${m_seq}">수정하러가기</a>