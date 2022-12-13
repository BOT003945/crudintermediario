<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Registrar paciente</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <!----------------------------------------Empieza formulario---------------------------------------------------->
            <div class="modal-body">
                <form action="/pacientes/" method="POST">
                    @csrf
                    <div class="tabpanel">
                        <ul class="nav nav-tabs" role="tablist">
							<li class="nav-item" role="presentation">
								<a class="nav-link active" href="#Personales" data-toggle="tab" role="tab" aria-selected="false">Datos Personales</a>
							</li>
							<li class="nav-item" role="presentation">
							   <a class="nav-link" href="#Opcionales" data-toggle="tab" role="tab" aria-selected="false">Datos Opcionales</a>
							</li>
						</ul>
                        <div class="tab-content">
                            <div id="Personales" role="tabpanel" class="tab-pane active">
                                <div class="card" id="ubicar">
                                    <div class="card-body">
                                        
                                        <!----------------------Paciente---------------->
                                        <div class="form-group">
                                            <label>Paciente:</label>
                                            <input required class="form-control" id="PacienteCreate" name="PacienteCreate" minlength="2" maxlength="150">
                                        </div>
                                        <!----Fecha de nacimiento------------------->
										<div class="form-group">
                                            <label class="control-label" for="FecNac">Fecha de nacimiento:</label>
                                            <input required class="form-control text-box single-line" id="FecNacCreate" maxlength="10" name="FecNacCreate" type="date">
                                        </div>
                                        <!------------------Sexo--------------------->
                                        <div class="form-group">
                                            <label class="control-label" for="Sexo">Género:</label><b class="obligatorio">(*)</b>
                                            <div class="form-check">
                                                <input required class="form-check-input" id="SexoCreate" name="SexoCreate" type="radio" value="H" ><label class="form-check-label">H</label>
                                            </div>
                                            <div class="form-check">
                                                <input class="form-check-input" id="SexoCreate" name="SexoCreate" type="radio" value="M"  required><label class="form-check-label">M</label>
                                            </div>
                                        </div>
                                        <!------------------EmpresaEdit--------------------->
										<div class="form-group">
                                            <label class="control-label" for="Empresaestudio">Departamento:</label><b class="obligatorio">(*)</b>
                                            <select class="form-control select2-hidden-accessible" id="EmpresaCreate" name="EmpresaCreate" tabindex="-1" aria-hidden="true">
                                                @foreach($empresas as $empresa)
                                                <option value="{{$empresa->idEmpresa}}">{{$empresa->Nombre}}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                        <!------------------Teléfono--------------------->
                                        <div class="form-group">
                                            <label class="control-label" for="Telefono">Teléfono:</label><br>
                                            <input autocomplete="off" class="form-control text-box single-line validanumericos" id="TelefonoCreate" minlength="10" maxlength="10" name="TelefonoCreate" type="tel" >
                                        </div>
                                        <!------------------email--------------------->
                                        <div class="form-group">
                                            <label class="control-label" for="email">Email:</label>
                                            <input class="form-control text-box single-line" id="emailCreate" name="emailCreate" maxlength="100" type="email" >
                                        </div>
                                    </div>                                                               
                                </div>
                            </div>
                            <div role="tabpanel" class="tab-pane" id="Opcionales" >
                                <div class="card">
                                    <div class="card-body">
                                        <!--------------------RFC------------------->
                                        <div class="form-group">                           
                                            <label class="control-label" for="rfc">RFC:</label>
                                            <input autocomplete="off" class="form-control text-box single-line validanumericos" id="rfcCreate" minlength="15" maxlength="15" name="rfcCreate" type="text" >                            
                                        </div>
                                        <!--------------------Calle------------------->
                                        <div class="form-group">                           
                                            <label class="control-label" for="rfc">Calle:</label>
                                            <input autocomplete="off" class="form-control text-box single-line validanumericos" id="calleCreate" maxlength="100" name="calleCreate" type="text" >                            
                                        </div>
                                        <!--------------------Numero------------------->
                                        <div class="form-group">                           
                                            <label class="control-label" for="rfc">Número:</label>
                                            <input autocomplete="off" class="form-control text-box single-line validanumericos" id="NumeroCreate" maxlength="100" name="NumeroCreate" type="text" >                            
                                        </div>
                                        <!--------------------Colonia------------------->
                                        <div class="form-group">                           
                                            <label class="control-label" for="rfc">Colonia:</label>
                                            <input autocomplete="off" class="form-control text-box single-line validanumericos" id="ColoniaCreate" maxlength="100" name="ColoniaCreate" type="text" >                            
                                        </div>
                                         <!--------------------Código Postal------------------->
                                         <div class="form-group">                           
                                            <label class="control-label" for="cp">Código Postal:</label>
                                            <input autocomplete="off" class="form-control text-box single-line validanumericos" id="CpCreate" minlength="5" maxlength="5" name="CpCreate" type="text" >                            
                                         </div>
                                        <!--------------------País------------------->
                                        <div class="form-group">                           
                                            <label class="control-label" for="pais">País:</label>
                                            <input autocomplete="off" onkeypress="return soloLetras(event)" class="form-control text-box single-line" id="paisCreate" minlength="2" maxlength="100" name="paisCreate" type="text" >          
                                        </div>
                                         <!--------------------Estado------------------->
                                        <div class="form-group">                           
                                           <label class="control-label" for="Estado">Estado:</label>
                                           <input autocomplete="off" onkeypress="return soloLetras(event)" class="form-control text-box single-line" id="EstadoCreate" minlength="2" maxlength="100" name="EstadoCreate" type="text" >          
                                        </div>
                                        <!--------------------Municipio------------------->
                                        <div class="form-group">                           
                                           <label class="control-label" for="Municipio">Municipio:</label>
                                           <input autocomplete="off" onkeypress="return soloLetras(event)" class="form-control text-box single-line" id="MunicipioCreate" minlength="2" maxlength="100" name="MunicipioCreate" type="text" >                            
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