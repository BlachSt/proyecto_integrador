
<%
    boolean result = false;
    if (request.getSession().getAttribute("result") != null) {
        result = (boolean) request.getSession().getAttribute("result");
    }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="shortcut icon type=image/png" href="RESOURCES/imgs/imagen23.jpg"/>
        <%@include file="WEB-INF/jspf/cmeta.jspf" %>
        <%@include file="WEB-INF/jspf/cstyles.jspf" %>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/csocial.jspf" %>
        <div class="container-fluid">
            <%@include file="WEB-INF/jspf/cheader.jspf" %>
            <%@include file="WEB-INF/jspf/cnav.jspf" %>
           
                <div class="formulario">
                    <div class="row">
                        <div class="col-lg-4 offset-lg-4">
                            <div class="card">
                                <div class="card-header">
                                    <h4><i class="fas fa-user-plus"></i>&nbsp;Registro usuario</h4> 
                                </div>
                                <div class="card-body">
                                    <form action="<%=request.getContextPath()%>/usuariocontroller.do?action=registrar" method="POST">
                                        
                                        <div class="form-group">
                                            
                                            <label for="txtNombre">Nombre</label> 
                                            <input type="text" class="form-control" name="txtNombre" id="txtNombre" aria-describedby="emailHelp" placeholder="Ingresar nombre">
                                            
                                        </div>
                                        <div class="form-group">
                                            <label for="txtApellido">Apellido</label>
                                            <input type="text" class="form-control" name="txtApellido" id="txtApellido" aria-describedby="emailHelp" placeholder="Ingresar apellido">
                                            
                                        </div>
                                        <div class="form-group">
                                            <label for="txtCorreo">Correo</label>
                                            
                                            <input type="email" class="form-control" name="txtCorreo" id="txtCorreo" aria-describedby="emailHelp" placeholder="Ingresar correo">
                                            <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                                        </div>
                                        <div class="form-group" required>
                                            <label for="txtPassword">Clave</label>
                                            
                                            <input type="password" class="form-control" name="txtPassword" id="txtPassword" placeholder="Password">
                                       
                                        </div>
                                      <%-- <div class="form-group">
                                            <label for="txtPassword">Pregunta secreta</label>

                                            <select class="custom-select" required>
                                             <option value="">Open this select menu</option>
                                             <option value="1">Pregunta 1</option>
                                             <option value="2">Pregunta 2</option>
                                             <option value="3">Pregunta 3</option>

                                            </select>

                                        </div>
                                        <div class="form-group">
                                            <label for="txtRespuesta">Respuesta pregunta secreta</label>
                                            <input type="text" class="form-control" name="txtRespuesta" id="txtCorreo" aria-describedby="emailHelp" placeholder="Enter answer">

                                        </div>--%>
                                        <div class="form-group form-check">
                                            <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                            <label class="form-check-label" for="exampleCheck1"><a href="terminos.jsp">Acepto los términos y condiciones</a></label>
                                        </div>

                                        <button type="submit" class="btn btn-primary">Registrar Usuario</button>
                                        <div class="form-group">
                                            <br>
                                            <a href="">Recuperar contraseña</a>
                                        </div>
                                    </form>
       
                                    <div>
                                        <%
                                            if (result) {
                                                out.print("<h2>Se registro correctamente</h2>");
                                                out.print("<a href='login.jsp'>Login</a>");
                                            }

                                        %>
                                        </di>
                                    </div>
                                    <div class="card-footer text-muted">
                                        GYM SPARTAN
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div> 

             
            
                                        
            <%@include file="WEB-INF/jspf/caside.jspf" %>
            <%@include file="WEB-INF/jspf/cfooter.jspf" %>
        </div>
        <%@include file="WEB-INF/jspf/cjs.jspf" %>
    </body>
</html>