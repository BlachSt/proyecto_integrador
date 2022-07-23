package controlador;

import daos.DAOUsuario;
import dtos.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UsuarioController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String action = request.getParameter("action");
        if (action.equals("registrar")) {
            String nombre = request.getParameter("txtNombre");
            String apellido = request.getParameter("txtApellido");
            String correo = request.getParameter("txtCorreo");
            String clave = request.getParameter("txtPassword");
            String perfil = "cliente";
            String estado = "activo";
            Usuario usuario = new Usuario(nombre, apellido, correo, clave, perfil, estado);
            DAOUsuario dAOUsuario = new DAOUsuario();

            if (dAOUsuario.insert(usuario)) {
                String mensaje = "Se registro correctamente";
                request.getSession().setAttribute("mensaje", mensaje);
                request.getRequestDispatcher("exito.jsp").forward(request, response);
            }

        } else if (action.equals("login")) {
            String correo = request.getParameter("txtCorreo");
            String clave = request.getParameter("txtPassword");
            Usuario usuario = new Usuario(correo, clave);
                DAOUsuario dAOUsuario = new DAOUsuario();
                usuario = dAOUsuario.login(usuario);
            if (correo.equals("admin@gmail.com")) {
                
                if (usuario != null) {
                    request.getSession().setAttribute("usuario", usuario);
                    request.getRequestDispatcher("sistemamm.jsp").forward(request, response);
                } else {
                    String mensaje = "usuario y/o contraseña incorrecta";
                    request.getSession().setAttribute("error", mensaje);
                    request.getRequestDispatcher("error.jsp").forward(request, response);
                }
            }else if (usuario != null) {
                request.getSession().setAttribute("usuario", usuario);
                request.getRequestDispatcher("index_user.jsp").forward(request, response);
            } else {
                String mensaje = "usuario y/o contraseña incorrecta";
                request.getSession().setAttribute("error", mensaje);
                request.getRequestDispatcher("error.jsp").forward(request, response);
            }
        }else if (action.equals("recuperar")) {
            String correo = request.getParameter("txtCorreo");
            String nombre = request.getParameter("txtnombre");
            String apellido = request.getParameter("txtApellido");

            Usuario usuario = new Usuario(nombre, apellido, correo);
            DAOUsuario dAOUsuario = new DAOUsuario();
            usuario = dAOUsuario.login2(usuario);
            if (usuario != null) {
                request.getSession().setAttribute("usuario", usuario);
                request.getRequestDispatcher("contra.jsp").forward(request, response);
            } else {
                String mensaje = "usuario y/o apellido incorrecto";
                request.getSession().setAttribute("error", mensaje);
                request.getRequestDispatcher("error.jsp").forward(request, response);
            }
        } else if (action.equals("listar")) {
            DAOUsuario dAOUsuario = new DAOUsuario();
            ArrayList<Usuario> usuarios = new ArrayList<>();
            usuarios = dAOUsuario.selectAll();
            request.getSession().setAttribute("lista", usuarios);
            request.getRequestDispatcher("musuario/list.jsp").forward(request, response);
        } else if (action.equals("detalle")) {
            String id = request.getParameter("txtId");
            DAOUsuario daoUsuario = new DAOUsuario();
            Usuario usuario = daoUsuario.seleTById(id);
            request.getSession().setAttribute("usuario", usuario);
            request.getRequestDispatcher("musuario/detail.jsp").forward(request, response);
        } else if (action.equals("eliminar")) {
            String id = request.getParameter("txtId");
            DAOUsuario daoUsuario = new DAOUsuario();
            daoUsuario.delete(id);
            String mensaje = "se elimino correctamente";
            request.getSession().setAttribute("mensaje", mensaje);
            request.getRequestDispatcher("musuario/delete.jsp").forward(request, response);
        } else if (action.equals("actualizar")) {
            int idd = Integer.parseInt(request.getParameter("txtId"));
            String nombre = request.getParameter("txtNombre");
            String apellido = request.getParameter("txtApellido");
            String correo = request.getParameter("txtCorreo");
            String clave = request.getParameter("txtPassword");
            String perfil = "cliente";
            String estado = "activo";
            Usuario usuarios = new Usuario(idd, nombre, apellido, correo, clave, perfil, estado);
            DAOUsuario dAOUsuario = new DAOUsuario();
            if (dAOUsuario.update(usuarios)) {
                String mensaje = "Se actualizo correctamente";
                request.getSession().setAttribute("mensaje", mensaje);
                request.getRequestDispatcher("sistemamm.jsp").forward(request, response);
            }
            String id = request.getParameter("txtId");
            DAOUsuario daoUsuario = new DAOUsuario();
            Usuario usuario = daoUsuario.seleTById(id);
            request.getSession().setAttribute("usuario", usuario);
            if (usuario != null) {
                request.getRequestDispatcher("musuario/update.jsp").forward(request, response);
            }
        }

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
