<!-- Modal -->
<div wire:ignore.self class="modal fade" id="updateModal" data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="updateModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="createDataModalLabel">Editar Estudio</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                     <span aria-hidden="true close-btn">×</span>
                </button>
            </div>
           <div class="modal-body">
				
                    <div class="card-body">
                        <form>
                            <ul class="nav nav-tabs" role="tablist">
                                <li class="nav-item" role="presentation">
                                    <a class="nav-link active" href="#Primero" data-toggle="tab" role="tab" aria-selected="false">Datos del Estudio</a>
                                </li>
                                
                           </ul>        
                        <!--------------------Nombre------------------->
                        <div class="form-group">
                           <label class="control-label">Nombre del estudio:</label><b class="obligatorio">(*)</b>
                           <input autocomplete="off" onkeypress="return soloLetras(event)" wire:model="Nombre" class="form-control text-box single-line" id="Nombre1" minlength="2" maxlength="50" name="Nombre1" type="text" tabindex="4">@error('Nombre') <span class="error text-danger">{{ $message }}</span> @enderror
                        </div>
                        <!--------------------Abreviatura------------------->
                        <div class="form-group">
                           <label class="control-label">Abreviatura:</label><b class="obligatorio">(*)</b>
                           <input autocomplete="off" onkeypress="return soloLetras(event)" class="form-control text-box single-line" id="Abreviatura1" minlength="2" maxlength="10" name="Abreviatura1" type="text" wire:model="Abreviatura" tabindex="5">@error('Abreviatura') <span class="error text-danger">{{ $message }}</span> @enderror
                        </div>
                        <!--------------------Tomas------------------->
                        <div class="form-group">
                           <label class="control-label">Tomas:</label>
                           <input class="form-control text-box single-line" id="Tomas1" maxlength="2" name="Tomas1" type="text" wire:model="Tomas" tabindex="6">@error('Tomas') <span class="error text-danger">{{ $message }}</span> @enderror
                           <p class="warnings" id="warning_Materno"></p>
                       </div>
                       <!--------------------Frecuencia------------------->
                        <div class="form-group">
                           <label class="control-label">Frecuencia:</label>
                           <input class="form-control text-box single-line" id="Frecuencia1" maxlength="10" name="Frecuencia1" type="text"  wire:model="Frecuencia" tabindex="6">
                        </div>
                        <!--------------------TiempoProceso------------------->
                        <div class="form-group">
                            <label class="control-label">Tiempo de Proceso:</label>
                            <input autocomplete="off" class="form-control text-box single-line" id="TiempoProceso1" maxlength="30" name="TiempoProceso1" type="text"  wire:model="TiempoProceso" tabindex="6">
                         </div>
                        <!------------------Departamento--------------------->
                        <div class="form-group">
                           <label class="control-label" for="EmpresaPaciente">Departamento:</label><b class="obligatorio">(*)</b>
                           <select class="form-control select2-hidden-accessible"  wire:model="depto" id="Depto1" name="Depto1" tabindex="-1" aria-hidden="true">
                               <option value="163">Elegir...</option>
                               @foreach($deptos as $depto)
                               <option value="{{$depto->id}}">{{$depto->Depto}}</option>
                               @endforeach
                           </select> 
                        </div>
                        <!------------------TipoMuestra--------------------->
                        <div class="form-group">
                            <label class="control-label">Tipo de Muestra:</label><b class="obligatorio">(*)</b>
                            <select class="form-control select2-hidden-accessible"  wire:model="TipoMuestra" id="TipoMuestra1" name="TipoMuestra1" tabindex="-1" aria-hidden="true">
                                <option>...</option>
                                <option>Sangre Total</option>
                               
                            </select>
                        </div>
                        <!------------------Noaplicadescuento--------------------->
                        <div class="form-group">
                            <input data-val="true" id="Noaplicadescuento1" name="Noaplicadescuento1" type="checkbox" value="1" wire:model="Noaplicadescuento">
                            <label class="form-check-label">No aplica descuento</label>
                        </div>
                    </form>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary close-btn" data-dismiss="modal">Close</button>
                        <button type="button" wire:click.prevent="update()" class="btn btn-primary" data-dismiss="modal">Save</button>
                    </div>
                    </div>                                                               
               </div>

                
            </div>
            
        </div>
</div>