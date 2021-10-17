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

class Total{
    static double Total_todo;
    static double Total;
}
public class ListasDAO 
{		
	

 
 public ArrayList< ClienteVO> listarUsuarios() {
	  ArrayList< ClienteVO> miCliente = new ArrayList< ClienteVO>();
	  Conexion conex= new Conexion();   
	  try {
	   PreparedStatement consulta = conex.getConnection().prepareStatement("SELECT * FROM usuarios");
	   ResultSet res = consulta.executeQuery();
	   while(res.next()){
	    ClienteVO persona= new ClienteVO();
	    persona.setCedula_usuario(Integer.parseInt(res.getString("cedula_usuario")));
	    persona.setNombre_usuario(res.getString("nombre_usuario"));
	    persona.setEmail_usuario(res.getString("email_usuario"));
	    persona.setUsuario(res.getString("usuario"));
	    persona.setContraseña(res.getString("password"));
	    miCliente.add(persona);
	          }
	          res.close();
	          consulta.close();
	          conex.desconectar();
	   
	  } catch (Exception e) {
	   //JOptionPane.showMessageDialog(null, "no se pudo consultar la Persona\n"+e);
	  }
	  return miCliente;
	 }
 
 public ArrayList< ClienteVO> listarClientes() {
	  ArrayList< ClienteVO> miCliente = new ArrayList< ClienteVO>();
	  Conexion conex= new Conexion();   
	  try {
	   PreparedStatement consulta = conex.getConnection().prepareStatement("SELECT * FROM clientes");
	   ResultSet res = consulta.executeQuery();
	   while(res.next()){
	    ClienteVO persona= new ClienteVO();
	    persona.setCedula_cliente(Integer.parseInt(res.getString("cedula_cliente")));
	    persona.setDireccion_cliente(res.getString("direccion_cliente"));
	    persona.setEmail_cliente(res.getString("email_cliente"));
	    persona.setNombre_cliente(res.getString("nombre_cliente"));
	    persona.setTelefono_cliente(res.getString("telefono_cliente"));
	    miCliente.add(persona);
	          }
	          res.close();
	          consulta.close();
	          conex.desconectar();
	   
	  } catch (Exception e) {
	   //JOptionPane.showMessageDialog(null, "no se pudo consultar la Persona\n"+e);
	  }
	  return miCliente;
	 }
 
 public ArrayList< ClienteVO> listarVentas() {
 	double total=0;
 	double sumatodos=0;
	  ArrayList< ClienteVO> miCliente = new ArrayList< ClienteVO>();
	  Conexion conex= new Conexion();   
	  try {

		   PreparedStatement consulta = conex.getConnection().prepareStatement("SELECT * FROM clientes");
		   ResultSet res = consulta.executeQuery();
		   while(res.next()){
		    ClienteVO persona= new ClienteVO();
		    persona.setCedula_cliente(Integer.parseInt(res.getString("cedula_cliente")));
		    persona.setNombre_cliente(res.getString("nombre_cliente"));
		    PreparedStatement consulta2 = conex.getConnection().prepareStatement("SELECT * FROM ventas where cedula_cliente=?");
		    consulta2.setInt(1, persona.getCedula_cliente());
		    ResultSet res2 = consulta2.executeQuery();
		    while(res2.next()){
		    	total=total+Double.parseDouble(res2.getString("valor_venta"));
		    	}
		    persona.setTotal_por_cliente(total);
		    sumatodos=sumatodos+total;
		    persona.setTotal_todo(sumatodos);
		    miCliente.add(persona);
		    total=0;
	          }
		   Total.Total_todo=sumatodos;

	          res.close();
	          consulta.close();
	          conex.desconectar();
	   
	  } catch (Exception e) {
	   //JOptionPane.showMessageDialog(null, "no se pudo consultar la Persona\n"+e);
	  }
	  return miCliente;
	 }
 
 public void total(ClienteVO persona) {
	 Total.Total=Total.Total_todo;
	 persona.setTotal_todo(Total.Total);
	}
}
