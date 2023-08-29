<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
request.setCharacterEncoding("UTF-8");
%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<c:set var="result" value="${param.result}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="http://code.jquery.com/jquery-latest.js"></script>
</head>

<style>
body {
	margin: 0;
	min-height: 100vh;
	background: url(${contextPath}/resources/image/dsm7_01.jpg) no-repeat
		center fixed;
	background-size: cover;
}

.tab-panel {
	position: absolute;
	top: 23.2%;
	right: 19.2%;
	width: 400px;
	min-height: 500px;
	padding: 0px 40px 22px 40px;
	background: #fff;
	box-shadow: 0 10px 20px 0 rgba(0, 0, 0, .2);
	box-sizing: border-box;
	border-radius: 6px;
	float: right;
	align: center;
}

.login-title {
	font-family: Verdana, Arial, sans-serif;
	display: block;
	line-height: 32px;
	font-size: 22px;
	color: #057feb;
	width: 100%;
	position: relative;
	text-overflow: ellipsis;
	white-space: nowrap;
	font-weight: bold;
	padding: 11px 0 25px 0;
}

.tab-label.active {
	padding: 0px 8px;
	font-size: 13px;
	line-height: 48px;
	height: 48px;
	display: inline-block;
	border-top: 3px solid #057feb;
	width: 54px;
}

.tab-panel-title {
	font-size: 18px;
	color: #414b55;
	line-height: 28px;
	margin-bottom: 22px;
	font-family: Verdana, Arial, sans-serif;
	font-weight: bold;
	padding: 10px 0 20px 0;
}
.login-form {
    width: 300px;
    background-color: #EEEFF1;
    margin-right: auto;
    margin-left: auto;
    margin-top: 50px;
    padding: 20px;
    text-align: center;
    border: none;
}
 
.text-field {
      font-size: 14px;
      padding: 10px;
      border: none;
      width: 260px;
      margin-bottom: 10px;
}
 
.submit-btn {
  font-size: 14px;
  border: none;
  padding: 10px;
  width: 280px;
  background-color: #057feb;
  margin-bottom: 30px;
  color: white;
}
 
.links {
    text-indent : 65px;
}
 
.links a {
  font-size: 12px;
  color: #9B9B9B;
  
}
</style>
<c:choose>
	<c:when test="${result=='loginFailed' }">
	  <script>
	    window.onload=function(){
	      alert("아이디나 비밀번호가 틀립니다. 예시대로 입력해보세요.");
	    }
	  </script>
	</c:when>
</c:choose>  

<body>
	<form action="${contextPath}/member/login.do" method="post">
		<div class="tab-panel">
			<span data-v-c58ee6e4="" class="tab-label active"> </span> <span
				class="login-title">Synology-DS720</span>
			<div class="tab-panel-title">로그인</div>
			<input type="text" name="id" class="text-field" 	 placeholder="아이디		ex> a123">
			<input type="password" name="pwd" class="text-field" placeholder="비밀번호		ex> 123"> 
			<input type="submit" value="로그인" class="submit-btn">
			<div class="links">
				<a href="#">비밀번호를 잊어버리셨나요?</a>
			</div>
		</div>
	</form>
</body>
</html>