<%@page import="dtos.Usuario"%>
<%
    Usuario usuario = (Usuario) request.getSession().getAttribute("usuario");
%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="WEB-INF/jspf/cmeta.jspf" %>
        <%@include file="WEB-INF/jspf/cstyles.jspf" %>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/csocial.jspf" %>
        <div class="container-fluid">
            <%@include file="WEB-INF/jspf/cheader.jspf" %>
            <%@include file="WEB-INF/jspf/cnav.jspf" %>
            <section>
                <div class="bienvenida">
                    Bienvenido:<%=usuario.getNombre() + " " + usuario.getApellido()%>
                </div>
                <div class="modulos">
                    <div class="row">
                        <div class="col-lg-8 offset-lg-2">
                            <div class="card text-center">
                                <div class="card-header">
                                    <ul class="nav nav-tabs card-header-tabs">
                                        <li class="nav-item">
                                            <a class="nav-link" href="sistemamv.jsp">Modulo Ventas</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="sistemamm.jsp">Modulo de mantenimientos</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link active" href="sistemamr.jsp">Modulo de reportes</a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="card-body">
                                    <h5 class="card-title">Special title treatment</h5>
                                    <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                                    <a href="#" class="btn btn-primary">Go somewhere</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <%@include file="WEB-INF/jspf/caside.jspf" %>
            <%@include file="WEB-INF/jspf/cfooter.jspf" %>
        </div>
        <%@include file="WEB-INF/jspf/cjs.jspf" %>
    </body>
</html>
