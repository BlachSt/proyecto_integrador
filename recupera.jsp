<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="shortcut icon type=image/png" href="RESOURCES/imgs/imagen23.jpg"/>
        <%@include file="WEB-INF/jspf/cmeta.jspf" %>
        <%@include file="WEB-INF/jspf/cstyles.jspf" %>
    </head>
    <body>
        <div class="container-fluid">
            <%@include file="WEB-INF/jspf/csocial.jspf" %>
            <%@include file="WEB-INF/jspf/cheader.jspf" %>
            <%@include file="WEB-INF/jspf/cnav.jspf" %>
            <section>
                <div class="formulario">
                    <div class="row">
                        <div class="col-lg-4 offset-lg-4">
                            <div class="card">
                                <div class="card-header">
                                    <i class="fas fa-sign-in-alt"></i>&nbsp;Iniciar Sesión
                                </div>
                                <div class="card-body">
                                    <form action="<%=request.getContextPath()%>/usuariocontroller.do?action=recuperar" method="POST">
                                        <div class="form-group">
                                            <label for="txtCorreo">Correo</label>
                                            <input type="email" class="form-control" name="txtCorreo" id="txtCorreo" aria-describedby="emailHelp" placeholder="Enter email">
                                            <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                                        </div>
                                        <div class="form-group">
                                            <label for="txtApellido">Apellido</label>
                                            <input type="text" class="form-control" name="txtApellido" id="txtApellido" placeholder="Ingresar apellido">
                                        </div>
               
                                        <button type="submit" class="btn btn-primary">Iniciar Sesión</button>
                                    </form>
                                   
                                </div>
                                <div class="card-footer text-muted">
                                    Sistema de Ventas
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
