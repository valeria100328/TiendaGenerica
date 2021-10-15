package com.DAO.TiendaVirtualSB;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Arrays;

import javax.swing.JOptionPane;

import org.apache.commons.lang3.math.NumberUtils;

import com.BO.TiendaVirtualSB.*;
import com.DTO.TiendaVirtualSB.ClienteVO;
import com.opencsv.CSVParser;
import com.opencsv.CSVParserBuilder;
import com.opencsv.CSVReader;
import com.opencsv.CSVReaderBuilder;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.math.BigInteger;

class Usuario{
    static int Cedula_usuario_global;
}
public class ClienteDAO 
{		
	
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
 
 
}

