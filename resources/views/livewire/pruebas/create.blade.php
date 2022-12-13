<!-- Modal -->
<div wire:ignore.self class="modal fade" id="createDataModal" data-backdrop="static" tabindex="-1" role="dialog" aria-labelledby="createDataModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="createDataModalLabel">Create New Prueba</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                     <span aria-hidden="true close-btn">×</span>
                </button>
            </div>
           <div class="modal-body">
				<form>
            <div class="form-group">
                <label for="abreviatura"></label>
                <input wire:model="abreviatura" type="text" class="form-control" id="abreviatura" placeholder="Abreviatura">@error('abreviatura') <span class="error text-danger">{{ $message }}</span> @enderror
            </div>
            <div class="form-group">
                <label for="cveprueba"></label>
                <input wire:model="cveprueba" type="text" class="form-control" id="cveprueba" placeholder="Cveprueba">@error('cveprueba') <span class="error text-danger">{{ $message }}</span> @enderror
            </div>
            <div class="form-group">
                <label for="Decimales"></label>
                <input wire:model="Decimales" type="text" class="form-control" id="Decimales" placeholder="Decimales">@error('Decimales') <span class="error text-danger">{{ $message }}</span> @enderror
            </div>
            <div class="form-group">
                <label for="Descripcion"></label>
                <input wire:model="Descripcion" type="text" class="form-control" id="Descripcion" placeholder="Descripcion">@error('Descripcion') <span class="error text-danger">{{ $message }}</span> @enderror
            </div>
            <div class="form-group">
                <label for="Prueba"></label>
                <input wire:model="Prueba" type="text" class="form-control" id="Prueba" placeholder="Prueba">@error('Prueba') <span class="error text-danger">{{ $message }}</span> @enderror
            </div>
            <div class="form-group">
                <label for="Medida"></label>
                <input wire:model="Medida" type="text" class="form-control" id="Medida" placeholder="Medida">@error('Medida') <span class="error text-danger">{{ $message }}</span> @enderror
            </div>
            <div class="form-group">
                <label for="hoja_trabajo"></label>
                <input wire:model="hoja_trabajo" type="text" class="form-control" id="hoja_trabajo" placeholder="Hoja Trabajo">@error('hoja_trabajo') <span class="error text-danger">{{ $message }}</span> @enderror
            </div>
            <div class="form-group">
                <label for="id_Departamento"></label>
                <input wire:model="id_Departamento" type="text" class="form-control" id="id_Departamento" placeholder="Id Departamento">@error('id_Departamento') <span class="error text-danger">{{ $message }}</span> @enderror
            </div>
            <div class="form-group">
                <label for="id_Metodo"></label>
                <input wire:model="id_Metodo" type="text" class="form-control" id="id_Metodo" placeholder="Id Metodo">@error('id_Metodo') <span class="error text-danger">{{ $message }}</span> @enderror
            </div>
            <div class="form-group">
                <label for="impr_metodo_Resultado"></label>
                <input wire:model="impr_metodo_Resultado" type="text" class="form-control" id="impr_metodo_Resultado" placeholder="Impr Metodo Resultado">@error('impr_metodo_Resultado') <span class="error text-danger">{{ $message }}</span> @enderror
            </div>
            <div class="form-group">
                <label for="imprimir_negritas"></label>
                <input wire:model="imprimir_negritas" type="text" class="form-control" id="imprimir_negritas" placeholder="Imprimir Negritas">@error('imprimir_negritas') <span class="error text-danger">{{ $message }}</span> @enderror
            </div>
            <div class="form-group">
                <label for="impr_Nota_Resultado"></label>
                <input wire:model="impr_Nota_Resultado" type="text" class="form-control" id="impr_Nota_Resultado" placeholder="Impr Nota Resultado">@error('impr_Nota_Resultado') <span class="error text-danger">{{ $message }}</span> @enderror
            </div>
            <div class="form-group">
                <label for="formula"></label>
                <input wire:model="formula" type="text" class="form-control" id="formula" placeholder="Formula">@error('formula') <span class="error text-danger">{{ $message }}</span> @enderror
            </div>
            <div class="form-group">
                <label for="antibiograma"></label>
                <input wire:model="antibiograma" type="text" class="form-control" id="antibiograma" placeholder="Antibiograma">@error('antibiograma') <span class="error text-danger">{{ $message }}</span> @enderror
            </div>
            <div class="form-group">
                <label for="notas"></label>
                <input wire:model="notas" type="text" class="form-control" id="notas" placeholder="Notas">@error('notas') <span class="error text-danger">{{ $message }}</span> @enderror
            </div>
            <div class="form-group">
                <label for="notas_internas"></label>
                <input wire:model="notas_internas" type="text" class="form-control" id="notas_internas" placeholder="Notas Internas">@error('notas_internas') <span class="error text-danger">{{ $message }}</span> @enderror
            </div>
            <div class="form-group">
                <label for="sexo"></label>
                <input wire:model="sexo" type="text" class="form-control" id="sexo" placeholder="Sexo">@error('sexo') <span class="error text-danger">{{ $message }}</span> @enderror
            </div>
            <div class="form-group">
                <label for="TipoMuestra"></label>
                <input wire:model="TipoMuestra" type="text" class="form-control" id="TipoMuestra" placeholder="Tipomuestra">@error('TipoMuestra') <span class="error text-danger">{{ $message }}</span> @enderror
            </div>
            <div class="form-group">
                <label for="Tipo_Valor"></label>
                <input wire:model="Tipo_Valor" type="text" class="form-control" id="Tipo_Valor" placeholder="Tipo Valor">@error('Tipo_Valor') <span class="error text-danger">{{ $message }}</span> @enderror
            </div>
            <div class="form-group">
                <label for="valor_restringido"></label>
                <input wire:model="valor_restringido" type="text" class="form-control" id="valor_restringido" placeholder="Valor Restringido">@error('valor_restringido') <span class="error text-danger">{{ $message }}</span> @enderror
            </div>
            <div class="form-group">
                <label for="tipo_valor_normalidad"></label>
                <input wire:model="tipo_valor_normalidad" type="text" class="form-control" id="tipo_valor_normalidad" placeholder="Tipo Valor Normalidad">@error('tipo_valor_normalidad') <span class="error text-danger">{{ $message }}</span> @enderror
            </div>
            <div class="form-group">
                <label for="valor_normalidad_texto"></label>
                <input wire:model="valor_normalidad_texto" type="text" class="form-control" id="valor_normalidad_texto" placeholder="Valor Normalidad Texto">@error('valor_normalidad_texto') <span class="error text-danger">{{ $message }}</span> @enderror
            </div>
            <div class="form-group">
                <label for="indicaciones"></label>
                <input wire:model="indicaciones" type="text" class="form-control" id="indicaciones" placeholder="Indicaciones">@error('indicaciones') <span class="error text-danger">{{ $message }}</span> @enderror
            </div>
            <div class="form-group">
                <label for="TipoResultado"></label>
                <input wire:model="TipoResultado" type="text" class="form-control" id="TipoResultado" placeholder="Tiporesultado">@error('TipoResultado') <span class="error text-danger">{{ $message }}</span> @enderror
            </div>
            <div class="form-group">
                <label for="dias"></label>
                <input wire:model="dias" type="text" class="form-control" id="dias" placeholder="Dias">@error('dias') <span class="error text-danger">{{ $message }}</span> @enderror
            </div>
            <div class="form-group">
                <label for="horas"></label>
                <input wire:model="horas" type="text" class="form-control" id="horas" placeholder="Horas">@error('horas') <span class="error text-danger">{{ $message }}</span> @enderror
            </div>
            <div class="form-group">
                <label for="minutos"></label>
                <input wire:model="minutos" type="text" class="form-control" id="minutos" placeholder="Minutos">@error('minutos') <span class="error text-danger">{{ $message }}</span> @enderror
            </div>
            <div class="form-group">
                <label for="Autoanalizador"></label>
                <input wire:model="Autoanalizador" type="text" class="form-control" id="Autoanalizador" placeholder="Autoanalizador">@error('Autoanalizador') <span class="error text-danger">{{ $message }}</span> @enderror
            </div>
            <div class="form-group">
                <label for="Resultado_default"></label>
                <input wire:model="Resultado_default" type="text" class="form-control" id="Resultado_default" placeholder="Resultado Default">@error('Resultado_default') <span class="error text-danger">{{ $message }}</span> @enderror
            </div>
            <div class="form-group">
                <label for="sucursal"></label>
                <input wire:model="sucursal" type="text" class="form-control" id="sucursal" placeholder="Sucursal">@error('sucursal') <span class="error text-danger">{{ $message }}</span> @enderror
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
