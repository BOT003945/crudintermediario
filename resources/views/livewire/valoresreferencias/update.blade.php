@extends('layouts.app')
<!-- Modal -->
<div wire:ignore.self class="modal fade" id="updateModal" data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="updateModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
       <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="updateModalLabel">Update Valoresreferencium</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span wire:click.prevent="cancel()" aria-hidden="true">×</span>
                </button>
            </div>
            <div class="modal-body">
                <form>
					<input type="hidden" wire:model="selected_id">
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
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" wire:click.prevent="cancel()" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="button" wire:click.prevent="update()" class="btn btn-primary" data-dismiss="modal">Save</button>
            </div>
       </div>
    </div>
</div>
