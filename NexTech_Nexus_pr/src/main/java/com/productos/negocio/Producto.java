package com.productos.negocio;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

import com.productos.datos.*;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.FileInputStream;

public class Producto {
	private int id_pr;
	private int id_cat;
	private String nombre;
	private int cantidad_pr;
	private double precio_pr;
	private double precio;
	private int id;
	private String aux;
	
	 public Producto(int id, String nombre, double precio) {
	        this.id = id;
	        this.nombre = nombre;
	        this.precio = precio;
	    }

	public String getAux() {
		return aux;
	}

	public void setAux(String aux) {
		this.aux = aux;
	}
	public double getPrecio() {
		return precio;
	}

	public void setPrecio(double precio) {
		this.precio = precio;
	}

	public Producto() {
		// TODO Auto-generated constructor stub
	}

	    // Método para consultar todos los productos con información específica
	public String consultarTodo()
	{
		String sql="SELECT * FROM tb_producto ORDER BY id_pr";
		Conexion con=new Conexion();
		String tabla="<table border=5 bgcolor=white valign=center caption=tabladeautos style=\"font-size: 20px; border-collapse: collapse;width: 50%;\"><th>ID</th><th>Producto</th><th>Cantidad</th><th>Precio</th><th>Modificar</th><th>Eliminar</th>";
		String texto = "<p style=\"color: red; font-size: 20px;\">Este es un texto con estilo.</p>";
		ResultSet rs=null;
		rs=con.Consulta(sql);
		try {
			while(rs.next())
			{
				tabla+="<tr><td>"+rs.getInt(1)+"</td>"
						+ "<td>"+rs.getString(3)+"</td>"
						+ "<td>"+rs.getInt(4)+"</td>"
						+ "<td>"+rs.getDouble(5)+"</td>"
						+ "<td> <a href= BuscarProducto.jsp?cod=" + rs.getInt(1) + "><pre style=\"text-align:center\">Modificar</pre></a></td>"
						+ "<td> <a href= EliminarProducto.jsp?cod=" + rs.getInt(1) + " \"><pre style=\"textalign: center\">Eliminar</pre></a></td>"
						+ "</td></tr>";
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.print(e.getMessage());
		}
		tabla+="</table>";
		return tabla;
	}

	

	
	public boolean vrfclave(String clave,String claver,String claven,String clavenr) {
		boolean f=false;
		String sql="SELECT clave_us FROM tb_usuario where clave_us='"+clave+"'";
		Conexion con=new Conexion();
		ResultSet rs=null;
		rs=con.Consulta(sql);
		try {
			while(rs.next()) {
				try {
					if(clave.equals(claver)&& clave.equals(rs.getString(1)) ) {
						if(claven.equals(clavenr)) {
							String sql1="update tb_usuario set clave_us='"+claven+"' where clave_us='"+clave+"'";
							Conexion con1=new Conexion();
							con1.Ejecutar(sql1);
							f=true;
						}else {
							f=false;
						}
					}else {
						f=false;
					}
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return f;
		
	}
	public String aoferta()
	{
		String sql="SELECT * FROM tb_producto where estado='OFERTA'";
		Conexion con=new Conexion();
		String tabla="<table border=5 bgcolor=white valign=center caption=tabladeautos style=\"font-size: 20px; border-collapse: collapse;width: 50%;\"><th>ID</th><th>Producto</th><th>Cantidad</th><th>Precio</th><th>Precio OFERTA!!</th>";
		String texto = "<p style=\"color: red; font-size: 20px;\">Este es un texto con estilo.</p>";
		ResultSet rs=null;
		rs=con.Consulta(sql);
		try {
			while(rs.next())
			{
				tabla+="<tr><td>"+rs.getInt(1)+"</td>"
						+ "<td>"+rs.getString(3)+"</td>"
						+ "<td>"+rs.getInt(4)+"</td>"
						+ "<td>"+rs.getDouble(5)+"</td>"
						+ "<td>"+rs.getDouble(8)+"</td>"
						+ "</td></tr>";
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.print(e.getMessage());
		}
		tabla+="</table>";
		return tabla;
	}

	public String consultarcategoria(int cat)
	{
		String sql="SELECT * FROM tb_producto where id_cat = "+cat;
		Conexion con=new Conexion();
		String tabla="<table border=5 bgcolor=white valign=center caption=tabladeautos style=\"font-size: 20px; border-collapse: collapse;width: 50%;\"><th>ID</th><th>Producto</th><th>Cantidad</th><th>Precio</th>";
		ResultSet rs=null;
		rs=con.Consulta(sql);
		try {
			while(rs.next())
			{
				tabla+="<tr><td>"+rs.getInt(1)+"</td>"
						+ "<td>"+rs.getString(3)+"</td>"
						+ "<td>"+rs.getInt(4)+"</td>"
						+ "<td>"+rs.getDouble(5)+"</td>"
						+ "</td></tr>";
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.print(e.getMessage());
		}
		tabla+="</table>";
		return tabla;
	}
	public String mostrarCategoria()
	{
	String combo="<select name=cmbCategoria>";
	String sql="SELECT * FROM tb_categoria";
	ResultSet rs=null;
	Conexion con=new Conexion();
	try
	{
	rs=con.Consulta(sql);
	while(rs.next())
	{
	combo+="<option value="+rs.getInt(1)+ ">"+rs.getString(2)+"</option>";
	}
	combo+="</select>";
	}
	catch(SQLException e)
	{
	System.out.print(e.getMessage());
	}
	return combo;
	}
	

	 public String ingresarProducto(int id, int cat, String nombre, int cantidad, double precio, String fileFoto) {
	        Conexion con = new Conexion();
	        String sql = "INSERT INTO tb_producto (id_pr, id_cat, nombre_pr, cantidad_pr, precio_pr) VALUES (?, ?, ?, ?, ?)";
	        
	        try (Connection connection = con.getConexion();
	             PreparedStatement pstmt = connection.prepareStatement(sql)) {
	            
	            pstmt.setInt(1, id);
	            pstmt.setInt(2, cat);
	            pstmt.setString(3, nombre);
	            pstmt.setInt(4, cantidad);
	            pstmt.setDouble(5, precio);
	            
	            int filasAfectadas = pstmt.executeUpdate();
	            if (filasAfectadas > 0) {
	                return "Producto ingresado exitosamente.";
	            } else {
	                return "Error al ingresar el producto.";
	            }
	        } catch (SQLException e) {
	            return "Error de SQL: " + e.getMessage();
	        }
	    }
	




	public void ConsulEditarProductos(int cod) {
		Conexion obj= new Conexion();
		ResultSet rs=null;

		String sql ="SELECT id_pr,id_cat,nombre_pr,precio_pr,cantidad_pr FROM tb_producto where id_pr="+cod+";";
		try {
			rs=obj.Consulta(sql);
			while(rs.next()) {
				setId_pr(rs.getInt(1));
				setId_cat(rs.getInt(2));
				setNombre(rs.getString(3));
				setPrecio_pr(rs.getFloat(4));
				setCantidad_pr(rs.getInt(5));
			}
		}catch(Exception e) {
		}
	}

	public boolean ModificarProducto(int cod,String nombre,float pre,int can) {
		boolean agregado=false;
		Conexion obj=new Conexion();
		String sql="UPDATE tb_producto set nombre_pr='"+nombre+"',precio_pr="+pre+","
				+ "cantidad_pr="+can+" WHERE id_pr="+cod+";";
		try {
			obj.Ejecutar(sql);
			agregado=true;

		}catch (Exception e) {
			agregado=false;
		}
		return agregado;
	}
	
	public void poferta(int cod) {
		Conexion obj=new Conexion();
		String sql="UPDATE tb_producto set precio_of="+sprec(cod)*0.4+
				",estado='OFERTA' WHERE id_pr="+cod+";";
		try {
			obj.Ejecutar(sql);
			System.out.println(sprec(cod)*0.4);
			

		}catch (Exception e) {
			
		}
	}
	
	public double sprec(int cod) {
		double a=0;
		ResultSet rs=null;
		Conexion obj=new Conexion();
		String sql="select precio_pr from tb_producto where id_pr="+cod+";";
		try {
			rs=obj.Consulta(sql);
			while(rs.next()) {
				a=rs.getDouble(1);
			}

		}catch (Exception e) {
			
		}
		return a;
	}



	public boolean EliminarProducto(int cod) {
		boolean f=false;
		Conexion con=new Conexion();
		String sql="delete from tb_producto where id_pr="+cod+";";
		try {
			con.Ejecutar(sql);
			f=true;
		}catch (Exception e) {
			f=false;
		}
		return f;
	}

	public int getId_pr() {
		return id_pr;
	}

	public void setId_pr(int id_pr) {
		this.id_pr = id_pr;
	}

	public int getId_cat() {
		return id_cat;
	}

	public void setId_cat(int id_cat) {
		this.id_cat = id_cat;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public int getCantidad_pr() {
		return cantidad_pr;
	}

	public void setCantidad_pr(int cantidad_pr) {
		this.cantidad_pr = cantidad_pr;
	}

	public double getPrecio_pr() {
		return precio_pr;
	}

	public void setPrecio_pr(double precio_pr) {
		this.precio_pr = precio_pr;
	}
	public String consultarProductos()
	{
	String sql="SELECT * FROM tb_producto GROUP BY id_pr";
	Conexion con=new Conexion();
	String tabla="<table class=table table-striped><th>Producto</th><th>Añadir al carrito</th>";
	ResultSet rs=null;
	rs=con.Consulta(sql);
	try {
	while(rs.next())
	{
	tabla+="<tr><td>"+rs.getString(3)+"</td>"
	+ "<td><input type=checkbox name=productosvalue="+rs.getInt(1)+"</td>"
	+ "</tr>";
	}
	} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
	System.out.print(e.getMessage());
	}
	tabla+="</table>";
	return tabla;
	}
	 public double getPrecioById(String id) {
	        String sql = "SELECT precio_pr FROM tb_producto WHERE id_pr = ?";
	        Conexion con = new Conexion();
	        double precio = 0;
	        
	        try (Connection connection = con.getConexion();
	             PreparedStatement ps = connection.prepareStatement(sql)) {
	            ps.setString(1, id);
	            ResultSet rs = ps.executeQuery();
	            
	            if (rs.next()) {
	                precio = rs.getDouble("precio_pr");
	            }
	            rs.close();
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	        return precio;
	    }
	

	public Producto getProductoById(String id) {
        String sql = "SELECT * FROM tb_producto WHERE id_pr = ?";
        Conexion con = new Conexion();
        Producto producto = null;
        
        try (Connection connection = con.getConexion();
             PreparedStatement ps = connection.prepareStatement(sql)) {
            ps.setString(1, id);
            ResultSet rs = ps.executeQuery();
            
            if (rs.next()) {
                producto = new Producto();
                producto.setId_pr(rs.getInt("id_pr"));
                producto.setId_cat(rs.getInt("id_cat"));
                producto.setNombre(rs.getString("nombre_pr"));
                producto.setCantidad_pr(rs.getInt("cantidad_pr"));
                producto.setPrecio_pr(rs.getDouble("precio_pr"));
                // Rellena las demás propiedades según sea necesario.
            }
            rs.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return producto;
    }
	
	// Obtener todos los productos disponibles
    public static ArrayList<Producto> obtenerTodosLosProductos() {
        ArrayList<Producto> productos = new ArrayList<>();
        String sql = "SELECT * FROM tb_producto";
        Conexion con = new Conexion();

        try (Connection connection = con.getConexion();
             PreparedStatement ps = connection.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {

            while (rs.next()) {
                int id = rs.getInt("id_pr");
                String nombre = rs.getString("nombre_pr");
                double precio = rs.getDouble("precio_pr");
                productos.add(new Producto(id, nombre, precio));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return productos;
    }

    // Obtener un producto por su ID
    public static Producto obtenerProductoPorId(String idProducto) {
        Producto producto = null;
        String sql = "SELECT * FROM tb_producto WHERE id_pr = ?";
        Conexion con = new Conexion();

        try (Connection connection = con.getConexion();
             PreparedStatement ps = connection.prepareStatement(sql)) {

            ps.setString(1, idProducto);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                int id = rs.getInt("id_pr");
                String nombre = rs.getString("nombre_pr");
                double precio = rs.getDouble("precio_pr");
                producto = new Producto(id, nombre, precio);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return producto;
    }

    // Getters
    public int getId() {
        return id;
    }
    
    public String verProductos()
	{
		String sql="SELECT * FROM tb_producto ORDER BY id_pr";
		Conexion con=new Conexion();
		String tabla="<table class='table'><th>ID</th><th>Producto</th><th>Cantidad</th><th>Precio</th>";
		ResultSet rs=null;
		rs=con.Consulta(sql);
		if (rs == null) {
			return "Error: la consulta SQL no devolvió ningún resultado.";
		}
		try {
			while(rs.next())
			{
				tabla+="<tr><td>"+rs.getInt(1)+"</td>"
						+ "<td>"+rs.getString(3)+"</td>"
						+ "<td>"+rs.getInt(4)+"</td>"
						+ "<td>"+rs.getDouble(5)+"</td>"
						+ "</td></tr>";
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.print(e.getMessage());
		}
		tabla+="</table>";
		return tabla;
	}
    public String buscarProductoCategoria(int cat)
	{
		String sentencia="SELECT nombre_pr, precio_pr FROM tb_producto WHERE id_cat="+cat;
		Conexion con=new Conexion();
		ResultSet rs=null;
		String resultado="<table class=\"table\"><th>Producto</th><th>Precio</th>";
		try
		{
			rs=con.Consulta(sentencia);
			while(rs.next())
			{
				resultado+="<tr><td>"+ rs.getString(1)+"</td>"
						+ "<td>"+rs.getDouble(2)+"</td></tr>";
			}
			resultado+="</table>";
		}
		catch(SQLException e)
		{
			System.out.print(e.getMessage());
		}
		return resultado;
	}
    public List<Integer> suma(List<String> l) {
		if(l==null || l.isEmpty()){
			System.out.println("La lista lsuma está vacía");
			 return new ArrayList<>();
		}

		String sql="SELECT id_pr, precio_pr FROM tb_producto order by id_pr asc;";
		Conexion con=new Conexion();
		ResultSet rs=null;
		List<String> id=new ArrayList<>();
		List<Integer> resultado=new ArrayList<>();
		int count = 0;
		
			
		rs=con.Consulta(sql);
		try {
			while(rs.next())
			{
				id.add(String.valueOf(rs.getInt(1)));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.print(e.getMessage());
		}
		
		if(id.isEmpty()){
			System.out.println("La lista l está vacía");
			 return new ArrayList<>();
		}
			
		for(String a:id) {
			count = 0;
			for(String b:l) {
				if(a.equals(b)) {
					count++;
				}
			}  
			System.out.println("El número " + a + " aparece " + count + " veces en la lista l.");
			resultado.add(count);
		}
		
		System.out.println("sumaaa");
		System.out.println(id);
		System.out.println(l);
		System.out.println(resultado);
		return resultado;
	}
    public List<Double>  precio(List<Integer> l) {
		if(l==null || l.isEmpty()){
			System.out.println("La lista lprecio está vacía");
			 return new ArrayList<>();
		}

		String sql="SELECT id_pr, precio_pr FROM tb_producto order by id_pr asc;";
		Conexion con=new Conexion();
		ResultSet rs=null;
		List<Double> precio=new ArrayList<>();
		List<Double> preciofinal=new ArrayList<>();
		List<Double> preciof=new ArrayList<>();
		rs=con.Consulta(sql);
		try {
			while(rs.next())
			{
				precio.add(rs.getDouble(2));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.print(e.getMessage());
		}
		if(precio.isEmpty() || (l.size() != precio.size())){
			System.out.println("La lista l está vacía o listas no se pueden multiplicar");
			 return new ArrayList<>();
		}

		for(int i = 0; i < precio.size(); i++) {
			 preciofinal.add(l.get(i) * precio.get(i));
		 }
		
		for(Double a:preciofinal) {
			if(a!= 0.0) {
				preciof.add(a);
			}
		}
		System.out.println(preciofinal);
		System.out.println(preciof);
		return preciof;
	}
    public double precioTotal(List<Double> pp) {
		double total = 0.0;
		for(Double x:pp) {
			total += x;
		}
		return total;
	}
    public List<String> elegidos(List<String> lista) {
		if(lista==null || lista.isEmpty()) {
			System.out.println("Lista inicial vacia");
			 return new ArrayList<>();
		}
		Set<String> set = lista.stream().collect(Collectors.toSet());
		List<String> productos = new ArrayList<>(set);
		System.out.println(productos);
		return productos;	
	}
   

	public void setId(int id) {
		this.id = id;
	}

}




