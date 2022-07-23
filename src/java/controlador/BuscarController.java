/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
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

/**
 *
 * @author Jose
 */
public class BuscarController extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String nombre = request.getParameter("txtNombre");
            DAOUsuario dAOUsuaio = new DAOUsuario();
            ArrayList<Usuario> usuarios = new ArrayList<>();
            usuarios = dAOUsuaio.selectByName(nombre);
            if (!usuarios.isEmpty()) {
                for (Usuario usuario : usuarios) {
                    String mensaje = "";
                    mensaje += "<tr><td>" + usuario.getId();
                    mensaje += "</td><td>" + usuario.getNombre();
                    mensaje += "</td><td>" + usuario.getCorreo();
                    mensaje += "</td><td><td><a href=\"<%=request.getContextPath()%>/UsuarioController.do?action=detalle&txtId=${usuario.id}\" class=\"btn btn-warning\" role=\"button\" aria-pressed=\"true\"><small>Detalle</small></a></td>";
                    mensaje += "</td><td><td><a href=\"<%=request.getContextPath()%>/UsuarioController.do?action=actualizar&txtId=${usuario.id}\" class=\"btn btn-primary\" role=\"button\" aria-pressed=\"true\"><small>Actualizar</small></a></td>";
                    mensaje += "</td><td><td><a href=\"<%=request.getContextPath()%>/UsuarioController.do?action=eliminar&txtId=${usuario.id}\" class=\"btn btn-danger\" role=\"button\" aria-pressed=\"true\"><small>Eliminar</small></a></td>";
                    mensaje += "</td></tr>";
                    out.println(mensaje);
                }
            } else {
                out.print("<tr><td colspan=3 style='color:gray;'>no hay usuarios con ese nombre</tr></td");
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
