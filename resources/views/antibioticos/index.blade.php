@extends('adminlte::page')

@section('content_header')
    <h1>Catalogo de Antibióticos</h1>
@stop

@section('content')
<div class="card">
    <div class="card-header">
        <a style="text-decoration:none;color:aliceblue;" class="float-right d-none d-sm-block">
            <button type="button" class="btn btn-info" data-toggle="modal" data-target="#exampleModal">
               <i class="far fa fa-plus-square"></i> Agregar
           </button> 
        </a>
        @include('antibioticos.create')
        @include('antibioticos.edit')
    </div>
    <div class="card-body">
        @if($message = Session::get("error"))
		<div class="alert alert-danger">
		   <p>{{$message="Error. Duplicidad"}}</p>
		</div>
	    @endif
        <div class="table-responsive">
            <table id="antibioticos" class="table table-striped table-bordered">
                <thead>
                    <tr>
                        <th scope="col">Descripción</th>
                        <td scope="col">Acciones</td>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($antibioticos as $antibiotico)
                    <tr>
                        <td style="text-transform: uppercase;width: 92%;">{{$antibiotico->descripcion}}</td>
                        <td><center>
                            <form class="formulario" action="{{route('antibioticos.destroy',$antibiotico->idAntibiotico)}}" method ="POST">
                                @csrf
                                @method('DELETE')
                                {{-- <a href="{{route('antibioticos.edit',Crypt::encrypt($antibiotico->idAntibiotico))}}" class="btn-xs btn-primary fa fa fa-pencil"><i class="fa fa-edit"></i></a> --}}
                                <button type="button" id="btnModal{{$antibiotico->idAntibiotico}}" value="{{$antibiotico->idAntibiotico}}_{{$antibiotico->descripcion}}" onclick="modal('{{$antibiotico->idAntibiotico}}')" data-toggle="modal" data-target="#editAntiLabel" class="btn-xs btn btn-primary fa fa fa-pencil">
                                    <i class="fa fa-edit"></i>
                                 </button>
                            
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
<script>
    function modal(index){
        var valor_modal = document.getElementById('btnModal'+index).value.split('_');
        id = valor_modal[0];
        descripcion = valor_modal[1];
        var valor_seleccionado = "{{route('antibioticos.update', 'valor' )}}";
        valor_seleccionado = valor_seleccionado.replace('valor', index)
    
        $("#formulario").attr("action", valor_seleccionado);
        $("#descripcionEdit").val(descripcion);
    }
</script>
{{--SweetAlert Vista--}}
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
        $('#antibioticos').DataTable({"order": [[ 0, 'asc' ]]});
    });
</script>
@stop