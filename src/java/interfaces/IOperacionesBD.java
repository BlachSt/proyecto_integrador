package interfaces;

import java.util.ArrayList;

// INTERFAZ CON DATO GENERICO
public interface IOperacionesBD <T>{
   
    // OPERACIONES QUE MODIFICAN EL ESTADO EN LA BD
    public abstract boolean insert(T t);
    public abstract boolean update(T t);
    public abstract boolean delete(Object id);
    
    // OPERACIONES QUE NO MODIFICAN EL ESTADO EN LA BD
    public abstract ArrayList<T> selectAll();
    public abstract T seleTById(Object id);
    public abstract ArrayList<T> selectByName(String name);
    
    // METODOS UTILITARIOS
    
    public abstract void cerrarConexion();
              
}
