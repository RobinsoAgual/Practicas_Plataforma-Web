<%@page import="com.productos.negocio.Producto"%>
<%
int cod=Integer.parseInt(request.getParameter("cod"));
Producto cp =new Producto();
boolean f=cp.EliminarProducto(cod);
if(f==true){
	response.sendRedirect("busqueda.jsp");
}
%>