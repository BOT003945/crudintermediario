@extends('adminlte::page')

@section('content_header')
    <h2>Configuración del Estudio</h2>
@stop

@section('content')
<form enctype="multipart/form-data" action="/estudios/{{$estudio->idEstudio}}" method="POST">
    @csrf
    @method('PUT')
<div class="row" id="principio">
    <!----------------------------------------Primera Tarjeta------------------------------------------------------->
    <div class="col-md-6">
        <div class="card card-light">
            <div class="card-body" style="margin: 5px !important; padding: 5px !important;">
                <div id="detalle-orden" class="container">
                    <div class="row">
                        <div class="col-4 col-md-3 col-lg-2">
                            <label>Código</label>
                        </div>
                        <div class="col-7">
                            <input class="form-control" id="codigo" name="codigo" maxlength="10" required value="{{$estudio->Codigo}}">
                        </div>                            
                    </div>
                    <hr>
                    <div class="row">
                        <div class="col-4 col-md-3 col-lg-2">
                            <label>Abreviatura</label>
                        </div>
                        <div class="col-7">
                            <input class="form-control" id="abreviatura" name="abreviatura" maxlength="10" required value="{{$estudio->Abreviatura}}">
                        </div>                            
                    </div>
                    {{-- <hr>
                    <div class="row">
                        <div class="col-4 col-md-3 col-lg-2">
                            <label>Descripción</label>
                        </div>
                        <div class="col-7">
                            <input class="form-control" id="descripcion" name="descripcion" maxlength="100" required value="{{$estudio->Descripcion}}">
                        </div>                            
                    </div> --}}
                    <hr>
                    <div class="row">
                        <div class="col-4 col-md-3 col-lg-2">
                            <label>Nombre</label>
                        </div>
                        <div class="col-7">
                            <input class="form-control" id="nombre" name="nombre" maxlength="50" required value="{{$estudio->Nombre}}">
                        </div>                            
                    </div>
                    <hr>
                    <div class="row">
                        <div class="col-5">
                            <label>Tiempo de Proceso</label>
                        </div>
                        <div class="col-7">
                            <label>Días: </label>
                            <select class="selectpicker show-tick" data-dropup-auto="false" data-width="fit" id="dias" name="dias">
                                <option class="show-tick" value="{{$estudio->Dias}}" selected>{{$estudio->Dias}}</option>
                                <option value="0">0</option>
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                                <option value="6">6</option>
                                <option value="7">7</option>
                                <option value="8">8</option>
                                <option value="9">9</option>
                                <option value="10">10</option>
                                <option value="11">11</option>
                                <option value="12">12</option>
                                <option value="13">13</option>
                                <option value="14">14</option>
                                <option value="15">15</option>
                                <option value="16">16</option>
                                <option value="17">17</option>
                                <option value="18">18</option>
                                <option value="19">19</option>
                                <option value="20">20</option>
                                <option value="21">21</option>
                                <option value="22">22</option>
                                <option value="23">23</option>
                                <option value="24">24</option>
                                <option value="25">25</option>
                                <option value="26">26</option>
                                <option value="27">27</option>
                                <option value="28">28</option>
                                <option value="29">29</option>
                                <option value="30">30</option>
                            </select>
                            <label>Horas: </label>                       
                            <select id="horas" name="horas" class="selectpicker show-tick" data-dropup-auto="false" data-width="fit">
                                <option class="show-tick" value="{{$estudio->Horas}}" selected>{{$estudio->Horas}}</option>
                                <option value="0">0</option>
                                <option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option>
                                <option value="5">5</option><option value="6">6</option><option value="7">7</option><option value="8">8</option>
                                <option value="9">9</option><option value="10">10</option><option value="11">11</option><option value="12">12</option>
                                <option value="13">13</option><option value="14">14</option><option value="15">15</option><option value="16">16</option>
                                <option value="17">17</option><option value="18">18</option><option value="19">19</option><option value="20">20</option>
                                <option value="21">21</option><option value="22">22</option><option value="23">23</option>
                            </select>
                            <label>Minutos: </label>
                            <select id="minutos" name="minutos" class="selectpicker show-tick" data-dropup-auto="false" data-width="fit">
                                <option value="{{$estudio->Minutos}}" selected>{{$estudio->Minutos}}</option>
                                <option value="0">0</option><option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option>
                                <option value="5">5</option><option value="6">6</option><option value="7">7</option><option value="8">8</option>
                                <option value="9">9</option><option value="10">10</option><option value="11">11</option><option value="12">12</option>
                                <option value="13">13</option><option value="14">14</option><option value="15">15</option><option value="16">16</option>
                                <option value="17">17</option><option value="18">18</option><option value="19">19</option><option value="20">20</option>
                                <option value="21">21</option><option value="22">22</option><option value="23">23</option></option><option value="24">24</option>
                                <option value="25">25</option><option value="26">26</option><option value="27">27</option><option value="28">28</option>
                                <option value="29">29</option><option value="30">30</option><option value="31">31</option><option value="32">32</option>
                                <option value="33">33</option><option value="34">34</option><option value="35">35</option><option value="36">36</option>
                                <option value="37">37</option><option value="38">38</option><option value="39">39</option><option value="40">40</option>
                                <option value="41">41</option><option value="42">42</option><option value="43">43</option><option value="44">44</option>
                                <option value="45">45 </option><option value="46">46</option><option value="47">47</option><option value="48">48 </option>
                                <option value="49">49 </option><option value="50">50</option><option value="51">51</option><option value="52">52</option>
                                <option value="53">53</option><option value="54">54</option><option value="55">55</option><option value="56">56</option>
                                <option value="57">57</option><option value="58">58</option><option value="59">59</option>
                            </select>
                        </div>
                    </div>
                    {{-- <div class="row">
                        <div class="col-4 col-md-3 col-lg-2">
                            <label>Método</label>
                        </div>
                        <div class="col-7">
                            <select data-dropup-auto="false" class="selectpicker show-tick form-control" data-width="100%" id="metodo" name="metodo" required data-live-search="true">
                                @foreach($metodos as $metodo)
                                <option value="{{$metodo->id}}" data-content="<i class='fa fa-plus'></i> {{$metodo->descripcion}}">{{$metodo->descripcion}}</option>
                                @endforeach
                            </select>
                        </div>                            
                    </div>--}}
                    <hr>
                    <div class="row">
                        <div class="col-4 col-md-3 col-lg-2">
                            <label>Departamento</label>
                        </div>
                        <div class="col-7">
                            <select data-dropup-auto="false" id="select_departamento" class="selectpicker show-tick form-control" data-width="100%" name="select_departamento" data-live-search="true" required>
                                <option value="208">Escoga un departamento</option>
                                @foreach($deptos as $depto)
                                <option value="{{$depto->id}}" {{($depto->id == $estudio->depto)?'selected':''}} data-content="<i class='fa fa-edit'></i> {{$depto->Depto}}">{{$depto->Depto}}</option>
                                @endforeach
                            </select>
                        </div>                            
                    </div>
                    <hr>
                    <div class="row">
                        <div class="col-7">
                            <div class="form-check">
                                <input {{$estudio->ventaindividual=="1"?'Checked':''}} data-val="true" id="ventaindividual" name="ventaindividual" type="checkbox" value="1">
                                <label style="text-align:right"> ¿Permitir venta individual?</label>
                            </div>
                            
                        </div>
                        <div class="col-4 col-md-3 col-lg-2">
                            
                        </div>                            
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!----------------------------------------Segunda Tarjeta------------------------------------------------------->
    <div class="col-md-6">
            <div class="card card-light">
                <div class="card-body" style="margin: 5px !important; padding: 5px !important;">
                    <div id="asignacion-orden" class="container">                          
                        <div class="row">
                            <div class="col-5">
                                <label>Sexo</label>
                            </div>
                            <div class="col-7">
                                <select id="sexo" name="sexo" class="selectpicker show-tick form-control">
                                    <option value="{{$estudio->Sexo}}" selected>{{$estudio->Sexo}}</option>
                                    <option value="Ambos">Ambos</option>
                                    <option value="Femenino">Femenino</option>
                                    <option value="Masculino">Masculino</option>
                                </select>
                            </div>
                        </div>
                        
                        <hr>
                        <div class="row">
                            <div class="col-5">
                                <label>Indicaciones</label>
                            </div>
                            <div class="col-7">
                                <textarea class="form-control" id="indicaciones" name="indicaciones" maxlength="70">
                                    {{$estudio->Indicaciones}}
                                </textarea>
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-5">
                                <label>Notas</label>
                            </div>
                            <div class="col-7">
                                <textarea class="form-control" id="notas" name="notas" maxlength="100">
                                    {{$estudio->Notas}}
                                </textarea>
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-5">
                                <label>Notas internas</label>
                            </div>
                            <div class="col-7">
                                <textarea class="form-control" id="notas_internas" name="notas_internas" maxlength="100">
                                    {{$estudio->Notas_Internas}}
                                </textarea>
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-5">
                                <label>Tipo de Muestra</label>
                            </div>
                            <div class="col-7">
                                <select data-dropup-auto="false" class="selectpicker show-tick form-control" data-width="100%" id="TipoMuestra" name="TipoMuestra">
                                    <option value="{{$estudio->TipoMuestra}}" data-content="<i class='fa fa-edit'></i> {{$estudio->TipoMuestra}}" selected>{{$estudio->TipoMuestra}}</option>
                                    <option value="Espectoracion">Espectoracion</option>
                                    <option value="Liquidos">Liquidos</option>
                                    <option value="Materia Fecal">Materia Fecal</option>
                                    <option value="Orina">Orina</option>
                                    <option value="Plasma">Plasma</option>
                                    <option value="Raspado">Raspado</option>
                                    <option value="Sangre Total">Sangre Total</option>
                                    <option value="Secreción">Secreción</option><option value="Suero">Suero</option>
                                </select>
                            </div>                            
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-5">
                                <label>Alineación del título en reporte</label>
                            </div>
                            <div class="col-7">
                                <select class="form-control" id="alineaciontitulo" name="alineaciontitulo">
                                    <option value="{{$estudio->AlineacionTitulo}}" selected>{{$estudio->AlineacionTitulo}}</option>
                                    <option value="Alineado al centro">Alineado al centro</option>
                                    <option value="Alineado a la izquierda">Alineado a la izquierda</option>
                                    <option value="Alineado a la derecha">Alineado a la derecha</option>
                                </select>
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-5">
                                <label>Color del título en reporte</label>
                            </div>
                            <div class="col-7">
                                <input class="form-control" id="colortitulo" name="colortitulo" type="color" value="{{$estudio->ColorTitulo}}">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
    </div>
</div>
<div class="card">
    <div style="text-align:left" class="card-header">
        <input name"_token" hidden value="{{ csrf_token() }}" type="text">
        <a href="/estudios" type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</a>
        <button type="submit" id="btnGuardarFormato" class="btn btn-primary close-modal" >Guardar</button>                  	
    </div>
</div>
<!--------------------------Mensajes de error------------------------------------------->
@if($message = Session::get("error"))
	<div style="text-align:left" class="alert alert-danger">
		<p>{{$message}}</p>
        <p>Error.</p>
	</div>
@endif

<!--------------------------------------------------------------------->
<div class="card" id="tabla_normalidad">
    <div class="card-header">
        <h3 class="float-left d-none d-sm-block">Estudios del Formato</h3>
        <select id="slcBuscador" name="slcBuscador" data-width="fit" data-live-search="true" data-dropup-auto="false" class="selectpicker">
            <option value="Elige">Elige</option>
            <option value="Separador">Separador</option>
            @foreach ($pruebas as $prueba){{-- {{$prueba->deptos->Depto}} --}}
            <option value="{{$prueba->idPrueba}}_{{$prueba->Prueba}}">{{$prueba->Depto}}-{{$prueba->idPrueba}}-{{$prueba->Prueba}}</option>
            @endforeach
        </select>
    </div>
    <div class="card-body">
        <p style="color: brown">* Para modificar el solicitud de las pruebas arrastre las pruebas hacia arriba y abajo</p>
        <p style="color: brown">* Los cambios se verán reflejados en solicitudes <strong>NUEVAS</strong></p>
        <p style="color: brown">* Al terminar de ordenar las pruebas debes dar click en <strong>Guardar</strong></p>
        <div class="container-fluid">
            {{-- <div class="table-responsive"> --}}
                <div class="row" id="tabla_formatos">
                    @foreach ($formatos as $formato)
                    <div id="fila{{$formato->idFormato}}" class="col-md-12">
                        <div class="card card-light" style="background-color:rgba(128, 128, 128, 0.226);">
                            <div class="card-body" style="margin: 5px !important; padding: 5px !important;">
                                <div class="container">
                                    <div class="row">
                                        <input type="hidden" name="prueba[]" value="{{$formato->id_prueba}}">
                                        <input type="hidden" name="pruebaNombre[]" value="{{$formato->Prueba}}">
                                        <div class="col-1">
                                            {{-- <img class="handle float-left" style="width: 50%;" src="{{ URL::asset('img/up_down.png') }}"> --}}
                                            <button style="border:0;background-color: #9e616700;" type="button" class="handle float-left">
                                                <i class="fa fa-arrows"></i>
                                                {{-- <x-bi-arrow-down-up /> --}}
                                                {{-- @svg('bi-arrow-down-up') --}}
                                            </button>
                                        </div>
                                        
                                        <div class="col-7">
                                            <input name="pruebaTexto" readonly value="{{$formato->id_prueba}}-{{$formato->Prueba}}" class="form-control" style="border-color: rgba(255, 255, 255, 0);background-color:rgba(0, 0, 0, 0);">
                                        </div>
                                        <div class="col-2">
                                            <button style="border:0;background-color: #dc354600;" type="button" class="botonEliminarB float-right" onclick="deshacer('{{$formato->idFormato}}');">
                                                <i style="color: #ff0000" class="fa fa-times"></i>
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <br>
                    @endforeach
                    
                </div>
               </form> 
            {{-- </div>  --}}       
        </div>
    </div>
    {{-- <select required id="select_asignado" name="select_asignado" size="20" style="width: 500px;">
        @foreach($detallesGA as $ga)
        <option value="{{$ga->id}}">{{$ga->antibiotico->id}}</option>
        @endforeach
      </select> --}}

      {{-- <select required size="20" style="width: 500px;">
        @foreach($pruebas as $prueba)
        <option value="{{$prueba->id}}">{{$prueba->deptos->Depto}}</option>
        @endforeach
      </select> --}}
</div>
@stop

@section('css')
<link href="{{ asset('css/imagenes.css')}}" rel="stylesheet"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link href="https://cdn.datatables.net/1.12.1/css/jquery.dataTables.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.18/css/bootstrap-select.min.css" integrity="sha512-ARJR74swou2y0Q2V9k0GbzQ/5vJ2RBSoCWokg4zkfM29Fb3vZEQyv0iWBMW/yvKgyHSR/7D64pFMmU8nYmbRkg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.2/css/bootstrap.min.css" rel="stylesheet"/>
@stop

@section('js')
<script src="{{ asset('js/selects_formatos.js')}}" rel="stylesheet"></script>
<script src="https://cdn.jsdelivr.net/npm/sortablejs@latest/Sortable.min.js"></script>
<script>
    new Sortable(tabla_formatos, {
        handle: '.handle',
        animation: 150,
        ghostClass: 'bg-blue-100',
        // store: {
        //     set: function (sortable){
        //         const sorts = sortable.toArray();
        //         axios.post("{{ route('tablaformatos') }}",{
        //             sorts: sorts
        //         });
        //     }
        // }
    });
</script>


<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.18/js/bootstrap-select.min.js" 
integrity="sha512-yDlE7vpGDP7o2eftkCiPZ+yuUyEcaBwoJoIhdXv71KZWugFqEphIS3PU60lEkFaz8RxaVsMpSvQxMBaKVwA5xg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

@stop