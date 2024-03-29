@extends('adminlte::page')

@section('content_header')
    <h2>Configuración de Estudios</h2>
@stop

@section('content')
<div class="card">
    <div class="card-header">
        <a href="estudios/create" style="text-decoration:none;color:aliceblue;" class="float-right d-none d-sm-block">
            <button type="button" class="btn btn-info">
               <i class="far fa fa-plus-square"></i> Agregar
           </button> 
        </a>
    </div>
    <div class="card-body">
        @if($message = Session::get("error"))
		<div class="alert alert-danger">
		    <p>{{$message="Este estudio tiene esta siendo usado."}}</p>
		</div>
		@endif	
        <div class="table-responsive">
            <table id="formatos" class="table table-striped table-bordered">
                <thead>
                    <tr>
                        <th scope="col" style="width: 15%;">Clave</th>
                        <th scope="col" style="width: 20%;">Abreviatura</th>
                        <th scope="col" style="width: 55%;">Nombre</th>
                        <th scope="col" style="width: 10%;">Acciones</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($estudios as $estudio)
                        <tr>
                            <td>{{$estudio->idEstudio}}</td>
                            <td>{{$estudio->Abreviatura}}</td>
                            <td>{{$estudio->Nombre}}</td>
                            <td>
                                <form class="formulario" action="{{route('estudios.destroy',$estudio->idEstudio)}}" method ="POST">
                                    @csrf
                                    @method('DELETE')
                                    <a href="{{route('estudios.edit',Crypt::encrypt( $estudio->idEstudio ))}}" class="btn-xs btn-primary fa fa fa-pencil"><i class="fa fa-edit"></i></a>
                                
                                   <button class="btn-xs btn btn-danger"><i class="fa fa-trash"></i></button>
                                </form>
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

@section('js') {{--SweetAlert Vista--}}
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
    }})
});   
</script>
    
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.2/moment.min.js"></script>
<script>
$(document).ready(function () {
    $('#formatos').DataTable({"order": [[ 0, 'desc' ]]});
});
</script> 
@stop