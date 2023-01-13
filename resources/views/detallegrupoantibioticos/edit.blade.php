@extends('adminlte::page')

@section('content')  
<form class="frmPacientes" id="Grupo" enctype="multipart/form-data" action="/detallegrupoantibioticos/{{$grupo_antibiotico->id}}" method="POST">
  @csrf
  @method('PUT')
  <input name"_token" hidden value="{{ csrf_token() }}" type="text">
  <div id="frm-pacientes" class="tabpanel">
    <ul class="nav nav-tabs" role="tablist">
      <li class="nav-item" role="presentation">
        <a class="nav-link active" href="#Primero" data-toggle="tab" role="tab" aria-selected="false">
          <h4>Configuración del Grupo de Antibióticos</h4>
        </a>
      </li>       
    </ul>
    <div class="tab-content">
      <div role="tabpanel" class="tab-pane active" id="Primero">
        <div class="card">
          <div class="card-body">
            <!----------------------descripcion---------------->
            <div class="form-group">
              <label for="descripcion">Descipción:</label>
              <input title="Sin caracteres especiales • Mínimo 2 carácteres" pattern="[A-Za-z0-9À-ÿ\u00f1\u00d1 '`.-_]*" value="{{$grupo_antibiotico->descripcion}}" minlength="2" maxlength="100" required class="form-control" id="descripcion" name="descripcion" autofocus>
            </div>
                 
          </div>                                                               
        </div>
      </div>
      @if($message = Session::get("duplicidad"))
		<div style="text-align:left" class="alert alert-danger">
		    <p>{{$message="Datos duplicados. Elimine los antibióticos repetidos y verifique bien los próximoas a asignar en un grupo."}}</p>
		</div>
		@endif	
      @if($message = Session::get("error"))
		<div style="text-align:left" class="alert alert-danger">
		    <p>{{$message="Grupo de antibióticos previamente registrado."}}</p>
		</div>
		@endif	
      <div style="text-align:right">
        <a href="/detallegrupoantibioticos"><button type="button" class="btn btn-secondary" data-dismiss="modal"><i class="far fa fa-arrow-left"></i> Regresar</button></a>
        <button id="btnGuardar" type="submit" class="btn btn-primary close-modal" >Guardar</button>         
      </div>

    </div>
  </div>
</form>

<!------------------------------------------------------------------------------------------------------------------->

<div class="card">
  <div class="card-header">
    <h4>Antibióticos del Grupo</h4>
   
  </div>
  <div class="card-body">
    <div class="table-responsive">
      <table class="table table-bordered">
        <thead>
          <tr>
            <th>Antibióticos Disponibles</th>
            <th></th>
            <th>Antibióticos Asignados</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <!-------------------------------------------------------->
            <td style="width: 40%;">

              <form action="{{route('grupoantibioticos.store')}}" method="POST">
                @csrf
                <input id="id" name="id" hidden value="{{$grupo_antibiotico->idGrupoAntibiotico}}">
              <select id="select_disponible" name="select_disponible" required {{-- class="multi_select" --}} size="20">
                <option value="55" selected>Eliga...</option>
                @foreach($antibioticos as $antibiotico)
                <option value="{{$antibiotico->idAntibiotico}}">{{$antibiotico->descripcion}}</option>
                @endforeach
              </select>
            </td>
            <td style="width: 20%;">
              <br>
              <center>
                <button id="btnPlusGuardar" type="submit" class="btn btn-info"><i class="far fa fa-plus"></i></button>
              </center>
              <br>
            </form>

          <form id="Detalle" action="" method="POST">
            @csrf
            @method('DELETE')    
              <center>
                <button id="btnEliminar" class="btn btn-info"><i class="far fa fa-minus"></i></button>
              </center>
              
            </td>
          
            <!-------------------------------------------------------->
            <td style="width: 40%;">
              <div>
                <select required id="select_asignado" name="select_asignado" size="20" style="width: 500px;">
                  @foreach($detallesGA as $ga)
                  <option value="{{$ga->idDetalleGrupoAntibiotico}}">{{$ga->antibiotico->descripcion}}</option>
                  @endforeach
                </select>
                
              </div>
          </form>
            </td>
            <!-------------------------------------------------------->
          </tr>
        </tbody>
      </table>
    </div>
  </div>
</div>
@stop

@section('css')
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.18/css/bootstrap-select.min.css" integrity="sha512-ARJR74swou2y0Q2V9k0GbzQ/5vJ2RBSoCWokg4zkfM29Fb3vZEQyv0iWBMW/yvKgyHSR/7D64pFMmU8nYmbRkg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
@stop

@section('js')
<script src="{{ asset('js/multiregistros.js')}}" rel="stylesheet"></script>

<script>
  $('#select_asignado').on('change', function() {
    var valor_seleccionado = "{{route('grupoantibioticos.destroy', 'valor' )}}";
    valor_seleccionado = valor_seleccionado.replace('valor', this.value)
    $("#Detalle").attr("action", valor_seleccionado);
  });
</script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.18/js/bootstrap-select.min.js" 
integrity="sha512-yDlE7vpGDP7o2eftkCiPZ+yuUyEcaBwoJoIhdXv71KZWugFqEphIS3PU60lEkFaz8RxaVsMpSvQxMBaKVwA5xg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

<script>
  $(document).ready(function(){
    $('.multi_select').selectpicker();
  })
</script>
<script>
    function validaNumericos(event) {
      if(event.charCode >= 48 && event.charCode <= 57){
        return true;
      }
      return false;        
    }
</script>

<script>
        
function soloLetras(e) {
  var key = e.keyCode || e.which,
  tecla = String.fromCharCode(key).toLowerCase(),
  letras = " áéíóúabcdefghijklmnñopqrstuvwxyz",
  especiales = [8, 37, 39, 46],
  tecla_especial = false;    
  for (var i in especiales) {
    if (key == especiales[i]) {
      tecla_especial = true;
      break;
    }
  }
  if (letras.indexOf(tecla) == -1 && !tecla_especial) {
    return false;
  }        
}
        
</script>

@stop