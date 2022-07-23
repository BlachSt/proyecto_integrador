/*package modelo;

import java.sql.Connection;
import java.sql.DriverManager;

public class Conexion {


  private static Connection con = null;

  private static final String URL = "jdbc:sqlserver://localhost\\MSSQLSERVER:1433;databaseName=carritojsp";
  private static final String DRIVER = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
  private static final String USER = "sa";
  private static final String PASS = "alumno";


  public Conexion() {
    try {
      Class.forName(DRIVER);
      this.con = DriverManager.getConnection(URL, USER, PASS);
      System.out.println("Conexion exitosa :"+con.toString());     
    } catch (Exception e) {
      System.err.println("Error :"+e.getMessage());
    }
  }

  public Connection getConnection() {
    return this.con;
  }
}*/
