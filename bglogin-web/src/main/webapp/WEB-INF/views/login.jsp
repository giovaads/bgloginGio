<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
	<title>Il buongiorno si vede dal Logine</title>
	<spring:url value="/resources/css/login.css" var="loginCss" />
	<link href="${loginCss}" rel="stylesheet" />
</head>

<body onload='document.loginForm.username.focus();'>
	<div id="divLogin">
		<h2>Login</h2>

		<c:if test="${not empty error}">
			<div class="error">${error}</div>
		</c:if>
		<c:if test="${not empty msg}">
			<div class="msg">${msg}</div>
		</c:if>

		<form name='loginForm' action="<c:url value='/login' />" method='POST'>
		    <table>
				<tr>
					<td>Username</td>
					<td><input type='text' name='username' value=''></td>
				</tr>
				<tr>
					<td>Password</td>
					<td><input type='password' name='password' /></td>
				</tr>
				<tr>
					<td colspan='2' style="height: 50px"></td>
				</tr>
				<tr>
			        <td colspan='2'>
                    	<input width="80%" name="submit" type="submit" value="Validate"/>
                    </td>
				</tr>
		   </table>
		   
		   <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
		</form>
	</div>
</body>
</html>