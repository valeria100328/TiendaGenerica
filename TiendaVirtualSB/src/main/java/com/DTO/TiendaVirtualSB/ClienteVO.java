package com.DTO.TiendaVirtualSB;

public class ClienteVO {
	
	 private Integer idCliente;
	 private String nombreCliente;
	 private String apellidoCliente;
	 private String usuario;
	 private String contrase�a;

	 
	 /**
	  * @return the idCliente
	  */
	 public Integer getIdCliente() {
	  return idCliente;
	 }
	 
	 /**
	  * @param idCliente the idCliente to set
	  */
	 public void setIdCliente(Integer idCliente) {
	  this.idCliente = idCliente;
	 }
	 
	 
	 /**
	  * @return the nombreCliente
	  */
	 public String getNombreCliente() {
	  return nombreCliente;
	 }
	 /**
	  * @param nombreCliente the nombreCliente to set
	  */
	 public void setNombreCliente(String nombreCliente) {
	  this.nombreCliente = nombreCliente;
	 }
	 
	 
	 /**
	  * @return the nombreCliente
	  */
	 public String getApellidoCliente() {
	  return apellidoCliente;
	 }
	 /**
	  * @param nombreCliente the nombreCliente to set
	  */
	 public void setApellidoCliente(String nombreCliente) {
	  this.apellidoCliente = nombreCliente;
	 }
	 
	 public String getUsuario() {
		 return usuario;
	 }

	 public void setUsuario(String usuario) {
        this.usuario = usuario;
	}

	 public String getContrase�a() {
        return contrase�a;
	}

	 public void setContrase�a(String contrase�a) {
        this.contrase�a = contrase�a;
	}

}
