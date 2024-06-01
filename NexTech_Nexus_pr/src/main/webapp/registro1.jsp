<%@page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.productos.seguridad.*, com.productos.negocio.*"%>
<%
    // Obt�n par�metros del formulario
    String str_id = request.getParameter("id");
    String str_categoria = request.getParameter("cmbCategoria");
    String nombre = request.getParameter("nombre");
    String str_cant = request.getParameter("cantidad");
    String str_precio = request.getParameter("precio");

    // Validaci�n de par�metros
    if (str_id == null || str_categoria == null || nombre == null || str_cant == null || str_precio == null ||
        str_id.isEmpty() || str_categoria.isEmpty() || nombre.isEmpty() || str_cant.isEmpty() || str_precio.isEmpty()) {
        out.print("Error: Todos los campos son obligatorios.");
        return;
    }

    try {
        // Convertir par�metros a tipos adecuados
        int id = Integer.parseInt(str_id);
        int cat = Integer.parseInt(str_categoria);
        int cantidad = Integer.parseInt(str_cant);
        double precio = Double.parseDouble(str_precio);
        
        // Instancia del producto
        Producto prod = new Producto();

        // Inserci�n del producto en la base de datos
        String resultado = prod.ingresarProducto(id, cat, nombre, cantidad, precio, "");

        // Mostrar el resultado de la inserci�n
        out.print(resultado);
    } catch (NumberFormatException e) {
        out.print("Error: Formato incorrecto en los campos num�ricos.");
    }
%>