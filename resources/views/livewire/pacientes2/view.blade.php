@section('title', __('Pacientes'))

<div class="container-fluid card">
<div class="row">
    <div class="col-12">
        <div class="card card-light">   
            <div class="card-body">                        
                    
                    <input id="valorCambiable" value="" wire:model="valorCambiable">
                   <label>Es es el valor que puede cambiar en controlador: <label style="color: red;">{{$valorCambiable}}</label></label>
				   <br>
				   <label id="etiqueta"></label>
				   <br>
				   <input value="" wire:model="valorCambiable2">
                   <label>Es es el valor que puede cambiar en controlador 2: <label style="color: red;"></label></label>
				   <br>
				   <label></label>

				   <button type="button" wire:click="cleanData()" id="btnAgregar2">Agregar en tabla</button>
				   <button type="button" wire:click="agregarFilas()" class="btn-primary">Agregar en tabla</button>
           </div>

		   {{-- <div>
				<div x-data="data()">
					<button @click="open = true">Show More...</button>
		 
					
				</div>
			</div> --}}
		</div>
    </div>
</div>
<div class="container-fluid card">
	<div class="row justify-content-center">
		<div class="col-md-12">
				<div>
					<div >
                        <hr>
                        <h5>Lista de Pacientes</h1>
                        
                            
                        <hr>
                    </div>

				<div class="card-body">
			
						
				<div class="table-responsive">
				    
					<button type="button" class="btn btn-info" data-toggle="modal" wire:click.prevent="cancel()" data-target="#createDataModal">
					    <i class="fa fa-plus"></i>  Agregar Pacientes
					</button>
                    <a href="/pacientes-pdf" style="text-decoration:none;color:aliceblue;"> <button type="button" class="btn btn-info" >Imprimir Reporte</button></a>
                    @if (session()->has('message'))
						<div wire:poll.4s class="btn btn-sm btn-success" style="margin-top:0px; margin-bottom:0px;"> {{ session('message') }} </div>
					@endif
                    <input wire:model='keyWord' type="text" class="float-right d-none d-sm-block" name="search" id="search" placeholder="Pacientes">
                    <!-----------------------------!!!!!!!!!!!!!!TABLA!!!!!!!!!!!!!!---------------------------------------->
					<table id="pacientes" wire:model='keyWord' class="table table-striped table-bordered" style="width:100%">
						<thead class="thead">
							<tr> 
                                
								
								<th scope="col">Paciente</th>
                                <th scope="col">E-mail</th>
								<th scope="col">Fecha de Nacimiento</th>
                                
								<td scope="col">Acciones</td>
							</tr>
						</thead>
						<tbody>
						</tbody>
					</table>
					<!-------------Hace que funcione la paginación/Si se elimina, la paginación no funcionará------------------>						
					{{ $pacientes->links() }}
				</div>
				</div>
            </div>

	    </div>
    </div>
</div>

<div id="app">
	<example-component/>
</div>


@section('css')
<link href="https://cdn.datatables.net/1.12.1/css/jquery.dataTables.min.css" rel="stylesheet">
@stop


@section('js')
<script src="{{ asset('js/app.js')}}" rel="stylesheet"></script>
<script defer src="https://unpkg.com/alpinejs@3.x.x/dist/cdn.min.js"></script>
{{-- <script>
	document.addEventListener('livewire:load', function () {
		alert("Holaxaaaaaaaa");
		
	})
</script> --}}


<script> 
window.livewire.on('dataSend', function() { 
	/* alert("hh"); */
	var cont = 1;
	var fila = '<tr class="selected" id="fila'+cont+'"><td><input value="1" wire:model="valorInmutable"></td></tr>';
	cont++;
	$('#pacientes').append(fila);
});
</script>

<script>
	function data(){
		var cont = 1;
	var fila = '<tr class="selected" id="fila'+cont+'"><td><input value="1" wire:model="valorInmutable"></td></tr>';
	cont++;
	$('#pacientes').append(fila);
	}
</script>


<script type="text/javascript">
	window.livewire.on('dataSendDos', () => {
		$('#etiqueta').html("1");
        
	});
</script>
@stop


{{-- @push('scripts')
<script type="text/javascript">
    document.addEventListener('dataSend', function () {
        $('#etiqueta').html("1");
	    $('#valorCambiable').val("1");
    })
</script>
@endpush --}}