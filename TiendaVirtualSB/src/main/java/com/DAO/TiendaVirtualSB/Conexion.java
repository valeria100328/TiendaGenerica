package com.DAO.TiendaVirtualSB;

import java.sql.*;

/**
 * Clase que permite conectar con la base de datos
 * 
 *
 */
public class Conexion {
   /**Parametros de conexion*/
   static String bd = "Tienda143";
   static String login = "root";
   static String password = "root";
   static String url = "jdbc:mysql://localhost/"+bd;
   /**static String bd = "BD143";
   static String login = "admin";
   static String password = "admin123";
   static String url = "jdbc:mysql://tiendavirtualjh.czo3ixoe3xoe.us-east-1.rds.amazonaws.com/"+bd;*/

   Connection connection = null;

   /** Constructor de DbConnection */
   public Conexion() {
      try{
         //obtenemos el driver de para mysql
         Class.forName("com.mysql.cj.jdbc.Driver");
         //obtenemos la conexión
         connection = DriverManager.getConnection(url,login,password);

         if (connection!=null){
            System.out.println("Conexión a base de datos "+bd+" OK\n");
         }
      }
      catch(SQLException e){
         System.out.println(e);
      }catch(ClassNotFoundException e){
         System.out.println(e);
      }catch(Exception e){
         System.out.println(e);
      }
   }
   /**Permite retornar la conexión*/
   public Connection getConnection(){
      return connection;
   }

   public void desconectar(){
      connection = null;
   }
}
