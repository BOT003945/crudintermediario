<!-- Modal -->
<div wire:ignore.self class="modal fade" id="createDataModal" data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="createDataModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="createDataModalLabel">Create New Formato</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                     <span aria-hidden="true close-btn">×</span>
                </button>
            </div>
           <div class="modal-body">
				<form>
            <div class="form-group">
                <label for="sucursal"></label>
                <input wire:model="sucursal" type="text" class="form-control" id="sucursal" placeholder="Sucursal">@error('sucursal') <span class="error text-danger">{{ $message }}</span> @enderror
            </div>
            <div class="form-group">
                <label for="id_Estudio"></label>
                <input wire:model="id_Estudio" type="text" class="form-control" id="id_Estudio" placeholder="Id Estudio">@error('id_Estudio') <span class="error text-danger">{{ $message }}</span> @enderror
            </div>
            <div class="form-group">
                <label for="idprueba"></label>
                <input wire:model="idprueba" type="text" class="form-control" id="idprueba" placeholder="Idprueba">@error('idprueba') <span class="error text-danger">{{ $message }}</span> @enderror
            </div>
            <div class="form-group">
                <label for="Prueba"></label>
                <input wire:model="Prueba" type="text" class="form-control" id="Prueba" placeholder="Prueba">@error('Prueba') <span class="error text-danger">{{ $message }}</span> @enderror
            </div>
            <div class="form-group">
                <label for="Valor1"></label>
                <input wire:model="Valor1" type="text" class="form-control" id="Valor1" placeholder="Valor1">@error('Valor1') <span class="error text-danger">{{ $message }}</span> @enderror
            </div>
            <div class="form-group">
                <label for="Valor2"></label>
                <input wire:model="Valor2" type="text" class="form-control" id="Valor2" placeholder="Valor2">@error('Valor2') <span class="error text-danger">{{ $message }}</span> @enderror
            </div>
            <div class="form-group">
                <label for="Medida"></label>
                <input wire:model="Medida" type="text" class="form-control" id="Medida" placeholder="Medida">@error('Medida') <span class="error text-danger">{{ $message }}</span> @enderror
            </div>
            <div class="form-group">
                <label for="tipoFormato"></label>
                <input wire:model="tipoFormato" type="text" class="form-control" id="tipoFormato" placeholder="Tipoformato">@error('tipoFormato') <span class="error text-danger">{{ $message }}</span> @enderror
            </div>
            <div class="form-group">
                <label for="Orden"></label>
                <input wire:model="Orden" type="text" class="form-control" id="Orden" placeholder="Orden">@error('Orden') <span class="error text-danger">{{ $message }}</span> @enderror
            </div>
            <div class="form-group">
                <label for="ClavePrueba"></label>
                <input wire:model="ClavePrueba" type="text" class="form-control" id="ClavePrueba" placeholder="Claveprueba">@error('ClavePrueba') <span class="error text-danger">{{ $message }}</span> @enderror
            </div>
            <div class="form-group">
                <label for="autoanalizador"></label>
                <input wire:model="autoanalizador" type="text" class="form-control" id="autoanalizador" placeholder="Autoanalizador">@error('autoanalizador') <span class="error text-danger">{{ $message }}</span> @enderror
            </div>
            <div class="form-group">
                <label for="TextoValores"></label>
                <input wire:model="TextoValores" type="text" class="form-control" id="TextoValores" placeholder="Textovalores">@error('TextoValores') <span class="error text-danger">{{ $message }}</span> @enderror
            </div>
            <div class="form-group">
                <label for="word"></label>
                <input wire:model="word" type="text" class="form-control" id="word" placeholder="Word">@error('word') <span class="error text-danger">{{ $message }}</span> @enderror
            </div>
            <div class="form-group">
                <label for="fecha_act"></label>
                <input wire:model="fecha_act" type="text" class="form-control" id="fecha_act" placeholder="Fecha Act">@error('fecha_act') <span class="error text-danger">{{ $message }}</span> @enderror
            </div>
            <div class="form-group">
                <label for="fecha_sync"></label>
                <input wire:model="fecha_sync" type="text" class="form-control" id="fecha_sync" placeholder="Fecha Sync">@error('fecha_sync') <span class="error text-danger">{{ $message }}</span> @enderror
            </div>
            <div class="form-group">
                <label for="flag_sucursales"></label>
                <input wire:model="flag_sucursales" type="text" class="form-control" id="flag_sucursales" placeholder="Flag Sucursales">@error('flag_sucursales') <span class="error text-danger">{{ $message }}</span> @enderror
            </div>
            <div class="form-group">
                <label for="eliminar"></label>
                <input wire:model="eliminar" type="text" class="form-control" id="eliminar" placeholder="Eliminar">@error('eliminar') <span class="error text-danger">{{ $message }}</span> @enderror
            </div>

                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary close-btn" data-dismiss="modal">Close</button>
                <button type="button" wire:click.prevent="store()" class="btn btn-primary close-modal">Save</button>
            </div>
        </div>
    </div>
</div>
