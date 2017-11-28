<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 절대경로 설정하기 -->
<c:set var="contextPath" value="${ pageContext.request.contextPath }"/>

<ul class="navbar-nav mr-auto">
	<c:if test="${ !empty user }">
      <li class="nav-item" onmouseover="menu_over(this)" onmouseout="menu_out(this)">
        <a class="nav-link" href="${ contextPath }/jsp/information.jsp" >CarWithMe란?<span class="sr-only">(current)</span></a>
      </li>
    </c:if>
    <c:if test="${ empty user }">
      <li class="nav-item" onmouseover="menu_over(this)" onmouseout="menu_out(this)">
        <a class="nav-link" href="${ contextPath }/login.do" >CarWithMe란?<span class="sr-only">(current)</span></a>
      </li>
    </c:if>  
    <c:if test="${ !empty user }">
      <li class="nav-item" onmouseover="menu_over(this)" onmouseout="menu_out(this)">
        <a class="nav-link" href="${ contextPath }/list.do">게시판</a>
      </li>
      </c:if>
      <c:if test="${ empty user }">
      <li class="nav-item" onmouseover="menu_over(this)" onmouseout="menu_out(this)">
        <a class="nav-link" href="${ contextPath }/login.do">게시판</a>
      </li>
      </c:if>
      <c:if test="${ !empty user }">
      <li class="nav-item" onmouseover="menu_over(this)" onmouseout="menu_out(this)">
        <a class="nav-link" href="${ contextPath }/jsp/mylist.jsp">내 글</a>
      </li>
      </c:if>
      <c:if test="${ empty user }">
      <li class="nav-item" onmouseover="menu_over(this)" onmouseout="menu_out(this)">
        <a class="nav-link" href="${ contextPath }/login.do">내 글</a>
      </li>
      </c:if>
      <c:if test="${ !empty user }">
      <li class="nav-item" onmouseover="menu_over(this)" onmouseout="menu_out(this)">
        <a class="nav-link" href="${ contextPath }/jsp/myinfo.jsp">내 정보</a>
      </li>
      </c:if>
      <c:if test="${ empty user }">
      <li class="nav-item" onmouseover="menu_over(this)" onmouseout="menu_out(this)">
        <a class="nav-link" href="${ contextPath }/jsp/login.jsp">계정 찾기</a>
      </li>
      </c:if>
    </ul>