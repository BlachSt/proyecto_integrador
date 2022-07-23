function buscarUsuario(){
    console.log("si esta llamando");
    var nombre = document.getElementById("txtBuscarNombre").value;

    $.ajax({
    url: "buscarcontroller.do",
    type:'POST',
    data: {
      txtNombre: nombre
    },
    success: function( result ) {
      $( "#registros" ).html( result);
    }
});

}