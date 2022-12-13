@section('title', __('Pacientes'))

{{-- <div class="container-fluid card">
<div class="row">
    <div class="col-12">
        <div class="card card-light">   
            <div class="card-body"> --}}
                {{-- <form enctype="multipart/form-data" method="post">                            
                    <div class="row form-group clearfix">
                                
                        <div class="col-12 col-md-4 form-check">
                            <input checked="True" class="form-check-input" id="opcion1" name="opcion" onclick="ActivarFiltro()" type="radio" value="1"><label class="form-check-label" for="Buscar_por_Paciente">Buscar por Paciente</label>
                        </div>
                        <div class="col-12 col-md-4 form-check">
                            <input class="form-check-input" id="opcion2" name="opcion" onclick="ActivarFiltro()" type="radio" value="2"><label class="form-check-label" for="Buscar_por_rango_de_Fechas">Buscar por rango de Fechas</label>
                        </div>
                                
                    </div>
                    
                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <label>Fecha Inicio:</label>
                                <input wire:model='dateFrom' value="2022-09-01" class="form-control text-box single-line"  disabled="" id="FechaInicio" maxlength="10" name="FechaInicio" type="date">
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label>Fecha Fin:</label>
                                <input wire:model='keyWord' id="FechaFin" name="FechaFin" value="2022-09-22" class="form-control"  disabled=""  maxlength="10" type="date">
                            </div>
                        </div>                       
                    </div>
                            <!-- <div class="row">
                                <div class="col-md-12">
                                    <button type="submit" class="btn btn-primary"><i class="fa fa-search" aria-hidden="true"></i> Buscar</button>
                                </div>
                            </div> -->
                </form> --}}
                
           {{--  </div>
        </div>
    </div>
</div> --}}
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
				
						@include('livewire.pacientes.create')
                        @include('livewire.pacientes.update')
						
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
					<table id="pacientes" class="table table-striped table-bordered" style="width:100%">
						<thead class="thead">
							<tr> 
                                
								
								<th scope="col">Paciente</th>
                                <th scope="col">E-mail</th>
								<th scope="col">Fecha de Nacimiento</th>
                                
								<td scope="col">Acciones</td>
							</tr>
						</thead>
						<tbody>
							
							@foreach($pacientes as $row)
                              
							<tr>
                                
								
								<td>{{$row->Paciente }}</td>
                                <td>{{$row->email}}</td>
								<td>{{date('d/m/Y', strtotime($row->FecNac))}}</td>                                
								<td>
									<a data-toggle="modal" data-target="#updateModal" class="btn-xs btn-primary fa fa fa-pencil" wire:click="edit({{$row->idPaciente}})"><i class="fa fa-edit"></i></a>							 
									<a class="btn-xs btn btn-danger" onclick="confirm('Confirmar eliminación del Paciente id {{$row->idPaciente}}? \nDeleted Pacientes cannot be recovered!')||event.stopImmediatePropagation()" wire:click="destroy({{$row->idPaciente}})"><i class="fa fa-trash"></i></a>   
									
								</td>
                            </tr>
							@endforeach
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


{{-- @section('css')
<link href="https://cdn.datatables.net/1.12.1/css/jquery.dataTables.min.css" rel="stylesheet">
@stop


@section('js') 
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>


<script>
    $(document).ready(function () {
        $('#pacientes').DataTable({"order": [[ 0, 'desc' ]]});
    });
</script>
@stop --}}