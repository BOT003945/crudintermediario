<?php

namespace App\Http\Controllers;

use App\Models\Depto;
use App\Models\DetalleGrupoAntibiotico;
use App\Models\Estudio;
use App\Models\Formato;
use App\Models\Prueba;
use App\Models\Valoresreferencium;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Crypt;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;


class FormatoController extends Controller
{
    public function index()
    {
        $estudios = Estudio::all();
        return view('estudios.index')->with('estudios', $estudios);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
    
        return view('estudios.create')->with([
            'deptos' => Depto::all(),
            //'estudios' => Estudio::all(),
            'pruebas' =>  DB::table('pruebas as pruebas')
            ->join('deptos as deptos','pruebas.id_Departamento','=','deptos.id')
            ->select('pruebas.idPrueba','pruebas.id_Departamento','pruebas.Prueba','pruebas.cveprueba',
            'deptos.id','deptos.Depto')->get()
        ]);
    }

    public function store(Request $request)
    {
        try{
           /*  $request->validate([
                'id_prueba' => 'required',
            ]); */
            DB::beginTransaction();
            $estudios = new Estudio();
            $estudios->Codigo = $request->get('codigo');
            $estudios->Abreviatura = $request->get('abreviatura');
            $estudios->Descripcion = $request->get('descripcion');
            $estudios->Nombre = $request->get('nombre');
            $estudios->Dias = $request->get('dias');$estudios->Horas = $request->get('horas');
            $estudios->Minutos = $request->get('minutos');
            $estudios->depto = $request->get('select_departamento');
            $estudios->ventaindividual = $request->get('ventaindividual');
            $estudios->Sexo = $request->get('sexo');
            $estudios->Indicaciones = $request->get('indicaciones');
            $estudios->Notas = $request->get('notas');
            $estudios->Notas_Internas = $request->get('notas_internas');
            $estudios->TipoMuestra = $request->get('TipoMuestra');
            $estudios->AlineacionTitulo = $request->get('alineaciontitulo');
            $estudios->ColorTitulo = $request->get('colortitulo');
            $estudios->sucursal = session('SUCURSAL');
            $estudios->espaquete = 0;
            $estudios->eliminar = 0;
            $estudios->SucProceso = session('SUCURSAL');
            $estudios->save();
            //$Departamento = $request->get('departamento');
            $Prueba = $request->get('prueba');
            $pruebaNombre = $request->get('pruebaNombre');
            //$departamento = DB::select('SELECT id_Departamento FROM pruebas WHERE id = ?;', [$request->get('pruebaI')]);
            $cont = 0;
            if($request->filled('pruebaNombre'))
            {
               /*  request()->validate([
                    'id_prueba' => ['required']
                ], [
                    'descripcion' => 'El campo de descripción es necesario.'
                ]); */
                while($cont < count($pruebaNombre))
                {
                    $formatos = new Formato();
                    $formatos->id_Estudio= $estudios->idEstudio;
                    $formatos->id_prueba = $Prueba[$cont];
                    $formatos->Prueba = $pruebaNombre[$cont];
                    $formatos->Orden = $cont;
                    $formatos->sucursal= session('SUCURSAL');
                    $formatos->save();
                    $cont=$cont+1;            
                }
                
            }
            DB::commit();
       }
        catch(Exception $e){
            DB::rollback();
            return back()->with('error', $e->getMessage());
        }
        return redirect('/estudios');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    public function edit($id)
    {
        $id =  Crypt::decrypt($id);
        return view('estudios.edit')->with([
            'estudio' => Estudio::findorFail($id),
            'deptos' => Depto::all(),
            'formatos' => DB::select('SELECT * FROM formatos WHERE id_Estudio = ? ORDER BY Orden ASC;', [$id]),
            'pruebas' =>  DB::table('pruebas as pruebas')
            ->join('deptos as deptos','pruebas.id_Departamento','=','deptos.id')
            ->select('pruebas.idPrueba','pruebas.id_Departamento','pruebas.Prueba','pruebas.cveprueba',
            'deptos.id','deptos.Depto')->get(),

            // 'formatos' =>  DB::table('formatos')
            // ->join('pruebas','formatos.idprueba','=','pruebas.id')
            // ->join('deptos','pruebas.id_Departamento','=','deptos.id')
            // ->select('formatos.id as idFormato','formatos.idprueba','formatos.Prueba as formatoPrueba',
            // 'pruebas.id','pruebas.Prueba', 'deptos.Depto')
            // ->where('id_Estudio', '=', $id)
            // ->orderBy('Orden', 'asc')
            // ->get(),

            'detallesGA' => DetalleGrupoAntibiotico::all()
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        try{
            DB::beginTransaction();
            $estudio = Estudio::find($id);
            $estudio->Codigo = $request->get('codigo');
            $estudio->Abreviatura = $request->get('abreviatura');
            $estudio->Descripcion = $request->get('descripcion');
            $estudio->Nombre = $request->get('nombre');
            $estudio->Dias = $request->get('dias');
            $estudio->Horas = $request->get('horas');
            $estudio->Minutos = $request->get('minutos');
            $estudio->depto = $request->get('select_departamento');
            $estudio->ventaindividual = $request->get('ventaindividual');
            $estudio->Sexo = $request->get('sexo');
            $estudio->Indicaciones = $request->get('indicaciones');
            $estudio->Notas = $request->get('notas');
            $estudio->Notas_Internas = $request->get('notas_internas');
            $estudio->TipoMuestra = $request->get('TipoMuestra');
            $estudio->AlineacionTitulo = $request->get('alineaciontitulo');
            $estudio->ColorTitulo = $request->get('colortitulo');
            $estudio->sucursal = session('SUCURSAL');
            $estudio->espaquete = 0;
            $estudio->eliminar = 0;
            $estudio->SucProceso = session('SUCURSAL');
            $estudio->save();
            DB::select('DELETE FROM formatos WHERE id_Estudio = ?;', [$id]);
            //$Departamento = $request->get('departamento');
            $Prueba = $request->get('prueba');
            $pruebaNombre = $request->get('pruebaNombre');
            $pruebasinId = $request->get('pruebasinId');
            $cont = 0;
            if($request->filled('prueba'))
            {
                while($cont < count($Prueba))
                { 
                    $formatos = new Formato();
                    $formatos->id_Estudio= $id;
                    //$formatos->idDepto = $Departamento[$cont];
                    $formatos->id_prueba = $Prueba[$cont];
                    $formatos->Prueba = $pruebaNombre[$cont];
                    $formatos->Orden = $cont;
                    $formatos->sucursal='00';  
                    $formatos->save();
                    $cont=$cont+1;
                }
            }/* if($request->filled('pruebasinId'))
            {
                while($cont < count($pruebasinId))
                { 
                    $formatos = new Formato();
                    $formatos->id_Estudio= $id;
                    $formatos->Prueba = $pruebasinId[$cont];
                    $formatos->Orden = $cont;
                    $formatos->sucursal='00';  
                    $formatos->save();
                    $cont=$cont+1;
                }
            } */
            DB::commit();
        }
       catch(Exception $e){
            DB::rollback();
            return back()->with('error', $e->getMessage());
        }
        return redirect('/estudios');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request,$id)
    {
        try{
            $estudio = Estudio::find($id);
            $estudio->delete();

            return redirect('/estudios')->with('eliminar', 'echo');
        }
        catch(Exception $e)
        {
            return back()->with('error', $e->getMessage());
        }
        
    }
}
