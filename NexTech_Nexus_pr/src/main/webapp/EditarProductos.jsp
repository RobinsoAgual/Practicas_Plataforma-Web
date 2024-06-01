<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="true" import="com.productos.negocio.*"%>

<%
	int cod=Integer.parseInt(request.getParameter("editarcod"));
	String nombre=request.getParameter("editardesc");
	float pre=Float.parseFloat(request.getParameter("editarprec"));
	int can =Integer.parseInt(request.getParameter("editarcant"));
	
	Producto mp= new Producto();
	boolean actualizado=mp.ModificarProducto(cod, nombre, pre, can);
	if(actualizado==true){
		
		response.sendRedirect("busqueda.jsp");
	}else{
		out.print("ALGO SALIO MAL");
	}
	
	
%>

	
	
	
	