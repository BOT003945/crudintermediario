@section('title', __('Formatos'))
<div class="container-fluid">
	<div class="row justify-content-center">
		<div class="col-md-12">
			<div class="card">
				<div class="card-header">
					<div style="display: flex; justify-content: space-between; align-items: center;">
						<div class="float-left">
							<h4><i class="fab fa-laravel text-info"></i>
							Formato Listing </h4>
						</div>
						<div wire:poll.60s>
							<code><h5>{{ now()->format('H:i:s') }} UTC</h5></code>
						</div>
						@if (session()->has('message'))
						<div wire:poll.4s class="btn btn-sm btn-success" style="margin-top:0px; margin-bottom:0px;"> {{ session('message') }} </div>
						@endif
						<div>
							<input wire:model='keyWord' type="text" class="form-control" name="search" id="search" placeholder="Search Formatos">
						</div>
						<div class="btn btn-sm btn-info" data-toggle="modal" data-target="#createDataModal">
						<i class="fa fa-plus"></i>  Add Formatos
						</div>
					</div>
				</div>
				
				<div class="card-body">
						@include('livewire.formatos.create')
						@include('livewire.formatos.update')
				<div class="table-responsive">
					<table class="table table-bordered table-sm">
						<thead class="thead">
							<tr> 
								<td>#</td> 
								<th>Sucursal</th>
								<th>Id Estudio</th>
								<th>Idprueba</th>
								<th>Prueba</th>
								<th>Valor1</th>
								<th>Valor2</th>
								<th>Medida</th>
								<th>Tipoformato</th>
								<th>Orden</th>
								<th>Claveprueba</th>
								<th>Autoanalizador</th>
								<th>Textovalores</th>
								<th>Word</th>
								<th>Fecha Act</th>
								<th>Fecha Sync</th>
								<th>Flag Sucursales</th>
								<th>Eliminar</th>
								<td>ACTIONS</td>
							</tr>
						</thead>
						<tbody>
							@foreach($formatos as $row)
							<tr>
								<td>{{ $loop->iteration }}</td> 
								<td>{{ $row->sucursal }}</td>
								<td>{{ $row->id_Estudio }}</td>
								<td>{{ $row->idprueba }}</td>
								<td>{{ $row->Prueba }}</td>
								<td>{{ $row->Valor1 }}</td>
								<td>{{ $row->Valor2 }}</td>
								<td>{{ $row->Medida }}</td>
								<td>{{ $row->tipoFormato }}</td>
								<td>{{ $row->Orden }}</td>
								<td>{{ $row->ClavePrueba }}</td>
								<td>{{ $row->autoanalizador }}</td>
								<td>{{ $row->TextoValores }}</td>
								<td>{{ $row->word }}</td>
								<td>{{ $row->fecha_act }}</td>
								<td>{{ $row->fecha_sync }}</td>
								<td>{{ $row->flag_sucursales }}</td>
								<td>{{ $row->eliminar }}</td>
								<td width="90">
								<div class="btn-group">
									<button type="button" class="btn btn-info btn-sm dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
									Actions
									</button>
									<div class="dropdown-menu dropdown-menu-right">
									<a data-toggle="modal" data-target="#updateModal" class="dropdown-item" wire:click="edit({{$row->id}})"><i class="fa fa-edit"></i> Edit </a>							 
									<a class="dropdown-item" onclick="confirm('Confirm Delete Formato id {{$row->id}}? \nDeleted Formatos cannot be recovered!')||event.stopImmediatePropagation()" wire:click="destroy({{$row->id}})"><i class="fa fa-trash"></i> Delete </a>   
									</div>
								</div>
								</td>
							@endforeach
						</tbody>
					</table>						
					{{ $formatos->links() }}
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
