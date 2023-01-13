@extends('adminlte::page')
@section('title', __('Importación y Exportación'))

@section('content_header')
<h1>Archivo Excel</h1>
<a href="/precios"><button type="button" class="btn btn-secondary"><i class="far fa fa-arrow-left"></i> Regresar</button></a>


@stop

@section('content')
<div class="card">
    <div style="text-align:left" class="card-header">
        <a href="/exportarExcel"><button id="btnExportar" class="btn btn-primary" type="button"><i style="color: #ffffff" class="fa fa-check"></i> Exportar a Excel</button></a>
        <button id="btnCargaArchivos" class="btn btn-primary" type="button" onclick="mostrarCargaArchivos();"><i style="color: #ffffff" class="fa fa-check"></i> Importar lista de precios</button>
    </div>
</div>
@if(Session::has('message'))
<div class="btn btn-sm btn-success">{{ Session::get('message') }}</div>
@endif
<div id="divCargaArchivo" style="display: none">
    <div class="card">
        <div style="text-align:left" class="card-header">
            <label>Seleccione el archivo a importar</label>
        </div>
        <div class="card-body">
        
            <form action="{{url('importar/Excel')}}" method="POST" enctype="multipart/form-data">
                @csrf
                {{-- @method('PUT') --}}
               
    
                <input type="file" name="file">
                <input name="idPrecioDetalle" value="{{$id}}" hidden readonly>
                <br>
                <br>
                <br>
                <button class="btn btn-primary">Importar Excel</button>
            </form>
        
        </div>
    </div>
</div>
@stop


@section('js')
<script>
    function mostrarCargaArchivos(){
        document.getElementById("divCargaArchivo").style.display = "block";
    }
</script>
@stop