/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package Testing;
import conexion.ConexionBD;
import daos.DAOUsuario;
import java.util.ArrayList;
import dtos.Usuario;
/**
 *
 * @author USUARIO
 */
public class Prueba {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
       ConexionBD obj = new ConexionBD();
       obj.getConnection();
    }
    
}
