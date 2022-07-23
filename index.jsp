<%-- 
  
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="shortcut icon type=image/png" href="RESOURCES/imgs/imagen23.jpg"/>
        <%@include file="WEB-INF/jspf/cmeta.jspf" %>
        <%@include file="WEB-INF/jspf/cstyles.jspf" %>
        <script type="text/javascript" src="jquery.min.js"></script>
	<link rel="stylesheet" type="text/css" href="toastr/toastr.css">
	<script type="text/javascript" src="toastr/toastr.js"></script>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/csocial.jspf" %>
        <div class="container-fluid">
            <%@include file="WEB-INF/jspf/cheader.jspf" %>
            <%@include file="WEB-INF/jspf/cnav.jspf" %>
            <p></p>
            <section style="color:blue;">
             <%@include file="WEB-INF/jspf/ccarrousel.jspf" %>    
            </section>
            <%@include file="WEB-INF/jspf/caside.jspf" %>
            <%@include file="WEB-INF/jspf/cfooter.jspf" %>
        </div>
        <script type="text/javascript">
toastr.options = {
	"closeButton":true,
	"progressBar": true
};
toastr.success("Hola, bienvenido a SpartanGym!","SpartanGym");
$("#mybutton").click(function(){
	toastr.clear();
	toastr.options = {
		"closeButton":true,
		"progressBar": true,
		"positionClass":"toast-bottom-left"
	};
	toastr.info("Has recibido un nuevo comentario en tu publicacion!");
});

</script>
     <%@include file="WEB-INF/jspf/cjs.jspf" %>
    </body>
</html>
