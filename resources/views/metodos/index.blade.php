@extends('adminlte::page')

@section('content_header')
    <h1>Catalogo de Métodos</h1>
@stop

@section('content')
<div class="card">
    <div class="card-header">
        <a style="text-decoration:none;color:aliceblue;" class="float-right d-none d-sm-block">
            <button type="button" class="btn btn-info" data-toggle="modal" data-target="#exampleModal">
               <i class="far fa fa-plus-square"></i> Agregar
           </button>
        </a>
        @include('metodos.create')
        
    </div>
    <div class="card-body">
        @if($message = Session::get("error"))
			<div class="alert alert-danger">
		        <p>{{$message="Método previamente registrado."}}</p>
			</div>
        @endif
        <div class="table-responsive">
            <table id="metodos" class="table table-striped table-bordered">
                <thead>
                    <tr>
                        <th scope="col">Descripción</th>
                        <td scope="col">Acciones</td>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($metodos as $metodo)
                    <tr>
                        <td style="width: 90%;">{{$metodo->descripcion}}</td>
                        <td><center>
                            
                            <form class="formulario" action="{{route('metodos.destroy',$metodo->id)}}" method ="POST">
                                @csrf
                                @method('DELETE')
                                {{-- <a href="{{route('metodos.edit',Crypt::encrypt($metodo->id))}}" class="btn-xs btn-primary fa fa fa-pencil"><i class="fa fa-edit"></i></a> --}}
                                <button type="button" id="btnModal{{$metodo->id}}" value="{{$metodo->id}}_{{$metodo->descripcion}}" onclick="modal('{{$metodo->id}}')" data-toggle="modal" data-target="#updateModal" class="btn-xs btn btn-primary fa fa fa-pencil">
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
    @include('metodos/update')
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
function modal(index){
    var valor_modal = document.getElementById('btnModal'+index).value.split('_');
    id = valor_modal[0];
    descripcion = valor_modal[1];
    var valor_seleccionado = "{{route('metodos.update', 'valor' )}}";
    valor_seleccionado = valor_seleccionado.replace('valor', index)

    $("#formulario").attr("action", valor_seleccionado);
    $("#Descripcion").val(descripcion);
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
       confirmButtonText: 'Si, ¡Eliminalo!',
       cancelButtonText: 'Cancelar'
    }).then((result) => {
       if (result.isConfirmed) {
          this.submit();
        }
    })
}); 
</script>


<script>
    $(document).ready(function () {
        $('#metodos').DataTable({"order": [[ 0, 'desc' ]]});
    });
</script>
@stop