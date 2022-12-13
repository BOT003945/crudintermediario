<!-- Modal -->
<div class="modal fade" id="updateModal" tabindex="-1" role="dialog" aria-labelledby="updateModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="updateModalLabel">Editar paciente</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <!----------------------------------------Empieza formulario---------------------------------------------------->
            <div class="modal-body">
                <form id="formulario" enctype="multipart/form-data" action="" method="POST">
                    @csrf
                    @method('PUT')
                    <div class="tabpanel">
                        <ul class="nav nav-tabs" role="tablist">
							<li class="nav-item" role="presentation">
								<a class="nav-link active" href="#Primero" data-toggle="tab" role="tab" aria-selected="false">Datos Personales</a>
							</li>
							<li class="nav-item" role="presentation">
							   <a class="nav-link" href="#Opcional" data-toggle="tab" role="tab" aria-selected="false">Datos Opcionales</a>
							</li>
						</ul>
                        <div class="tab-content">
                            <div id="Primero" role="tabpanel" class="tab-pane active">
                                <div class="card">
                                    <div class="card-body">
                                        
                                        <!----------------------Paciente---------------->
                                        <div class="form-group">
                                            <label>Paciente:</label>
                                            <input required class="form-control" id="PacienteEdit" name="PacienteEdit" maxlength="150">
                                        </div>
                                        <!----Fecha de nacimiento------------------->
										<div class="form-group">
                                            <label class="control-label" for="FecNac">Fecha de nacimiento:</label>
                                            <input required class="form-control text-box single-line" id="FecNacEdit" maxlength="10" name="FecNacEdit" type="date">
                                        </div>
                                        <!------------------Sexo--------------------->
                                        <div class="form-group">
                                            <label class="control-label" for="Sexo">Género:</label><b class="obligatorio">(*)</b>
                                            <div class="form-check">
                                                <input required class="form-check-input" id="SexoEdit1" name="SexoEdit" type="radio" value="H"><label class="form-check-label">H</label>
                                            </div>
                                            <div class="form-check">
                                                <input class="form-check-input" id="SexoEdit" name="SexoEdit" type="radio" value="M" required><label class="form-check-label">M</label>
                                            </div>
                                        </div>
                                        <!------------------EmpresaEdit--------------------->
										<div class="form-group">
                                            <label class="control-label" for="Empresaestudio">Empresa:</label><b class="obligatorio">(*)</b>
                                            <select class="form-control select2-hidden-accessible" id="EmpresaEdit" name="EmpresaEdit" tabindex="-1" aria-hidden="true">
                                                @foreach($empresas as $empresa)
                                                <option value="{{$empresa->idEmpresa}}">{{$empresa->Nombre}}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                        <!------------------Teléfono--------------------->
                                        <div class="form-group">
                                            <label class="control-label" for="Telefono">Teléfono:</label><br>
                                            <input autocomplete="off" class="form-control text-box single-line validanumericos" id="TelefonoEdit" minlength="10" maxlength="10" name="TelefonoEdit" type="tel" >
                                        </div>
                                        <!------------------email--------------------->
                                        <div class="form-group">
                                            <label class="control-label" for="email">Email:</label>
                                            <input class="form-control text-box single-line" id="emailEdit" maxlength="100" name="emailEdit" type="email" >
                                        </div>
                                    </div>                                                               
                                </div>
                            </div>
                            <div role="tabpanel" class="tab-pane" id="Opcional" >
                                <div class="card">
                                    <div class="card-body">
                                        <!--------------------RFC------------------->
                                        <div class="form-group">                           
                                            <label class="control-label" for="rfc">RFC:</label>
                                            <input autocomplete="off" class="form-control text-box single-line validanumericos" id="rfcEdit" minlength="15" maxlength="15" name="rfcEdit" type="text" >                            
                                        </div>
                                        <!--------------------Calle------------------->
                                        <div class="form-group">                           
                                            <label class="control-label" for="rfc">Calle:</label>
                                            <input autocomplete="off" class="form-control text-box single-line validanumericos" id="calleEdit" maxlength="100" name="calleEdit" type="text" >                            
                                        </div>
                                        <!--------------------Numero------------------->
                                        <div class="form-group">                           
                                            <label class="control-label" for="rfc">Número:</label>
                                            <input autocomplete="off" class="form-control text-box single-line validanumericos" id="NumeroEdit" maxlength="100" name="NumeroEdit" type="text" >                            
                                        </div>
                                        <!--------------------Colonia------------------->
                                        <div class="form-group">                           
                                            <label class="control-label" for="rfc">Colonia:</label>
                                            <input autocomplete="off" class="form-control text-box single-line validanumericos" id="ColoniaEdit" maxlength="100" name="ColoniaEdit" type="text" >                            
                                        </div>
                                         <!--------------------Código Postal------------------->
                                         <div class="form-group">                           
                                            <label class="control-label" for="cp">Código Postal:</label>
                                            <input autocomplete="off" class="form-control text-box single-line validanumericos" id="CpEdit" minlength="5" maxlength="5" name="CpEdit" type="text" >                            
                                         </div>
                                        <!--------------------País------------------->
                                        <div class="form-group">                           
                                            <label class="control-label" for="pais">País:</label>
                                            <input autocomplete="off" onkeypress="return soloLetras(event)" class="form-control text-box single-line" id="paisEdit" minlength="2" maxlength="100" name="paisEdit" type="text" >          
                                        </div>
                                         <!--------------------Estado------------------->
                                        <div class="form-group">                           
                                           <label class="control-label" for="Estado">Estado:</label>
                                           <input autocomplete="off" onkeypress="return soloLetras(event)" class="form-control text-box single-line" id="EstadoEdit" minlength="2" maxlength="100" name="EstadoEdit" type="text" >          
                                        </div>
                                        <!--------------------Municipio------------------->
                                        <div class="form-group">                           
                                           <label class="control-label" for="Municipio">Municipio:</label>
                                           <input autocomplete="off" onkeypress="return soloLetras(event)" class="form-control text-box single-line" id="MunicipioEdit" minlength="2" maxlength="100" name="MunicipioEdit" type="text" >                            
                                        </div>
                                    </div>
                               </div>
                            </div>
                            <div style="text-align:right">
                                <a href=""><button type="button" class="btn btn-secondary" data-dismiss="modal"><i class="far fa fa-arrow-left"></i> Cancelar</button></a>
                                <button type="submit" class="btn btn-primary close-modal" >Guardar</button>         
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
