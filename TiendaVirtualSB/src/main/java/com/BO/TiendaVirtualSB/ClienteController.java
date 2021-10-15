package com.BO.TiendaVirtualSB;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.boot.json.GsonJsonParser;
import org.springframework.boot.json.JsonParser;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.DAO.TiendaVirtualSB.ClienteDAO;
import com.DAO.TiendaVirtualSB.ListasDAO;
import com.DAO.TiendaVirtualSB.ProductosDAO;
import com.DAO.TiendaVirtualSB.ProveedoresDAO;
import com.DAO.TiendaVirtualSB.UsuarioDAO;
import com.DAO.TiendaVirtualSB.VentasDAO;
import com.DTO.TiendaVirtualSB.ClienteVO;
import com.fasterxml.jackson.databind.JsonNode;



@RestController
public class ClienteController {
	
	
	@RequestMapping("/registrarUsuario")
	public void registrarPersona(ClienteVO persona) 
	 {
		UsuarioDAO Dao=new UsuarioDAO(); 
	    Dao.registrarUsuario(persona);
	 }
	
	@RequestMapping("/consultarUsuario")   
	public ClienteVO consultarusuario(int cedula_usuario)
	{
		UsuarioDAO Dao=new UsuarioDAO(); 
	    return Dao.Consultarusuario(cedula_usuario);
	}
	
	@RequestMapping("/modificarUsuario")   
	public void modificarUsuario(ClienteVO persona)
	{
		UsuarioDAO Dao=new UsuarioDAO();  
	    Dao.modificarUsuario(persona);
	}
	
	@RequestMapping("/eliminarUsuario")   
	public void eliminarUsuario(ClienteVO persona)
	{
		UsuarioDAO Dao=new UsuarioDAO(); 
	    Dao.eliminarUsuario(persona);
	}
	
	@RequestMapping("/validar")
    public boolean validate(ClienteVO persona) {
		UsuarioDAO Dao=new UsuarioDAO(); 
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
		ProveedoresDAO Dao=new ProveedoresDAO(); 
	    Dao.registrarProveedor(persona);
	    
	 }
	
	@RequestMapping("/consultarProveedor")   
	public ClienteVO consultarproveedor(long nitproveedor)
	{
		ProveedoresDAO Dao=new ProveedoresDAO(); 
	    return Dao.ConsultarProveedor(nitproveedor);
	}
	
	@RequestMapping("/modificarProveedor")   
	public void modificarproveedor(ClienteVO persona)
	{
		ProveedoresDAO Dao=new ProveedoresDAO(); 
	    Dao.modificarProveedor(persona);
	}
	
	@RequestMapping("/eliminarProveedor")   
	public void eliminarproveedor(ClienteVO persona)
	{
		ProveedoresDAO Dao=new ProveedoresDAO(); 
	    Dao.eliminarProveedor(persona);
	}
	
	@RequestMapping("/enlistarproductos")   
	public void EnlistarProductos(ClienteVO persona)
	{
		ProductosDAO Dao=new ProductosDAO();
		Dao.ListarProductos(persona);
	}
	
	@RequestMapping("/Consultarclienteventa") 
	public ClienteVO ConsultarClienteVenta(int cedula_cliente)
	{
		VentasDAO Dao=new VentasDAO(); 
	    return Dao.ConsultarClienteVenta(cedula_cliente);
	}
	
	@RequestMapping("/consultarProducto")   
	public ClienteVO consultarproducto(int codigo_producto)
	{
		VentasDAO Dao=new VentasDAO(); 
		return Dao.ConsultarProducto(codigo_producto);
	}
	
	@RequestMapping("/ConfirmarVenta")   
	public void confirmarventa(ClienteVO persona)
	{
		VentasDAO Dao=new VentasDAO(); 
	    Dao.Confirmarventa(persona);
	}
	
	@RequestMapping("/Creardetalle") 
	public void Creardetalle(ClienteVO persona) {
		VentasDAO Dao=new VentasDAO(); 
	    Dao.Creardetalle(persona);
	}
	
	@RequestMapping("/total") 
	public void total(ClienteVO persona) {
		ListasDAO Dao=new ListasDAO();
		Dao.total(persona);
	}
	
	@RequestMapping("/eliminartodoproducto")   
	public void eliminartodoproducto(ClienteVO persona)
	{
		ProductosDAO Dao=new ProductosDAO();
	    Dao.Eliminartodoproducto(persona);
	}
	
	@RequestMapping("/ListarUsuarios")
	public ArrayList< ClienteVO> listaDePersonas() {
		ListasDAO Dao=new ListasDAO(); 
		return Dao.listarUsuarios();	   
	}
	
	@RequestMapping("/ListarClientes")
	public ArrayList< ClienteVO> listaDeClientes() {
		ListasDAO Dao=new ListasDAO();
		return Dao.listarClientes();	   
	}
	
	@RequestMapping("/ListarVentas")
	public ArrayList< ClienteVO> listaDeVentas() {
		ListasDAO Dao=new ListasDAO();
		return Dao.listarVentas();	   
	}
	
	@RequestMapping("/registrarproducto")   
	public void registrarproductos(ClienteVO persona) 
	{
		ProductosDAO Dao=new ProductosDAO();
	    Dao.registrarProductos(persona);
	}
}
	
