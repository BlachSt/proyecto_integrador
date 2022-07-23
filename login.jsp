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
                                    <form action="<%=request.getContextPath()%>/usuariocontroller.do?action=login" method="POST">
                                        <div class="form-group">
                                            <label for="txtCorreo">Correo</label>
                                            <input type="email" class="form-control" name="txtCorreo" id="txtCorreo" aria-describedby="emailHelp" placeholder="Enter email">
                                            <small id="emailHelp" class="form-text text-muted">Nosotros no compartimos tus datos con nadie.</small>
                                        </div>
                                        <div class="form-group">
                                            <label for="txtPassword">Clave</label>
                                            <input type="password" class="form-control" name="txtPassword" id="txtPassword" placeholder="Password">
                                        </div>
               
                                        <button type="submit" class="btn btn-primary">Iniciar Sesión</button>
                                        <div class="form-group">
                                            <br>
                                            <a href="recupera.jsp">Recuperar contraseña</a>
                                        </div>
                                         

                                    </form>
                                   
                                </div>
                                <div class="card-footer text-muted">
                                    GYM SPARTAN
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