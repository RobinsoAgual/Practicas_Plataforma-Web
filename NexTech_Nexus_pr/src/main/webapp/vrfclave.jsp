<%@page import="org.apache.catalina.ha.backend.Sender"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="com.productos.negocio.*" session="true" %>
    
    <%
    String clave=request.getParameter("clave");
    String claver=request.getParameter("claver");
    String claven=request.getParameter("claven");
    String clavenr=request.getParameter("clavenr");
    Producto p=new Producto();
    if(p.vrfclave(clave,claver,claven,clavenr)){
    	response.sendRedirect("cerrarSesion.jsp");
    }else{
    	response.sendRedirect("cambioClave.jsp");
    }
    
    
    out.print(session.getAttribute("usuario"));  
    %>
