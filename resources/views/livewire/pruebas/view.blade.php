@section('title', __('Pruebas'))
<div class="container-fluid">
	<div class="row justify-content-center">
		<div class="col-md-12">
			<div class="card">
				<div class="card-header">
					<div style="display: flex; justify-content: space-between; align-items: center;">
						<div class="float-left">
							<h4><i class="fab fa-laravel text-info"></i>
							Prueba Listing </h4>
						</div>
						<div wire:poll.60s>
							<code><h5>{{ now()->format('H:i:s') }} UTC</h5></code>
						</div>
						@if (session()->has('message'))
						<div wire:poll.4s class="btn btn-sm btn-success" style="margin-top:0px; margin-bottom:0px;"> {{ session('message') }} </div>
						@endif
						<div>
							<input wire:model='keyWord' type="text" class="form-control" name="search" id="search" placeholder="Search Pruebas">
						</div>
						<div class="btn btn-sm btn-info" data-toggle="modal" data-target="#createDataModal">
						<i class="fa fa-plus"></i>  Add Pruebas
						</div>
					</div>
				</div>
				
				<div class="card-body">
						@include('livewire.pruebas.create')
						@include('livewire.pruebas.update')
				<div class="table-responsive">
					<table class="table table-bordered table-sm">
						<thead class="thead">
							<tr> 
								<td>#</td> 
								<th>Abreviatura</th>
								<th>Cveprueba</th>
								<th>Decimales</th>
								<th>Descripcion</th>
								<th>Prueba</th>
								<th>Medida</th>
								<th>Hoja Trabajo</th>
								<th>Id Departamento</th>
								<th>Id Metodo</th>
								<th>Impr Metodo Resultado</th>
								<th>Imprimir Negritas</th>
								<th>Impr Nota Resultado</th>
								<th>Formula</th>
								<th>Antibiograma</th>
								<th>Notas</th>
								<th>Notas Internas</th>
								<th>Sexo</th>
								<th>Tipomuestra</th>
								<th>Tipo Valor</th>
								<th>Valor Restringido</th>
								<th>Tipo Valor Normalidad</th>
								<th>Valor Normalidad Texto</th>
								<th>Indicaciones</th>
								<th>Tiporesultado</th>
								<th>Dias</th>
								<th>Horas</th>
								<th>Minutos</th>
								<th>Autoanalizador</th>
								<th>Resultado Default</th>
								<th>Sucursal</th>
								<th>Fecha Act</th>
								<th>Fecha Sync</th>
								<th>Flag Sucursales</th>
								<th>Eliminar</th>
								<td>ACTIONS</td>
							</tr>
						</thead>
						<tbody>
							@foreach($pruebas as $row)
							<tr>
								<td>{{ $loop->iteration }}</td> 
								<td>{{ $row->abreviatura }}</td>
								<td>{{ $row->cveprueba }}</td>
								<td>{{ $row->Decimales }}</td>
								<td>{{ $row->Descripcion }}</td>
								<td>{{ $row->Prueba }}</td>
								<td>{{ $row->Medida }}</td>
								<td>{{ $row->hoja_trabajo }}</td>
								<td>{{ $row->id_Departamento }}</td>
								<td>{{ $row->id_Metodo }}</td>
								<td>{{ $row->impr_metodo_Resultado }}</td>
								<td>{{ $row->imprimir_negritas }}</td>
								<td>{{ $row->impr_Nota_Resultado }}</td>
								<td>{{ $row->formula }}</td>
								<td>{{ $row->antibiograma }}</td>
								<td>{{ $row->notas }}</td>
								<td>{{ $row->notas_internas }}</td>
								<td>{{ $row->sexo }}</td>
								<td>{{ $row->TipoMuestra }}</td>
								<td>{{ $row->Tipo_Valor }}</td>
								<td>{{ $row->valor_restringido }}</td>
								<td>{{ $row->tipo_valor_normalidad }}</td>
								<td>{{ $row->valor_normalidad_texto }}</td>
								<td>{{ $row->indicaciones }}</td>
								<td>{{ $row->TipoResultado }}</td>
								<td>{{ $row->dias }}</td>
								<td>{{ $row->horas }}</td>
								<td>{{ $row->minutos }}</td>
								<td>{{ $row->Autoanalizador }}</td>
								<td>{{ $row->Resultado_default }}</td>
								<td>{{ $row->sucursal }}</td>
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
									<a class="dropdown-item" onclick="confirm('Confirm Delete Prueba id {{$row->id}}? \nDeleted Pruebas cannot be recovered!')||event.stopImmediatePropagation()" wire:click="destroy({{$row->id}})"><i class="fa fa-trash"></i> Delete </a>   
									</div>
								</div>
								</td>
							@endforeach
						</tbody>
					</table>						
					{{ $pruebas->links() }}
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
