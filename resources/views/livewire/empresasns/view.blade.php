@section('title', __('Empresasns'))
<div class="container-fluid">
	<div class="row justify-content-center">
		<div class="col-md-12">
			<div class="card">
				<div class="card-header">
					<div style="display: flex; justify-content: space-between; align-items: center;">
						<div class="float-left">
							<h4><i class="fab fa-laravel text-info"></i>
							Empresasn Listing </h4>
						</div>
						<div wire:poll.60s>
							<code><h5>{{ now()->format('H:i:s') }} UTC</h5></code>
						</div>
						@if (session()->has('message'))
						<div wire:poll.4s class="btn btn-sm btn-success" style="margin-top:0px; margin-bottom:0px;"> {{ session('message') }} </div>
						@endif
						<div>
							<input wire:model='keyWord' type="text" class="form-control" name="search" id="search" placeholder="Search Empresasns">
						</div>
						<div class="btn btn-sm btn-info" data-toggle="modal" data-target="#createDataModal">
						<i class="fa fa-plus"></i>  Add Empresasns
						</div>
					</div>
				</div>
				
				<div class="card-body">
						@include('livewire.empresasns.create')
						@include('livewire.empresasns.update')
				<div class="table-responsive">
					<table class="table table-bordered table-sm">
						<thead class="thead">
							<tr> 
								<td>#</td> 
								<th>Idempresa</th>
								<th>Sucursal</th>
								<th>Nombre</th>
								<th>Cp</th>
								<th>Tel1</th>
								<th>Tel2</th>
								<th>Fec Convenio</th>
								<th>Tipo Tarifa</th>
								<th>Contacto</th>
								<th>Colonia</th>
								<th>Descuento</th>
								<th>Pacientesn Mes</th>
								<th>Pacientesn Acum</th>
								<th>Importe Mes</th>
								<th>Importe Acum</th>
								<th>Saldo</th>
								<th>Rfc</th>
								<th>Direccion</th>
								<th>Ciudad</th>
								<th>Entidad</th>
								<th>Tipo Empresa</th>
								<th>Fecha Corte</th>
								<th>Dias Pago</th>
								<th>Acum Estudios</th>
								<th>Cla Ant</th>
								<th>Usatarifade</th>
								<th>Siusa</th>
								<th>Numero</th>
								<th>Pais</th>
								<th>Fecha Act</th>
								<th>Fecha Sync</th>
								<th>Flag Sucursales</th>
								<th>Eliminar</th>
								<td>ACTIONS</td>
							</tr>
						</thead>
						<tbody>
							@foreach($empresasns as $row)
							<tr>
								<td>{{ $loop->iteration }}</td> 
								<td>{{ $row->idEmpresa }}</td>
								<td>{{ $row->sucursal }}</td>
								<td>{{ $row->Nombre }}</td>
								<td>{{ $row->cp }}</td>
								<td>{{ $row->tel1 }}</td>
								<td>{{ $row->tel2 }}</td>
								<td>{{ $row->Fec_convenio }}</td>
								<td>{{ $row->tipo_tarifa }}</td>
								<td>{{ $row->contacto }}</td>
								<td>{{ $row->colonia }}</td>
								<td>{{ $row->descuento }}</td>
								<td>{{ $row->pacientesN_Mes }}</td>
								<td>{{ $row->pacientesN_Acum }}</td>
								<td>{{ $row->Importe_Mes }}</td>
								<td>{{ $row->Importe_Acum }}</td>
								<td>{{ $row->Saldo }}</td>
								<td>{{ $row->rfc }}</td>
								<td>{{ $row->direccion }}</td>
								<td>{{ $row->Ciudad }}</td>
								<td>{{ $row->Entidad }}</td>
								<td>{{ $row->Tipo_Empresa }}</td>
								<td>{{ $row->Fecha_Corte }}</td>
								<td>{{ $row->dias_pago }}</td>
								<td>{{ $row->Acum_estudios }}</td>
								<td>{{ $row->Cla_Ant }}</td>
								<td>{{ $row->UsaTarifaDe }}</td>
								<td>{{ $row->SiUsa }}</td>
								<td>{{ $row->numero }}</td>
								<td>{{ $row->pais }}</td>
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
									<a class="dropdown-item" onclick="confirm('Confirm Delete Empresasn id {{$row->id}}? \nDeleted Empresasns cannot be recovered!')||event.stopImmediatePropagation()" wire:click="destroy({{$row->id}})"><i class="fa fa-trash"></i> Delete </a>   
									</div>
								</div>
								</td>
							@endforeach
						</tbody>
					</table>						
					{{ $empresasns->links() }}
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
