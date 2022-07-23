<% 
String mensaje= (String)request.getSession().getAttribute("mensaje");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="shortcut icon type=image/png" href="RESOURCES/imgs/imagen23.jpg"/>
        <%@include file="WEB-INF/jspf/csocial.jspf" %>
        <%@include file="WEB-INF/jspf/cmeta.jspf" %>
        <%@include file="WEB-INF/jspf/cstyles.jspf" %>
    </head>
    <body>
        <div class="container-fluid">
            <%@include file="WEB-INF/jspf/cheader.jspf" %>
            <%@include file="WEB-INF/jspf/cnav.jspf" %>
            <section>       
                <div class="formulario">
                    <div class="row">
                        <div class="col-lg-4 offset-lg-4">
                            <div class="card">
                                <div class="card-header">
                                   Información
                                </div>
                                <div class="card-body">
                                    <h5 class="card-title">Se ha realizado la siguiente transacción:</h5>
                                    <p class="card-text"><%=mensaje%></p>
                                    <a href="login.jsp" class="btn btn-primary">Iniciar Sesion</a>
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
