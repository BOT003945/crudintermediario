<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">   
    <div class="modal-dialog" role="document">
        <div class="modal-content">
           <div class="modal-header">
               <h5 class="modal-title" id="exampleModalLabel"><h2>Valores de Normalidad</h2></h5>
               <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
               </button>
            </div>
           <div class="modal-body">
                    <div class="tab-content">
                        <div role="tabpanel" class="tab-pane active" id="Primero">
                           <div class="card">
                                <div class="card-body">
                                    
                                    <input id="claveprueba" name="claveprueba" hidden {{-- value="{{$prueba->id}}" --}}>
                                    <!----------------------Sexo---------------->
                                    <div class="form-group">
                                        <label class="float-left" for="descripcion">Sexo:</label>
                                        <select class="form-control" id="sexovalref" name="sexovalref" autofocus>
                                          <option value="Indistinto">Elige</option>
                                          <option value="Indistinto">Indistinto</option>
                                          <option value="Femenino">Femenino</option>                                        
                                          <option value="Masculino">Masculino</option>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label class="float-left" for="descripcion">Unidad:</label>
                                        <select class="form-control" id="Edad" name="Edad">
                                            <option value="Días">Días</option>
                                            <option value="Meses">Meses</option>                                        
                                            <option value="Años">Años</option>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label class="float-left" for="descripcion">Edad Mínima:</label>
                                        <input value="1" class="form-control" id="EdadMin" name="EdadMin" type="number" max="100" >
                                    </div>
                                    <div class="form-group">
                                        <label class="float-left" for="descripcion">Edad Máxima:</label>
                                        <input value="120" class="form-control" id="EdadMax" name="EdadMax" type="number" max="120" >
                                    </div>
                                    <div class="form-group">
                                        <label class="float-left" for="descripcion">Val.Mínima:</label>
                                        <input class="form-control" id="RefMin" name="RefMin" step="0.01" value="0.00" placeholder="0.00" type="number" max="100" >
                                    </div>
                                    <div class="form-group">
                                        <label class="float-left" for="descripcion">Val.Máxima:</label>
                                        <input class="form-control" id="RefMax" name="RefMax" step="0.01" value="0.00" placeholder="0.00" type="number" max="100" >
                                    </div>                                    
                                </div>                                                               
                            </div>
                        </div>
                    <div style="text-align:left" class="card-header">
                        <a href="/pruebas" type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</a>
                        <button type="button" id="bt_add" class="btn btn-primary" data-dismiss="modal">Agregar</button>      
                    </div>
                </div>
                
           </div>
        </div>
    </div>
</div>