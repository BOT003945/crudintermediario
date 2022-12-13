@extends('layouts.app')
@section('title', __('Valoresreferenciums'))
<div class="container-fluid">
	@include('livewire.valoresreferencias.create')
	@include('livewire.valoresreferencias.update')
	<table class="table table-bordered table-sm">
		<thead class="thead">
			<tr> 
				<th>Sexo</th>
				<th>Edad</th>
				<th>Edadmin</th>
				<th>Edadmax</th>
				<th>Valmin</th>
				<th>Valmax</th>
				<td>ACTIONS</td>
			</tr>
		</thead>
		<tbody>
			@foreach($valoresreferencia as $row)
			<tr>
				<td>{{ $row->Sexo }}</td>
				<td>{{ $row->Edad }}</td>
				<td>{{ $row->EdadMin }}</td>
				<td>{{ $row->EdadMax }}</td>
				<td>{{ $row->ValMin }}</td>
				<td>{{ $row->ValMax }}</td>
				<td width="90">
				
					<a data-toggle="modal" data-target="#updateModal" class="dropdown-item" wire:click="edit({{$row->id}})">
						<i class="fa fa-edit"></i>
					</a>							 
					<a class="dropdown-item" onclick="confirm('Confirm Delete Valoresreferencium id {{$row->id}}? \nDeleted Valoresreferenciums cannot be recovered!')||event.stopImmediatePropagation()" wire:click="destroy({{$row->id}})">
						<i class="fa fa-trash"></i>
					</a>   
					
				</td>
			</tr>
			@endforeach
		</tbody>
	</table>						
	
</div>
