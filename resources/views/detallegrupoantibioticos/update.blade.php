<div class="modal fade" id="" tabindex="-1" role="dialog" aria-labelledby="updateModalLabel" aria-hidden="true">   
    <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Grupo de antibióticos</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            <form  class="frmPacientes" id="Grupo" enctype="multipart/form-data" action="/detallegrupoantibioticos/{{$grupo_antibiotico->id}}" method="POST">
                @csrf
                @method('PUT')
                <div id="frm-pacientes" class="tabpanel">
                  <ul class="nav nav-tabs" role="tablist">
                    <li class="nav-item" role="presentation">
                      <a class="nav-link active" href="#Primero" data-toggle="tab" role="tab" aria-selected="false">
                        <h4>Configuración del Grupo de Antibióticos</h4>
                      </a>
                    </li>       
                  </ul>
                  <div class="tab-content">
                    <div role="tabpanel" class="tab-pane active" id="Primero">
                      <div class="card">
                        <div class="card-body">
                          <input hidden id="grupo_Id" name="grupo_Id" value="{{$grupo_antibiotico->id}}">
                          <!----------------------descripcion---------------->
                          <div class="form-group">
                            <label for="descripcion">Descipción:</label>
                            <input value="{{$grupo_antibiotico->descripcion}}" minlength="2" maxlength="100" onkeypress="return soloLetras(event)" required class="form-control" id="descripcionUp" name="descripcion" autofocus>
                          </div>
                               
                        </div>                                                               
                      </div>
                    </div>
                    @if($message = Session::get("error"))
                      <div style="text-align:left" class="alert alert-danger">
                          <p>{{$message="Grupo de antibióticos previamente registrado."}}</p>
                      </div>
                    @endif	
                    <div style="text-align:right">
                      <a href="/detallegrupoantibioticos"><button type="button" class="btn btn-secondary" data-dismiss="modal"><i class="far fa fa-arrow-left"></i> Regresar</button></a>
                      <button id="btnGuardar" type="submit" class="btn btn-primary close-modal" >Guardar</button>         
                    </div>
              
                  </div>
                </div>
          </div>
        </div>
      </div>
    </div>