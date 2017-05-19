<%@ page pageEncoding="UTF-8" %>
<%@ page import="java.sql.*"  %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %>
<%@ page import="metier.*" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
		<title>Ma page</title>
		<style>
			.redbann{
				background-color: red;
				color:#fff;
				text-align:center;
			}

			.successbann{
				background-color: grey;
				color:#0f0;
				text-align:center;
			}
			.unsuccessbann{
				background-color: grey;
				color:#f00;
				text-align:center;
			}

		</style>
	</head>
	<body>

<%
//cette jsp correspond à servlet/Commander-> Commander.java
	Panier myPanier=null;

  	if(session.getAttribute("pan")!=null){
		myPanier=(Panier)session.getAttribute("pan");
		myPanier.sauver();
		session.invalidate();
		response.sendRedirect("index.jsp?command=ok");
	}else{
		response.sendRedirect("index.jsp?command=no");
	}
%>
	</body>

</html>
