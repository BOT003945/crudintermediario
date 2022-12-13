@extends('adminlte::page')


@section('content_header')
    <h1>Configuración de Grupos de Antibióticos</h1>
@stop

@section('content')

<div class="card">
    <div class="card-header">
        <form>
            @csrf
            <select name="location_id" id="addLocationIdReq" onchange="ShowSelected();">
                @foreach ($grupo_antibioticos as $grupo_antibiotico)
                <option value="{{$grupo_antibiotico->id}}">{{$grupo_antibiotico->descripcion}}</option>
                @endforeach
            </select>            
            <a id="link" href="" 
                class="btn-xs btn-primary fa fa fa-pencil"><i class="fa fa-edit"></i></a>
            <a href="#" data-target="#updateModal" data-toggle="modal" class="identifyingClass" data-id="">Open Modal</a>
            
        </form>
        <a style="text-decoration:none;color:aliceblue;" class="float-right d-none d-sm-block">
            <button type="button" class="btn btn-info" data-toggle="modal" data-target="#exampleModal">
               <i class="far fa fa-plus-square"></i> Agregar
           </button> 
        </a>
        @include('detallegrupoantibioticos.create')
        @include('detallegrupoantibioticos.update')
    </div>
    <div class="card-body">
        @if($message = Session::get("error"))
		<div class="alert alert-danger">
		    <p>{{$message="Grupo de antibióticos previamente registrado."}}</p>
		</div>
		@endif	
        <div class="table-responsive">
            <table id="antibioticos" class="table table-striped table-bordered">
                <thead>
                    <tr>
                        <th scope="col">Nombre</th>
                        <td scope="col">Acciones</td>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($grupo_antibioticos as $grupo_antibiotico)
                    <tr>
                        <td style="width: 92%;">{{$grupo_antibiotico->descripcion}}</td>
                        <td><center>
                            <form class="formulario" action="{{route("detallegrupoantibioticos.destroy",$grupo_antibiotico->id)}}" method ="POST">
                                
                                <a href="{{route('detallegrupoantibioticos.edit',/* Crypt::encrypt( */$grupo_antibiotico->id/* ) */)}}" 
                                    class="btn-xs btn-primary fa fa fa-pencil"><i class="fa fa-edit"></i></a>
                                {{--<a href="{{route('detallegrupoantibioticos.edit',Crypt::encrypt($grupo_antibiotico->id))}}" 
                                    class="btn-xs btn-primary fa fa fa-pencil"><i class="fa fa-edit"></i></a>--}}
                                @csrf
                                @method('DELETE')                      
                               <button class="btn-xs btn btn-danger"><i class="fa fa-trash"></i></button>
                                
                            </form></center>
                        </td>
                    </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>
</div>
@stop

@section('css')
<link href="https://cdn.datatables.net/1.12.1/css/jquery.dataTables.min.css" rel="stylesheet">
@stop

@section('js')
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>
<script>
$('#addLocationIdReq').on('change', function() {
    var valor_seleccionado = this.value;
    $("#updateModal").val(valor_seleccionado);
});
</script>
{{-- $('#updateModal2').on('shown.bs.modal', function () {
    $('#myInput').trigger('focus')
}) --}}
<script>
    $('#addLocationIdReq').on('change', function() {
        var valor_seleccionado = "detallegrupoantibioticos/" + this.value + "/edit";
        $("#link").attr("href", valor_seleccionado);
    });
</script>

<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
@if(session('eliminar')=='Echo')
<script>
    Swal.fire(
      '¡Eliminado!',
      'El registro ha sido eliminado.',
      'Cumplido.'
    )
</script>
@endif
<script>
$('.formulario').submit(function(e){
        e.preventDefault();
        Swal.fire({
        title: '¿Estás seguro?',
        text: "¡No podrás revertir esta acción!",
        icon: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        confirmButtonText: 'Si, ¡Eliminalo!'
}).then((result) => {
    if (result.isConfirmed) {
        this.submit();
    }})});
</script>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.2/moment.min.js"></script>
<script>
    $(document).ready(function () {
        $('#antibioticos').DataTable({"order": [[ 0, 'desc' ]]});
    });
</script>
@stop