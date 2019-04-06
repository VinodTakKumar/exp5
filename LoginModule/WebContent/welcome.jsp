<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%
		response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
		response.setHeader("pragma", "no-cache");
		response.setHeader("Expires", "0");
		if (session.getAttribute("k") == null) {
			response.sendRedirect("login.jsp");
		}
	%>


	<h1>
		<b>Welcome...</b>
	</h1>
	${k}
	<br>
	<a href="videos.jsp"> Videos Here</a>
	<br>
	<br>

	<form action="Logout" method="post">
		<input type="submit" value="Logout">
	</form>

</body>
</html>