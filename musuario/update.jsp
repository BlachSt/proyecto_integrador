<%@page import="dtos.Usuario"%>
<%
    Usuario usuario=(Usuario)request.getSession().getAttribute("usuario");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="../WEB-INF/jspf/cmeta.jspf" %>
        <%@include file="../WEB-INF/jspf/cstyles.jspf" %>
    </head>
    <body>
        <%@include file="../WEB-INF/jspf/csocial.jspf" %>
        <div class="container-fluid">
            <%@include file="../WEB-INF/jspf/cheader.jspf" %>
            <%@include file="../WEB-INF/jspf/cnav.jspf" %>
            <section>
                <div class="row">
                    <div class="col-lg-4 offset-lg-4">
                        <div><h3>Actualizar usuario</h3></div>
                        <form action="<%=request.getContextPath()%>/UsuarioController.do?accion=actualizar&txtId=${usuario.id}" method="POST">
                            <div class="form-group">
                                <label for="txtId">ID</label>
                                <input type="text" id="txtId" name="txtId"  class="form-control" value=<%=usuario.getId()%> disabled>
                            </div>
                            <div class="form-group">
                                <label for="txtNombre">Nombre</label>
                                <input type="text" class="form-control" name="txtNombre" id="txtNombre" value=<%=usuario.getNombre()%> placeholder="Ingresar nombre">
                            </div>
                            <div class="form-group">
                                <label for="txtApellido">Apellido</label>
                                <input type="text" class="form-control" name="txtApellido" id="txtApellido" value=<%=usuario.getApellido()%> placeholder="Ingresar apellido">
                            </div>
                            <div class="form-group">
                                <label for="txtCorreo">Correo</label>
                                <input type="email" class="form-control" name="txtCorreo" id="txtCorreo" value=<%=usuario.getCorreo()%> placeholder="Ingresar email">
                            </div>
                            <div class="form-group">
                                <label for="txtPassword">Clave</label>
                                <input type="password" class="form-control" name="txtPassword" id="txtPassword" placeholder="Password">
                            </div>
                            <button type="submit" class="btn btn-primary">actualizar</button>
                        </form>
                    </div>
                </div>
            </section>
            <%@include file="../WEB-INF/jspf/caside.jspf" %>
            <%@include file="../WEB-INF/jspf/cfooter.jspf" %>
        </div>
        <%@include file="../WEB-INF/jspf/cjs.jspf" %>
    </body>
</html>