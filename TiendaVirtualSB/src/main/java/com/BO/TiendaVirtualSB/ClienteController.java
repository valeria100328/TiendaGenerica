package com.BO.TiendaVirtualSB;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.boot.json.GsonJsonParser;
import org.springframework.boot.json.JsonParser;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.DAO.TiendaVirtualSB.ClienteDAO;
import com.DTO.TiendaVirtualSB.ClienteVO;
import com.fasterxml.jackson.databind.JsonNode;



@RestController
public class ClienteController {
	
	
	@RequestMapping("/registrarUsuario")
	public void registrarPersona(ClienteVO persona) 
	 {
		ClienteDAO Dao=new ClienteDAO(); 
	    Dao.registrarUsuario(persona);
	    
	 }
	
	@RequestMapping("/consultarUsuario")   
	public ClienteVO consultarusuario(int cedula_usuario)
	{
		ClienteDAO Dao=new ClienteDAO(); 
	    return Dao.Consultarusuario(cedula_usuario);
	}
	
	@RequestMapping("/modificarUsuario")   
	public void modificarUsuario(ClienteVO persona)
	{
		ClienteDAO Dao=new ClienteDAO(); 
	    Dao.modificarUsuario(persona);
	}
	
	@RequestMapping("/eliminarUsuario")   
	public void eliminarUsuario(ClienteVO persona)
	{
		ClienteDAO Dao=new ClienteDAO(); 
	    Dao.eliminarUsuario(persona);
	}
	
	@RequestMapping("/validar")
    public boolean validate(ClienteVO persona) {
        ClienteDAO Dao=new ClienteDAO(); 
        boolean validar=false;
        try {
			validar=Dao.validate(persona);
		} catch (Exception e) {
			e.printStackTrace();
		}
        return validar;
        
    }

	@RequestMapping("/registrarCliente")
	public void registrarcliente(ClienteVO persona) 
	 {
		ClienteDAO Dao=new ClienteDAO(); 
	    Dao.registrarCliente(persona);
	    
	 }
	
	@RequestMapping("/consultarCliente")   
	public ClienteVO consultarcliente(int cedula_cliente)
	{
		ClienteDAO Dao=new ClienteDAO(); 
	    return Dao.ConsultarCliente(cedula_cliente);
	}
	
	@RequestMapping("/modificarCliente")   
	public void modificarcliente(ClienteVO persona)
	{
		ClienteDAO Dao=new ClienteDAO(); 
	    Dao.modificarCliente(persona);
	}
	
	@RequestMapping("/eliminarCliente")   
	public void eliminarcliente(ClienteVO persona)
	{
		ClienteDAO Dao=new ClienteDAO(); 
	    Dao.eliminarCliente(persona);
	}
	
	@RequestMapping("/registrarProveedor")
	public void registrarproveedor(ClienteVO persona) 
	 {
		ClienteDAO Dao=new ClienteDAO(); 
	    Dao.registrarProveedor(persona);
	    
	 }
	
	@RequestMapping("/consultarProveedor")   
	public ClienteVO consultarproveedor(long nitproveedor)
	{
		ClienteDAO Dao=new ClienteDAO(); 
	    return Dao.ConsultarProveedor(nitproveedor);
	}
	
	@RequestMapping("/modificarProveedor")   
	public void modificarproveedor(ClienteVO persona)
	{
		ClienteDAO Dao=new ClienteDAO(); 
	    Dao.modificarProveedor(persona);
	}
	
	@RequestMapping("/eliminarProveedor")   
	public void eliminarproveedor(ClienteVO persona)
	{
		ClienteDAO Dao=new ClienteDAO(); 
	    Dao.eliminarProveedor(persona);
	}
}
	