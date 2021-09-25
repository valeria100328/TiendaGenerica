package com.DAO.TiendaVirtualSB;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import javax.swing.JOptionPane;
import com.BO.TiendaVirtualSB.*;
import com.DTO.TiendaVirtualSB.ClienteVO;
import java.math.BigInteger;


public class ClienteDAO 
{	
	
 public void registrarUsuario(ClienteVO persona) 
 {
  Conexion conex= new Conexion();
  try {
   Statement estatuto = conex.getConnection().createStatement();
   estatuto.executeUpdate("INSERT INTO usuarios VALUES ('"+persona.getCedula_usuario()+"', '"
     +persona.getEmail_usuario()+"', '"+persona.getNombre_usuario()+"','"+persona.getContraseña()+"','"+persona.getUsuario()+"')");
   estatuto.close();
   conex.desconectar();
  } catch (SQLException e) {
	  System.out.println(e.getMessage());
  }
 }
   
 public void modificarUsuario(ClienteVO persona) {
     Conexion conex = new Conexion();
     try {
    	 PreparedStatement sentencia= conex.getConnection().prepareStatement("UPDATE usuarios SET email_usuario = ?, nombre_usuario = ?, password = ?, usuario = ? WHERE cedula_usuario=?");
         sentencia.setString(1, persona.getEmail_usuario());
         sentencia.setString(2, persona.getNombre_usuario());
         sentencia.setString(3, persona.getContraseña());
         sentencia.setString(4, persona.getUsuario());
         sentencia.setInt(5, persona.getCedula_usuario());
         sentencia.executeUpdate();
         sentencia.close();
         conex.desconectar();
     } catch (SQLException e) {
         System.out.println(e.getMessage());
     }
 }
 
 public void eliminarUsuario(ClienteVO persona) {
	 Conexion conex = new Conexion();
	 try {
		 PreparedStatement sentencia= conex.getConnection().prepareStatement("delete from usuarios WHERE cedula_usuario=?");
		 sentencia.setInt(1, persona.getCedula_usuario());
		 sentencia.executeUpdate();
		 sentencia.close();
		 conex.desconectar();
 	} catch (Exception e) {
     System.out.println(e.getMessage());
 	}
 }
 
 public ClienteVO Consultarusuario(int cedula_usuario) {
	    Conexion conex = new Conexion();
	    ClienteVO persona = new ClienteVO();
	    try {
	        PreparedStatement consulta = conex.getConnection().prepareStatement("SELECT * FROM usuarios where cedula_usuario = ? ");
	        consulta.setInt(1, cedula_usuario);
	        ResultSet res = consulta.executeQuery();
	        if (res.next()) {
	            persona.setNombre_usuario(res.getString("nombre_usuario"));
	            persona.setEmail_usuario(res.getString("email_usuario"));
	            persona.setContraseña(res.getString("password"));
	            persona.setUsuario(res.getString("usuario"));
		        conex.desconectar();
		        return persona;
	        }
	        else {
	        	return null;
	        }

	    } catch (Exception e) {
	    	persona.setCedula_usuario(0);
	    	return null;
	    }
	    
	}

 public void registrarCliente(ClienteVO persona) 
 {
  Conexion conex= new Conexion();
  try {
   Statement estatuto = conex.getConnection().createStatement();
   estatuto.executeUpdate("INSERT INTO clientes VALUES ('"+persona.getCedula_cliente()+"', '"+persona.getDireccion_cliente()+"','"+persona.getEmail_cliente()+"','"+persona.getNombre_cliente()+"','"+persona.getTelefono_cliente()+"')");
   estatuto.close();
   conex.desconectar();
  } catch (SQLException e) {
	  System.out.println(e.getMessage());
  }
 }
   
 public void modificarCliente(ClienteVO persona) {
     Conexion conex = new Conexion();
     try {
    	 PreparedStatement sentencia= conex.getConnection().prepareStatement("UPDATE clientes SET direccion_cliente = ?, email_cliente = ?, nombre_cliente = ?, telefono_cliente = ? WHERE cedula_cliente=?");
         sentencia.setString(1, persona.getDireccion_cliente());
         sentencia.setString(2, persona.getEmail_cliente());
         sentencia.setString(3, persona.getNombre_cliente());
         sentencia.setString(4, persona.getTelefono_cliente());
         sentencia.setInt(5, persona.getCedula_cliente());
         sentencia.executeUpdate();
         sentencia.close();
         conex.desconectar();
     } catch (SQLException e) {
         System.out.println(e.getMessage());
     }
 }
 
 public void eliminarCliente(ClienteVO persona) {
	 Conexion conex = new Conexion();
	 try {
		 PreparedStatement sentencia= conex.getConnection().prepareStatement("delete from clientes WHERE cedula_cliente=?");
		 sentencia.setInt(1, persona.getCedula_cliente());
		 sentencia.executeUpdate();
		 sentencia.close();
		 conex.desconectar();
 	} catch (Exception e) {
 		persona.setCedula_cliente(0);
     System.out.println(e.getMessage());
 	}
 }
 
 public ClienteVO ConsultarCliente(int cedula_cliente) {
	    Conexion conex = new Conexion();
	    ClienteVO persona = new ClienteVO();
	    try {
	        PreparedStatement consulta = conex.getConnection().prepareStatement("SELECT * FROM clientes where cedula_cliente=? ");
	        consulta.setInt(1, cedula_cliente);
	        ResultSet res = consulta.executeQuery();
	        if (res.next()) {
	            persona.setDireccion_cliente(res.getString("direccion_cliente"));
	            persona.setEmail_cliente(res.getString("email_cliente"));
	            persona.setNombre_cliente(res.getString("nombre_cliente"));
	            persona.setTelefono_cliente(res.getString("telefono_cliente"));
		        conex.desconectar();
		        return persona;
	        }
	        else {
	        	return null;
	        }

	    } catch (Exception e) {
	    	persona.setCedula_cliente(0);
	    	return null;
	    }
	    
	}

 public void registrarProveedor(ClienteVO persona) 
 {
  Conexion conex= new Conexion();
  try {
   Statement estatuto = conex.getConnection().createStatement();
   estatuto.executeUpdate("INSERT INTO proveedores VALUES ('"+persona.getNitproveedor()+"', '"
     +persona.getCiudad_proveedor()+"', '"+persona.getDireccion_proveedor()+"','"+persona.getNombre_proveedor()+"','"+persona.getTelefono_proveedor()+"')");
   estatuto.close();
   conex.desconectar();
  } catch (SQLException e) {
	  System.out.println(e.getMessage());
  }
 }
   
 public void modificarProveedor(ClienteVO persona) {
     Conexion conex = new Conexion();
     try {
    	 PreparedStatement sentencia= conex.getConnection().prepareStatement("UPDATE proveedores SET ciudad_proveedor = ?, direccion_proveedor = ?, nombre_proveedor = ?, telefono_proveedor = ? WHERE nitproveedor=?");
         sentencia.setString(1, persona.getCiudad_proveedor());
         sentencia.setString(2, persona.getDireccion_proveedor());
         sentencia.setString(3, persona.getNombre_proveedor());
         sentencia.setString(4, persona.getTelefono_proveedor());
         sentencia.setLong(5, persona.getNitproveedor());
         sentencia.executeUpdate();
         sentencia.close();
         conex.desconectar();
     } catch (SQLException e) {
         System.out.println(e.getMessage());
     }
 }
 
 public void eliminarProveedor(ClienteVO persona) {
	 Conexion conex = new Conexion();
	 try {
		 PreparedStatement sentencia= conex.getConnection().prepareStatement("delete from proveedores WHERE nitproveedor=?");
		 sentencia.setLong(1, persona.getNitproveedor());
		 sentencia.executeUpdate();
		 sentencia.close();
		 conex.desconectar();
 	} catch (Exception e) {
     System.out.println(e.getMessage());
 	}
 }
 
 public ClienteVO ConsultarProveedor(long nitproveedor) {
	 	Conexion conex = new Conexion();
	    ClienteVO persona = new ClienteVO();
	    try {
	        PreparedStatement consulta = conex.getConnection().prepareStatement("SELECT * FROM proveedores where nitproveedor=? ");
	        consulta.setLong(1, nitproveedor);
	        ResultSet res = consulta.executeQuery();
	        if (res.next()) {
	            persona.setCiudad_proveedor(res.getString("ciudad_proveedor"));
	            persona.setDireccion_proveedor(res.getString("direccion_proveedor"));
	            persona.setNombre_proveedor(res.getString("nombre_proveedor"));
	            persona.setTelefono_proveedor(res.getString("telefono_proveedor"));
		        conex.desconectar();
		        return persona;
	        }
	        else {
	        	return null;
	        }

	    } catch (Exception e) {
	    	persona.setNitproveedor((long) 0);
	    	return null;
	    }
 }
 
 public boolean validate(ClienteVO persona){
		boolean validacion=true;
    try {
    	Conexion conex= new Conexion();
    	PreparedStatement consulta = conex.getConnection().prepareStatement("SELECT * FROM usuarios where usuario = ? and password = ? ");
        consulta.setString(1, persona.getUsuario());
        consulta.setString(2, persona.getContraseña());
        ResultSet rs = consulta.executeQuery();
        if (!rs.isBeforeFirst()) {    
    	    System.out.println("No data"); 
    	    validacion=false;
    	} 
        else{
        	validacion=true;
        	System.out.println("si data");
        }
    } catch (SQLException e) {
    	
    }
    return validacion;
	}
	
}