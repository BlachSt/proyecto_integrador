package dtos;

public class Usuario {

    private int id;
    private String nombre;
    private String apellido;
    private String correo;
    private String clave;
    private String perfil;
    private String estado;

    // CONSTRUCTOR PARA INSERTAR DATOS A LA BD
    public Usuario(String nombre, String apellido, String correo, String clave, String perfil, String estado) {
        this.nombre = nombre;
        this.apellido = apellido;
        this.correo = correo;
        this.clave = clave;
        this.perfil = perfil;
        this.estado = estado;
    }
    // CONSTRUCTOR PARA ACTUALIZAR DATOS EN LA BD

    public Usuario(int id, String nombre, String apellido, String correo, String clave, String perfil, String estado) {
        this.id = id;
        this.nombre = nombre;
        this.apellido = apellido;
        this.correo = correo;
        this.clave = clave;
        this.perfil = perfil;
        this.estado = estado;
    }

    public Usuario(String nombre, String apellido, String correo) {
        this.nombre = nombre;
        this.apellido = apellido;
        this.correo = correo;
    }
    
//CONSTRUCTOR PARA LOGIN
    public Usuario(int id, String nombre, String correo) {
        this.id = id;
        this.nombre = nombre;
        this.correo = correo;
    }
    
    public Usuario(String correo, String clave) {
        this.correo = correo;
        this.clave = clave;
    }

    public Usuario(String nombre, String apellido, String perfil, String estado) {
        this.nombre = nombre;
        this.apellido = apellido;
        this.perfil = perfil;
        this.estado = estado;
    }

    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getClave() {
        return clave;
    }

    public void setClave(String clave) {
        this.clave = clave;
    }

    public String getPerfil() {
        return perfil;
    }

    public void setPerfil(String perfil) {
        this.perfil = perfil;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }
    
    
    
  
   
}
