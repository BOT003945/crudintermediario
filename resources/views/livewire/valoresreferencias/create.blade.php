<!-- Modal -->
<div wire:ignore.self class="modal fade" id="createDataModal" data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="createDataModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="createDataModalLabel">Create New Valoresreferencium</h5>
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
                <label for="claveprueba"></label>
                <input wire:model="claveprueba" type="text" class="form-control" id="claveprueba" placeholder="Claveprueba">@error('claveprueba') <span class="error text-danger">{{ $message }}</span> @enderror
            </div>
            <div class="form-group">
                <label for="Sexo"></label>
                <input wire:model="Sexo" type="text" class="form-control" id="Sexo" placeholder="Sexo">@error('Sexo') <span class="error text-danger">{{ $message }}</span> @enderror
            </div>
            <div class="form-group">
                <label for="Edad"></label>
                <input wire:model="Edad" type="text" class="form-control" id="Edad" placeholder="Edad">@error('Edad') <span class="error text-danger">{{ $message }}</span> @enderror
            </div>
            <div class="form-group">
                <label for="EdadMin"></label>
                <input wire:model="EdadMin" type="text" class="form-control" id="EdadMin" placeholder="Edadmin">@error('EdadMin') <span class="error text-danger">{{ $message }}</span> @enderror
            </div>
            <div class="form-group">
                <label for="EdadMax"></label>
                <input wire:model="EdadMax" type="text" class="form-control" id="EdadMax" placeholder="Edadmax">@error('EdadMax') <span class="error text-danger">{{ $message }}</span> @enderror
            </div>
            <div class="form-group">
                <label for="ValMin"></label>
                <input wire:model="ValMin" type="text" class="form-control" id="ValMin" placeholder="Valmin">@error('ValMin') <span class="error text-danger">{{ $message }}</span> @enderror
            </div>
            <div class="form-group">
                <label for="ValMax"></label>
                <input wire:model="ValMax" type="text" class="form-control" id="ValMax" placeholder="Valmax">@error('ValMax') <span class="error text-danger">{{ $message }}</span> @enderror
            </div>
            <div class="form-group">
                <label for="TextoValores"></label>
                <input wire:model="TextoValores" type="text" class="form-control" id="TextoValores" placeholder="Textovalores">@error('TextoValores') <span class="error text-danger">{{ $message }}</span> @enderror
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
