<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.List, java.sql.*, se.minoris.y2013.spaceship.*" %>

<%
	Class.forName("com.mysql.jdbc.Driver").newInstance();  
	List<SpaceShip> spaceships = SpaceShipFactory.getAllSpaceShips();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<ul>
<%
for ( int i = 0; i < spaceships.size() ; i++ ) { %>
	<li>
		<%= spaceships.get(i).getName() %>
	</li>
<% } %>
</ul>

<%= 1 + 1 %>

<%
		SpaceShip newShip = new SpaceShip();
		newShip.setName("Enterprise");
		newShip.setWeight(200000300.0);
		 %>
		 <%=newShip.getName() %>	
</body>
</html>