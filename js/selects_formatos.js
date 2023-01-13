var cont = 1;
$('#slcBuscador').on('change', function() {
    datosPrueba=document.getElementById('slcBuscador').value.split('_');
    prueba=datosPrueba[0];
    pruebaNombre = datosPrueba[1];
    defecto = 1;
/*defecto se refiere a una llave foranea para poder registrar*/
    var pruebaTexto = $('#slcBuscador option:selected').text();
    var fila = '<div id="fila'+cont+'" class="col-md-12"><div class="card card-light" style="background-color:rgba(128, 128, 128, 0.226);"><div class="card-body" style="margin: 5px !important; padding: 5px !important;"><div class="container"><div class="row"><input type="hidden" name="prueba[]" value="'+prueba+'"><input type="hidden" name="pruebaNombre[]" value="'+pruebaNombre+'"><div class="col-1"><button style="border:0;background-color: #9e616700;" type="button" class="handle float-left"><i class="fa fa-arrows"></i></button></div><div class="col-7"><input class="form-control" name="pruebaTexto" readonly value="'+pruebaTexto+'" style="border-color: rgba(255, 255, 255, 0);background-color:rgba(0, 0, 0, 0);"></div><div class="col-2"><button style="border:0;background-color: #dc354600;" type="button" class="botonEliminarB float-right" onclick="eliminar('+cont+');"><i style="color: #ff0000" class="fa fa-times"></i></button></div></div></div></div></div></div><br>';
    cont++;

    if($("#slcBuscador").val() == "Separador"){
        var fila = '<div id="fila'+cont+'" class="col-md-12"><div class="card card-light" style="background-color:rgba(128, 128, 128, 0.226);"><div class="card-body" style="margin: 5px !important; padding: 5px !important;"><div class="container"><div class="row"><div class="col-1"><button style="border:0;background-color: #9e616700;" type="button" class="handle float-left"><i class="fa fa-arrows"></i></button></div><div class="col-7"><input type="hidden" name="prueba[]" value="'+defecto+'"><input class="form-control" type="text" id="pruebaNombre'+cont+'" name="pruebaNombre[]" maxlength="50"></div><div class="col-2"><button style="border:0;background-color: #dc354600;" type="button" class="botonEliminarB float-right" onclick="eliminar('+cont+');"><i style="color: #ff0000" class="fa fa-times"></i></button></div></div></div></div></div></div><br>';
        cont++;
    }
    if($("#slcBuscador").val() == "Elige"){
        var fila = '<div id="fila'+cont+'" class="col-md-12"><div class="card card-light" style="background-color:rgba(128, 128, 128, 0.226);"><div class="card-body" style="margin: 5px !important; padding: 5px !important;"><div class="container"><div class="row"><div class="col-1"><button style="border:0;background-color: #9e616700;" type="button" class="handle float-left"><i class="fa fa-arrows"></i></button></div><div class="col-7"><input type="hidden" name="prueba[]" value="'+defecto+'"><input class="form-control" type="text" id="pruebaNombre'+cont+'" name="pruebaNombre[]" maxlength="50"></div><div class="col-2"><button style="border:0;background-color: #dc354600;" type="button" class="botonEliminarB float-right" onclick="eliminar('+cont+');"><i style="color: #ff0000" class="fa fa-times"></i></button></div></div></div></div></div></div><br>';
        cont++;
    }
    $('#tabla_formatos').append(fila);
});


function eliminar(index){
    $("#fila" + index).remove();
}

function deshacer(index){
    $("#fila" + index).remove();
}