<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="WEB-INF/jspf/cmeta.jspf" %>
        <%@include file="WEB-INF/jspf/cstyles.jspf" %>

    </head>
    <body>
        <div class="container-fluid">
            <%@include file="WEB-INF/jspf/cheader_user.jspf" %>
            <%@include file="WEB-INF/jspf/cnav_user.jspf" %>
            <br>
            <%@include file="WEB-INF/jspf/calendario.jspf" %>
            
            <%@include file="WEB-INF/jspf/cfooter.jspf" %>
        </div>
        <%@include file="WEB-INF/jspf/cjs.jspf" %>
    </body>
</html>