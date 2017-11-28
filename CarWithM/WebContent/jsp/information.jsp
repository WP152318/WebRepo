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
<title>CarWithMe란?</title>
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
<a href="#carwithme">[CarWithMe란?]</a> <a href="#motivate">[제작 동기]</a> <a href="#way">[사용 방법]</a>
</div>
<div class="container" id="carwithme">
<h1>CarWithMe란?</h1>
<p>
"매일, 매주, 매달 가야하는 곳인데, 버스나 지하철은 복잡하고, 택시는 너무 비싸고 어떡하지?"라는 고민해보신적 있으신가요?<br>
매번 내기에는 부담스러운 택시비... 그렇다고 불편한 다른 대중교통...<br>
밤에 혼자 택시 타기는 무섭고... 처음 가보는 곳, 혼자가기엔 두려운데... <br>
처음 오게 되어서 근처 친구를 사귀고 싶은데... <br>
이런 당신이 함께 택시를 탈 사람들을 만날수 있는 곳!! <br>
바로 이곳!! CarWithMe입니다!!<br>
</p>
</div>
<div class="container" id="motivate">
<h1>제작 동기</h1>
<p>
저는 전교생 기숙사 생활을 하는 학교에 다니고 있습니다.<br>
집에 갈 때 버스를 타기에는 짐이 너무 많아 힘들고, 지하철을 타기에는 지하철 역까지 나가는데 시간이 걸려<br>
선택할 수 있는 교통편은 오로지 택시뿐!! <br>
하지만 전체 학생이 집에 가는 날이면 항상 학교 앞은 택시 잡기는 그야말로 하늘의 별따기!! <br>
많은 학생들이 가는 터미널, 지하철 역 등으로 가는 학생들은 최소 2명에서 4명까지 모여 돈을 나눠 내며 택시를 타고는 합니다. <br>
하지만 그 친구들끼리 항상 함께 가는 것은 아니기 때문에 새로운 친구를 찾아야 할 때가 생깁니다. <br>
친하든, 친하지 않든, 함께 가는 사람을 만나고 싶어하지만, 부끄러움을 많이 타거나, 부담스러워하는 사람들을 위해 <br>
이 CarWithMe를 제작하게 되었습니다.
</p>
</div>
<div class="container" id="way">
<h1>사용 방법</h1>
<p>
사용 방법은 굉장히 간단합니다. <br>
1. 회원가입을 한다. <br>
2. 로그인을 한다. <br>
3. 게시물을 남긴다.(사람을 모집해야하기 때문에 원하는 날짜보다 일찍! 작성해 주세요) <br>
4. 사람들이 댓글을 달때까지 기다리면 끝~ <br>
<br>
앗! 혹시 원하는 내용의 게시물이 이미 존재한다고요? 그렇다면 <br>
1. 댓글을 남긴다. <br>
2. 만나서 함께 가면 끝~ 
</p>
</div>

<%@ include file="footer.jsp" %>

<!-- Bootstrap js -->
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
</body>
</html>