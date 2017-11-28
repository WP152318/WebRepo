<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="org.dimigo.vo.UserVO" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${ pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>글 등록하기</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
<link rel="stylesheet" href="${ contextPath }/css/footer.css">
<style>
div.container {
  padding-top: 30px;
  padding-bottom: 20px;
}
</style>

<script>
function menu_over(e) {
	e.setAttribute("class", "nav-item active");
}
function menu_out(e) {
	e.setAttribute("class", "nav-item");
}
</script>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="${ contextPath }/jsp/home.jsp">CarWithMe</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
  	<%@ include file="menu.jsp" %>
  	
    <%-- 세션에 사용자 정보가 있는 경우 --%>
	    <ul class="navbar-nav flex-row ml-md-auto d-none d-md-flex">
	    <li class="nav-item dropdown">
	      <a class="nav-item nav-link dropdown-toggle mr-md-2" href="#" id="bd-versions" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	    	${ user.name }님
	      </a>
	      <div class="dropdown-menu dropdown-menu-right" aria-labelledby="bd-versions">
	      	<form action="${ contextPath }/logout.do" method="post">
	      		<button type="submit" class="dropdown-item">Sign out</button>
	      	</form>
	       	<div class="dropdown-divider"></div>
	        <button type="button" class="dropdown-item">Action1</button>
	        <button type="button" class="dropdown-item">Action2</button>
	      </div>
	    </li>
	    </ul>
  </div>
</nav>
<div class="container">
<form id="registrationForm" class="form-registration" action="${ contextPath }/registration.do" method="post">
    <h2 class="form-registration-heading">게시물 등록하기</h2>

<br>
    <label for="inputTitle" class="sr-only">제목</label>
        제목<input type="text" name="title" id="inputtitle" value="${ param.title }" class="form-control" placeholder="Title" required autofocus>
	<br>
    <label for="inputText" class="sr-only">내용</label>
         내용<input type="text" name="text" id="inputText" value="${ param.text }" class="form-control" placeholder="Text" required>
	<br>
	<label for="inputDate" class="sr-only">날짜</label>
    원하는 날짜<input type="text" name="date" id="inputDate" value="${ param.date }" class="form-control" placeholder="20**-**-** ~ 20**-**-**" required>
	<br>
	<label for="inputDestination" class="sr-only">목적지</label>
    목적지<input type="text" name="destination" id="inputDestination" value="${ param.destination }" class="form-control" placeholder="Destination" required>
    <br>
    <input type="radio" name="chk_info" value="regular" required>정규
	<input type="radio" name="chk_info" value="irregular" required>비정규
    <br>
    <br>
    <button class="btn btn-lg btn-primary btn-block" type="submit">Registration</button>
  </form>
</div>

<%@ include file="footer.jsp" %>
<%@ include file="modal.jsp" %>


<!-- Bootstrap js -->
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>

<c:if test="${ error != null }">
<script>
		<%-- 게시물 등록이 실패한 경우 처리 추가 --%>
		var myModal = $('#myModal');
		myModal.find('.modal-title').text('Registration Error');
		myModal.find('.modal-body').text('${ error }');
		myModal.modal();
</script>
</c:if>

</body>
</html>