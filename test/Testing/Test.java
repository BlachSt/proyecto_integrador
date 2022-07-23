/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Testing;

import conexion.ConexionBD;
import daos.DAOUsuario;
import java.util.ArrayList;
import dtos.Usuario;


/**
 *

 */
public class Test {
    
    public static void main(String[] args) {


        DAOUsuario dAOUsuario = new DAOUsuario();
        

String correo="prueba@gmail.com";
String clave="prueba123";
Usuario usuario1= new Usuario(correo, clave);
usuario1=dAOUsuario.login(usuario1);
if(usuario1!=null){
    System.out.println("Logueo exitoso");
}else{
    System.out.println("No se pudo loguear correctamente");
}
        
    }
    
}
