<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Registrar empresa</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <!----------------------------------------Empieza formulario---------------------------------------------------->
            <div class="modal-body">
                <form action="/empresas/" method="POST">
                    @csrf
                    <div class="tabpanel">
                        <ul class="nav nav-tabs" role="tablist">
							<li class="nav-item" role="presentation">
								<a class="nav-link active" href="#general" data-toggle="tab" role="tab" aria-selected="false">Datos Generales</a>
							</li>
                            <li class="nav-item" role="presentation">
                                <a class="nav-link" href="#Opcionales" data-toggle="tab" role="tab" aria-selected="false">Datos Opcionales</a>
                             </li>
						</ul>
                        <div class="tab-content">
                            <div id="general" role="tabpanel" class="tab-pane active">
                                <div class="card">
                                    <div class="card-body" id="ubicar">
                                        
                                        <!----------------------Nombre de Empresa---------------->
                                        <div class="form-group">
                                            <label>Empresa:</label>
                                            <input minlength="2" maxlength="50" onkeypress="return soloLetras(event)" placeholder="Nombre de la empresa" autocomplete="off" required class="form-control text-box single-line" id="NombreCreate" name="NombreCreate" type="text">
                                        </div>
                                        <!----Telefono 1------------------->
										<div class="form-group">
                                            <label class="control-label" for="FecNac">Teléfono 1:</label>
                                            <input autofocus class="form-control text-box single-line" id="tel1Create" minlength="10" maxlength="20" name="tel1Create" type="tel">  
                                        </div>
                                        <!------------------Teléfono 2--------------------->
                                        <div class="form-group">
                                            <label class="control-label" for="Sexo">Teléfono 2:</label><b class="obligatorio">(*)</b>
                                            <input class="form-control text-box single-line" id="tel2Create" minlength="10" maxlength="20"  name="tel2Create" type="tel" >
                                        </div>
                                        <!------------------Tipo de Empresa:--------------------->
										{{-- <div class="form-group">
                                            <label class="control-label" for="Empresaestudio">Departamento:</label><b class="obligatorio">(*)</b>
                                            <select class="form-control text-box single-line" id="Tipo_EmpresaCreate" name="Tipo_EmpresaCreate" maxlength="12"  type="text" >
                                                <option value="---">Elegir...</option>
                                                <option value="Pública">Pública</option>
                                                <option value="Privada">Privada</option>
                                            </select>   
                                        </div> --}}
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
                                        <!--------------------direccionCreate------------------->
                                        <div class="form-group">                           
                                            <label class="control-label" for="rfc">Dirección:</label>
                                            <input autocomplete="off" class="form-control text-box single-line validanumericos" id="direccionCreate" maxlength="100" name="direccionCreate" type="text" >                            
                                        </div>
                                        <!--------------------Numero------------------->
                                        {{-- <div class="form-group">                           
                                            <label class="control-label" for="rfc">Número:</label>
                                            <input autocomplete="off" class="form-control text-box single-line validanumericos" id="NumeroCreate" maxlength="100" name="NumeroCreate" type="text" >                            
                                        </div> --}}
                                        <!--------------------Colonia------------------->
                                        {{-- <div class="form-group">                           
                                            <label class="control-label" for="rfc">Colonia:</label>
                                            <input autocomplete="off" class="form-control text-box single-line validanumericos" id="ColoniaCreate" maxlength="100" name="ColoniaCreate" type="text" >                            
                                        </div> --}}
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