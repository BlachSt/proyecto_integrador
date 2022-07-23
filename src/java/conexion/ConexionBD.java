package conexion;

import java.sql.Connection;
import java.sql.DriverManager;
import com.mysql.jdbc.Driver;

// PATRON DE DISEÑO DE SOFTWARE SINGLETON

public class ConexionBD {

    private static ConexionBD instance=null;
    // INTERFACE PROVISTA POR EL API JDBC
    private static Connection con=null;
    
    //DEFINIR PARAMETROS DE INFORMACION DE LA BD
    //private static final String URL="jdbc:sqlserver://localhost\\MSSQLSERVER:1433;databaseName=cyberparts";
    private static final String URL="jdbc:sqlserver://gianmarcoserverbd.database.windows.net\\MSSQLSERVER:1433;databaseName=cyberparts";    
    private static final String DRIVER="com.microsoft.sqlserver.jdbc.SQLServerDriver";
    private static final String USER="gianmarcoadmin";
    private static final String PASS="G123456789g!";
    
    private static final String URLA="jdbc:mysql://localhost:3306/gimnasio_prueba";
    private static final String DRIVERA="com.mysql.cj.jdbc.Driver";
    private static final String USERA="root";
    private static final String PASSA="";
    //DEFINIR CONSTRUCTOR PRIVADO
    public ConexionBD(){
        try {
       // GENERANDO INSTANCIA DEL DRIVER
       Class.forName(DRIVERA).newInstance();
       // ESTABLECIENDO LA CONEXION A LA BD
       con =  DriverManager.getConnection(URLA, USERA, PASSA);
            System.out.println("Conexion exitosa :"+con.toString());     
            
        } catch (Exception e) {
            System.out.println("Error :"+e.getMessage());
            e.printStackTrace();
        }
    }
    // METODO QUE GENERA LA INSTANCIA DE CONEXION A LA BD
    // SYNCHRONIZED PARA GENERAR UNA COLA DE SOLICITUDES A LA BD
    public synchronized static ConexionBD generarInstancia(){
    
          if(instance==null){
          instance = new ConexionBD();
          }
        
        return instance;
    
    }
    // METODO QUE RETORNA LA INSTANCIA
    public Connection getConnection() {
        return con;
    }
    
    // METODO PARA CERRAR LA CONEXION
    public void cerrarConexion(){
        instance = null;
    }
  
}
