<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.List, java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<ul>
<%
List<String> listaElementos=(List<String>)session.getAttribute("carrito");
if(listaElementos == null)
{
listaElementos =new ArrayList<String>();
session.setAttribute("carrito", listaElementos);
}
String[] elementos=request.getParameterValues("productos");
int i=0;
if (elementos!=null)
{
while(i<elementos.length)
{
listaElementos.add(elementos[i]);
i++;
}
}
for (String tmp : listaElementos)
{
out.println("<li>" + tmp + "</li>");
}
%>
</ul>


</body>
</html>