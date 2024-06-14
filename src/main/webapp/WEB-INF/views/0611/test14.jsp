<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<jsp:include page="/WEB-INF/views/include/bs4.jsp" />
	<script>
		if('${msg}' != '') {
			alert("${msg}");
		}
		function fCheck() {
			let mid = document.getElementById("mid").value;
			let pwd = document.getElementById("pwd").value;
			location.href="${ctp}/0611/test14/"+mid+"-"+pwd;	//path variable 방식은 값 사이에 중간 구분자로 여러개 넣을수 있음 '/,-,A,_____,등등' 대신 컨트롤러에서 
			//받을 때도 그 구분자 똑같이 써줘야댐 
			
			/* location.href="${ctp}/0611/"+mid+"/test14/"+pwd;  */ //이런식으로 경로 사이에 집어넣어도 댐 자기맘대로
		}
	</script>
</head>
<body>
<p><br/></p>
<div class="container">
	<h4>know잼</h4>
	<form>
		<table>
			<tr>
				<th>아이디</th>
				<td><input type="text" name="mid" id="mid"  value="${mid}" class="form-control"/></td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td><input type="password" name="pwd" id="pwd" value="${pwd}" class="form-control"/></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="button" onclick="fCheck()" value="회원가입"/>
					<input type="button" value="돌아가기" onclick="location.href='${ctp}/0611/index'"/>
				</td>
			</tr>
		</table>
	</form>
</div>
<p><br/></p>
</body>
</html>