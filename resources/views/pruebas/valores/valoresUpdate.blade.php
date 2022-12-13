<!-- Modal -->
<div class="modal fade" id="updateModal{{$valoresreferancia->id}}" tabindex="-1" role="dialog" aria-labelledby="updateModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="updateModalLabel">Valores de Normalidad</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
            {{-- <form id="CompanyForm" enctype="multipart/form-data"  action="{{route('valores.update',$valoresreferancia->id)}}" method="POST">
                @csrf
                @method('PUT') --}}
                    <div class="tab-content">
                        <div role="tabpanel" class="tab-pane active" id="Primero">
                           <div class="card">
                                <div class="card-body">
                                    <input id="idss2" name="idss2" hidden value="{{$prueba->id}}">
                                    <!----------------------Sexo---------------->
                                    <div class="form-group">
                                        <label for="descripcion">Sexo:</label>
                                        <select class="form-control" id="sexo2" name="sexo2" autofocus onblur="document.getElementById('sexovalref1[]{{$valoresreferancia->id}}').value=this.value">
                                          <option value="{{$valoresreferancia->Sexo}}" selected>{{$valoresreferancia->Sexo}}</option>
                                          <option value="Indistinto">Indistinto</option>
                                          <option value="Femenino">Femenino</option>                                        
                                          <option value="Masculino">Masculino</option>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label for="descripcion">Unidad:</label>
                                        <select class="form-control" id="Edad2" name="Edad2" onblur="document.getElementById('Edad1[]{{$valoresreferancia->id}}').value=this.value">
                                            <option value="{{$valoresreferancia->Edad}}" selected>{{$valoresreferancia->Edad}}</option>
                                            <option value="Días">Días</option>
                                            <option value="Meses">Meses</option>                                        
                                            <option value="Años">Años</option>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label for="descripcion">Edad Mínima:</label>
                                        <input onblur="document.getElementById('EdadMin1[]{{$valoresreferancia->id}}').value=this.value" value="{{$valoresreferancia->EdadMin}}" value="1" class="form-control" id="EdadMin2" name="EdadMin2" type="number" max="100" >
                                    </div>
                                    <div class="form-group">
                                        <label for="descripcion">Edad Máxima:</label>
                                        <input onblur="document.getElementById('EdadMax1[]{{$valoresreferancia->id}}').value=this.value" value="{{$valoresreferancia->EdadMax}}" value="120" class="form-control" id="EdadMax2" name="EdadMax2" type="number" max="120" >
                                    </div>
                                    <div class="form-group">
                                        <label for="descripcion">Val.Mínima:</label>
                                        <input onblur="document.getElementById('RefMin1[]{{$valoresreferancia->id}}').value=this.value" value="{{$valoresreferancia->ValMin}}" class="form-control" id="RefMin2" name="RefMin2" step="0.01" placeholder="0.00" type="number" max="100">
                                    </div>
                                    <div class="form-group">
                                        <label for="descripcion">Val.Máxima:</label>
                                        <input onblur="document.getElementById('RefMax1[]{{$valoresreferancia->id}}').value=this.value" value="{{$valoresreferancia->ValMax}}" class="form-control" id="RefMax2" name="RefMax2" step="0.01" placeholder="0.00" type="number" max="100">
                                    </div>
                                </div>                                                               
                            </div>
                        </div>
                       <div style="text-align:right">
                          <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                          <button type="button" id="btnEditar" class="btn btn-primary" data-dismiss="modal">Guardar</button>          
                        </div>
                    </div>
                {{-- </form> --}}
        </div>
       
      </div>
    </div>
</div>