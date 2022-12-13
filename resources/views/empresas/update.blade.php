<div class="modal fade" id="updateModal" tabindex="-1" role="dialog" aria-labelledby="updateModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="updateModalLabel">Editar empresa</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <!----------------------------------------Empieza formulario---------------------------------------------------->
            <div class="modal-body">
                <form enctype="multipart/form-data" action="" method="POST">
                    @csrf
                    @method('PUT')
                    <div class="tabpanel">
                        <ul class="nav nav-tabs" role="tablist">
							<li class="nav-item" role="presentation">
								<a class="nav-link active" href="#general2" data-toggle="tab" role="tab" aria-selected="false">Datos Generales</a>
							</li>
                            <li class="nav-item" role="presentation">
                                <a class="nav-link" href="#Opcionales2" data-toggle="tab" role="tab" aria-selected="false">Datos Opcionales</a>
                             </li>
						</ul>
                        <div class="tab-content">
                            <div id="general2" role="tabpanel" class="tab-pane active">
                                <div class="card">
                                    <div class="card-body">
                                        
                                        <!----------------------Nombre de Empresa---------------->
                                        <div class="form-group">
                                            <label>Empresa:</label>
                                            <input minlength="2" maxlength="50" onkeypress="return soloLetras(event)" placeholder="Nombre de la empresa" autocomplete="off" required class="form-control text-box single-line" id="NombreEdit" name="NombreEdit" type="text">
                                        </div>
                                        <!----Telefono 1------------------->
										<div class="form-group">
                                            <label class="control-label" for="FecNac">Teléfono 1:</label>
                                            <input autofocus class="form-control text-box single-line" id="tel1Edit" minlength="10" maxlength="20" name="tel1Edit" type="tel">  
                                        </div>
                                        <!------------------Teléfono 2--------------------->
                                        <div class="form-group">
                                            <label class="control-label" for="Sexo">Teléfono 2:</label><b class="obligatorio">(*)</b>
                                            <input class="form-control text-box single-line" id="tel2Edit" minlength="10" maxlength="20"  name="tel2Edit" type="tel" >
                                        </div>
                                        <!------------------Tipo de Empresa:--------------------->
										{{-- <div class="form-group">
                                            <label class="control-label" for="Empresaestudio">Departamento:</label><b class="obligatorio">(*)</b>
                                            <select class="form-control text-box single-line" id="Tipo_EmpresaEdit" name="Tipo_EmpresaEdit" maxlength="12"  type="text" >
                                                <option value="---">Elegir...</option>
                                                <option value="Pública">Pública</option>
                                                <option value="Privada">Privada</option>
                                            </select>   
                                        </div> --}}
                                    </div>                                                               
                                </div>
                            </div>
                            <div role="tabpanel" class="tab-pane" id="Opcionales2" >
                                <div class="card">
                                    <div class="card-body">
                                        <!--------------------RFC------------------->
                                        <div class="form-group">                           
                                            <label class="control-label" for="rfc">RFC:</label>
                                            <input autocomplete="off" class="form-control text-box single-line validanumericos" id="rfcEdit" minlength="15" maxlength="15" name="rfcEdit" type="text" >                            
                                        </div>
                                        <!--------------------direccionEdit------------------->
                                        <div class="form-group">                           
                                            <label class="control-label" for="rfc">Dirección:</label>
                                            <input autocomplete="off" class="form-control text-box single-line validanumericos" id="direccionEdit" maxlength="100" name="direccionEdit" type="text" >                            
                                        </div>
                                        <!--------------------Numero------------------->
                                        {{-- <div class="form-group">                           
                                            <label class="control-label" for="rfc">Número:</label>
                                            <input autocomplete="off" class="form-control text-box single-line validanumericos" id="NumeroEdit" maxlength="100" name="NumeroEdit" type="text" >                            
                                        </div> --}}
                                        <!--------------------Colonia------------------->
                                        {{-- <div class="form-group">                           
                                            <label class="control-label" for="rfc">Colonia:</label>
                                            <input autocomplete="off" class="form-control text-box single-line validanumericos" id="ColoniaEdit" maxlength="100" name="ColoniaEdit" type="text" >                            
                                        </div> --}}
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