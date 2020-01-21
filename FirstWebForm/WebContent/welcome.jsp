<%@page import="java.util.Map"%>
<%@page import="java.util.Set"%>
<%--  <%@page import="com.sun.javafx.collections.MappingChange.Map"%> --%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New Page</title>
</head>
<body>
	<form action="welcome.jsp">
		<input type="Text" name="table">

		<table>
			<!-- <tr>
				<td>2</td>
				<td>X</td>
				<td>1</td>
				<td>=</td>
				<td>2</td>
			</tr> 
			 -->

			<%
				String t = request.getParameter("table");
				if (t != null) 
				 {
					int table = Integer.parseInt(t);

					for (int i = 1; i <= 10; i++) 
					{
			%>
			<tr>
				<td><%=table%></td>
				<td>X</td>
				<td><%=i%></td>
				<td>=</td>
				<td><%=(i * table)%></td>
			</tr>
			<%
					}
				}
			%>

		</table>
		<input type="Submit" value="Generate">

	</form>

	<%
		Map<String, String> headers = (Map<String, String>) request.getAttribute("headers");

		Set<String> keySet = headers.keySet();
	%>
	<ol>
		<%
			if (headers != null) 
			{

				for (String key : keySet) 
				{
					%><li><%=key%> |<%=headers.get(key)%></li>
					<%
				}
			}
		%>
	</ol>
</body>
</html>