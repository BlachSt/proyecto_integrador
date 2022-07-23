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
          
            <section>
                <div class="row">
                    <div class="col-lg-9 offset-lg-4">
                       
                    </div>
                    <div class="col-lg-8 offset-lg-2">
                        <div class="card-deck">
                            <div class="card" style= "height: 430px">
                             <iframe width="526" height="315" src="https://www.youtube.com/embed/sxkqO9lkEmM" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>   
                            </div>
                            <div class="card">
                             <iframe width="526" height="315" src="https://www.youtube.com/embed/vdDh0hGVvd0" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>  
                            </div>
                           
                        </div>
                    </div>
                </div>
            </section>
            
            <section>
                <div class="row">
                    <div class="col-lg-9 offset-lg-4">
                       
                    </div>
                    <div class="col-lg-8 offset-lg-2">
                        <div class="card-deck">
                            <div class="card" style= "height: 540px">
                             <iframe width="526" height="315" src="https://www.youtube.com/embed/_R4PDJ1n074" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>   
                             <br>
                             <p style="text-align: center; font-size: 20px"><b>EJERCICIOS PARA GLUTEOS LEVANTADOS</b></p>
                             <p style="text-align: center; font-size: 10px; color: #B8B8B8">GUIA PASO A PASO DE 3 MINUTOS</p>
                             <br>
                             <!-- inicio de toast -->
                                     <button type="button" class="btn btn-sucess" id="btnToasts" style="background-color: #2886D0; color: #FFFFFF">COMPLETADO</button>

                                     <br>
                                     <div id="toast1" class="toast" role="alert" aria-live="assertive" aria-atomic="true" data-delay="3000" style="background-color: #FFFFFF">
                                     <div class="toast-header">
                                     <strong class="mr-auto">Bootstrap</strong>
                                     <small>11 mins ago</small>
     
                                     </div>
                                     <div class="toast-body">
                                       Hello, world! This is a toast message.
                                     </div>
                                     </div>

                                   <script>
                                              const toastTrigger = document.getElementById('btnToasts');
                                                 const toastLiveExample = document.getElementById('toast1');
                                                if (toastTrigger) {
                                                toastTrigger.addEventListener('click', () => {
                                                const toast = new bootstrap.Toast(toastLiveExample);

                                               toast.show();
                                               });
                                            }
                                   </script>
                             
                             <!-- fin de toast -->
                            </div>
                            
                            <div class="card">
                             <iframe width="526" height="315" src="https://www.youtube.com/embed/WAVXR8e3ZAE" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>  
                            <br>
                             <p style="text-align: center; font-size: 20px"><b>EJERCICIOS PARA GLUTEOS LEVANTADOS</b></p>
                             <p style="text-align: center; font-size: 10px; color: #B8B8B8">GUIA PASO A PASO DE 3 MINUTOS</p>
                             <br>
                             <!-- inicio de toast -->
                                     
                            </div>
                           
                        </div>
                    </div>
                </div>
            </section>
            
            
            
            
           
            <%@include file="WEB-INF/jspf/cfooter.jspf" %>
        </div>
        <%@include file="WEB-INF/jspf/cjs.jspf" %>
    </body>
</html>