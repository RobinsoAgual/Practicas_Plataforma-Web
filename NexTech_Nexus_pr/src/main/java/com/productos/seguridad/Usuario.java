package com.productos.seguridad;

import com.productos.datos.Conexion;
import com.productos.datos.*;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class Usuario {
	
	public String Login;
	public String Clave;
	public int Perfil;
	public String Nombre;
	private String nombre;
	private String cedula;
	private String correo;
	private String clave;
	private int estado;
	private Integer id_perfil;
	private String contraseña;
	private int id_usuario;
	
	private Conexion conexion;

    public Usuario(Conexion conexion) {
        this.conexion = conexion;
    }
    public int getId_usuario() {
		return id_usuario;
	}

	public void setId_usuario(int id_usuario) {
		this.id_usuario = id_usuario;
	}
	public String getLogin() {
		return Login;
	}

	public void setLogin(String login) {
		Login = login;
	}

	public String getClave() {
		return Clave;
	}

	public void setClave(String clave) {
		Clave = clave;
	}

	public int getPerfil() {
		return Perfil;
	}

	public void setPerfil(int perfil) {
		Perfil = perfil;
	}

	public String getNombre() {
		return Nombre;
	}

	public void setNombre(String nombre) {
		Nombre = nombre;
	}

	public Usuario() {
		// TODO Auto-generated constructor stub
	}
	

    public void setConexion(Conexion conexion) {
        this.conexion = conexion;
    }

    public boolean verificarUsuario(String nombre_us, String clave) {
        boolean respuesta = false;
        String sql = "SELECT * FROM tb_usuari WHERE nombre_us = ? AND contraseña = ?";
        try (Connection con = conexion.getConexion();
             PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setString(1, nombre_us);
            ps.setString(2, clave);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                respuesta = true;
                this.setId_usuario(rs.getInt("id_usuario"));
                this.setNombre(rs.getString("nombre_us"));
                this.setCorreo(rs.getString("correo_us"));
                this.setContraseña(rs.getString("contraseña"));
                this.setPerfil(rs.getInt("id_per"));
            }
            rs.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return respuesta;
    }


	
	public String mostrarPerfiles() {
        String combo = "<select name=cmbPerfil>";
        String sql = "SELECT id_per, descripcion_per FROM public.tb_perfil";
        ResultSet rs = null;
        Conexion con = new Conexion(); // 
        try {
            rs = con.Consulta(sql);
            while (rs.next()) {
                combo += "<option value=" + rs.getInt("id_per") + ">" + rs.getString("descripcion_per") + "</option>";
            }
            combo += "</select>";
        } catch (SQLException e) {
            System.out.print(e.getMessage());
        }
        return combo;
    }
	public String ingreso() throws SQLException {
	    Conexion con = new Conexion();
	    String insert = "INSERT INTO tb_usuario (id_us, id_per, id_est, nombre_us, cedula_us, correo_us, clave_us) "
	                  + "VALUES (nextval('tb_usuario_id_us_seq'), ?, ?, ?, ?, ?, ?)";
	    try {
	        PreparedStatement pstmt = con.getConexion().prepareStatement(insert);
	        pstmt.setInt(1, 2);       // Assuming id_per is an int
	        pstmt.setInt(2, 2);       // Assuming id_est is an int
	        pstmt.setString(3, getNombre());
	        pstmt.setString(4, getCedula());
	        pstmt.setString(5, getCorreo());
	        pstmt.setString(6, getClave());
	        pstmt.executeUpdate();
	        return "Usuario registrado exitosamente.";
	    } catch (SQLException e) {
	        e.printStackTrace();
	        return "Error al registrar el usuario: " + e.getMessage();
	    }
    }

	public int getEstado() {
		return estado;
	}

	public void setEstado(int estado) {
		this.estado = estado;
	} 
	
	public void setCedula(String cedula) {
		this.cedula = cedula;
	}

	public String getCedula() {
		return cedula;
			}

	public String getCorreo() {
		return correo;
	}
	public void setCorreo(String correo) {
		this.correo = correo;
	}
	
	public String getContraseña() {
		return contraseña;
	}

	public void setContraseña(String contraseña) {
		this.contraseña = contraseña;
	}
	
	

}
