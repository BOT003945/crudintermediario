<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Prueba;
use App\Models\Depto;
use App\Models\Metodo;
use App\Models\Valoresreferencium;
use Exception;
use Illuminate\Support\Facades\Crypt;
use Illuminate\Support\Facades\DB;

class PruebaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $pruebas = Prueba::all();
        return view('pruebas.index')->with('pruebas', $pruebas);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $deptos = Depto::all();
        $valoresreferancias = Valoresreferencium::all();
        $metodos = Metodo::all();
        return view('pruebas.create', compact('metodos'))->with('deptos', $deptos);
    }

    /* public function store(Request $request)
    {
        try{
            $pruebas = new Prueba();
        $pruebas->cveprueba = $request->get('cveprueba');
        $pruebas->abreviatura = $request->get('abreviatura');
        $pruebas->descripcion = $request->get('descripcion');
        $pruebas->Prueba = $request->get('Prueba');
        $pruebas->hoja_trabajo = $request->get('hoja_trabajo');
        $pruebas->id_Departamento = $request->get('departamento');
        $pruebas->TipoMuestra = $request->get('TipoMuestra');
        $pruebas->id_Metodo = $request->get('metodo');
        $pruebas->impr_metodo_Resultado = $request->get('impr_metodo_resultado');
        $pruebas->formula = $request->get('formula');
        $pruebas->imprimir_negritas = $request->get('imprimir_negritas');
        $pruebas->antibiograma = $request->get('antibiograma');
        $pruebas->medida = $request->get('medida');
        $pruebas->sexo = $request->get('sexo');
        $pruebas->TipoResultado = $request->get('TipoResultado');
        $pruebas->Resultado_default = $request->get('Resultado_default');
        $pruebas->Tipo_Valor = $request->get('Tipo_Valor');
        $pruebas->valor_restringido = $request->get('valor_restringido');        
        $pruebas->Decimales = $request->get('Decimales');
        $pruebas->dias = $request->get('dias');
        $pruebas->horas = $request->get('horas');
        $pruebas->minutos = $request->get('minutos');
        $pruebas->indicaciones = $request->get('indicaciones');
        $pruebas->notas = $request->get('notas');
        $pruebas->impr_Nota_Resultado = $request->get('impr_nota_resultado');
        $pruebas->notas_internas = $request->get('notas_internas');
        $pruebas->tipo_valor_normalidad = $request->get('tipo_valor_normalidad');
        //$pruebas->tipo_valor_normalidad = $request->get('resultado22');
        $pruebas->valor_normalidad_texto = $request->get('valor_normalidad_texto');
        $pruebas->sucursal = "00";
        $pruebas->save();


        $opcion = $request->input('tipo_valor_normalidad');
        if($opcion === "Rango númerico")
        {
            $valores = new Valoresreferencium();
            $valores->claveprueba = $pruebas->id;
            $valores->Sexo = $request->get('sexo2');
            $valores->Edad = $request->get('Edad');
            $valores->EdadMin = $request->get('EdadMin');
            $valores->EdadMax = $request->get('EdadMax');
            $valores->ValMin = $request->get('RefMin');
            $valores->ValMax = $request->get('RefMax');
            $valores->sucursal = 00;
            $valores->save();
            return redirect()->route('pruebas.edit', $pruebas->id)->with('redireccionar', 'tabla');
        }
        
        


        return redirect()->route('pruebas.edit', $pruebas->id);
        }
        catch(Exception $e)
        {
            return back()->with('error', $e->getMessage());
        }

    } */
    public function store(Request $request)
    {
        try{
            DB::beginTransaction();
            $pruebas = new Prueba();
            $pruebas->cveprueba = $request->get('cveprueba');
            $pruebas->abreviatura = $request->get('abreviatura');
            $pruebas->descripcion = $request->get('descripcion');
            $pruebas->Prueba = $request->get('Prueba');
            $pruebas->hoja_trabajo = $request->get('hoja_trabajo');
            $pruebas->id_Departamento = $request->get('departamento');
            $pruebas->TipoMuestra = $request->get('TipoMuestra');
            $pruebas->id_Metodo = $request->get('metodo');
            $pruebas->impr_metodo_Resultado = $request->get('impr_metodo_resultado');
            $pruebas->formula = $request->get('formula');
            $pruebas->imprimir_negritas = $request->get('imprimir_negritas');
            $pruebas->antibiograma = $request->get('antibiograma');
            $pruebas->medida = $request->get('medida');
            $pruebas->sexo = $request->get('sexo');
            $pruebas->TipoResultado = $request->get('TipoResultado');
            $pruebas->Resultado_default = $request->get('Resultado_default');
            $pruebas->Tipo_Valor = $request->get('Tipo_Valor');
            $pruebas->valor_restringido = $request->get('valor_restringido');        
            $pruebas->Decimales = $request->get('Decimales');
            $pruebas->dias = $request->get('dias');
            $pruebas->horas = $request->get('horas');
            $pruebas->minutos = $request->get('minutos');
            $pruebas->indicaciones = $request->get('indicaciones');
            $pruebas->notas = $request->get('notas');
            $pruebas->impr_Nota_Resultado = $request->get('impr_nota_resultado');
            $pruebas->notas_internas = $request->get('notas_internas');
            $pruebas->tipo_valor_normalidad = $request->get('tipo_valor_normalidad');
            $pruebas->valor_normalidad_texto = $request->get('valor_normalidad_texto');
            $pruebas->sucursal = "00";

            $pruebas->save();
            if("Rango númerico" === $pruebas->tipo_valor_normalidad = $request->get('tipo_valor_normalidad'))
            {
                $SexoValRef = $request->get('sexovalref1');
                $Edad = $request->get('Edad1');
                $EdadMin = $request->get('EdadMin1');
                $EdadMax = $request->get('EdadMax1');
                $ValMin = $request->get('RefMin1');
                $ValMax = $request->get('RefMax1');

                $cont = 0;
                if($request->filled('sexovalref1')){
                    while($cont < count($SexoValRef)){ 
                        $valores = new Valoresreferencium();
                        $valores->claveprueba= $pruebas->id;
                        $valores->Sexo = $SexoValRef[$cont];
                        $valores->Edad= $Edad[$cont];
                        $valores->EdadMin= $EdadMin[$cont];
                        $valores->EdadMax= $EdadMax[$cont];
                        $valores->ValMin= $ValMin[$cont];
                        $valores->ValMax= $ValMax[$cont];
                        $valores->sucursal='00';  
                        $valores->save();
                        $cont=$cont+1;            
                    }
                }
               /*DB::commit();
               return redirect()->route('pruebas.edit', $pruebas->id)->with('redireccionar','tabla'); */
            }
            DB::commit();
        }
        catch(Exception $e){
            DB::rollback();
            return $e->getMessage();
        }
        return redirect('/pruebas');
    }

    public function show($id)
    {
        //
    }

    public function edit($id)
    {
        $id =  Crypt::decrypt($id);
        return view('pruebas.edit')->with([
            'prueba' => Prueba::findorFail($id),
            'deptos' => Depto::all(),
            'metodos' => Metodo::all(),
            'valoresreferancias' => Valoresreferencium::all()->where('claveprueba', '=', $id)
        ]);
    }

    public function update(Request $request, $id)
    {
        try
        {
            DB::beginTransaction();
            $prueba = Prueba::find($id);
            $prueba->cveprueba = $request->get('idss');
            $prueba->abreviatura = $request->get('abreviatura');
            $prueba->descripcion = $request->get('descripcion');
            $prueba->Prueba = $request->get('Prueba');
            $prueba->hoja_trabajo = $request->get('hoja_trabajo');
            $prueba->id_Departamento = $request->get('departamento');
            $prueba->TipoMuestra = $request->get('TipoMuestra');
            $prueba->id_Metodo = $request->get('metodo');
            $prueba->impr_metodo_Resultado = $request->get('impr_metodo_resultado');        
            $prueba->formula = $request->get('formula');
            $prueba->imprimir_negritas = $request->get('imprimir_negritas');
            $prueba->antibiograma = $request->get('antibiograma');
            $prueba->Medida = $request->get('medida');
            $prueba->sexo = $request->get('sexo');
            $prueba->TipoResultado = $request->get('TipoResultado');
            $prueba->Resultado_default = $request->get('Resultado_default');
            $prueba->Tipo_Valor = $request->get('Tipo_Valor');
            $prueba->valor_restringido = $request->get('valor_restringido');   
            $prueba->Decimales = $request->get('Decimales');
            $prueba->dias = $request->get('dias');
            $prueba->horas = $request->get('horas');
            $prueba->minutos = $request->get('minutos');
            $prueba->indicaciones = $request->get('indicaciones');
            $prueba->notas = $request->get('notas');
            $prueba->impr_Nota_Resultado = $request->get('impr_nota_resultado');
            $prueba->notas_internas = $request->get('notas_internas');
            $prueba->tipo_valor_normalidad = $request->get('tipo_valor_normalidad');
            $prueba->valor_normalidad_texto = $request->get('valor_normalidad_texto');
            $prueba->sucursal = "00";
            $prueba->save();
            /* if("Rango númerico" === $prueba->tipo_valor_normalidad)
            {
                $idarray = $request->get('idinventando');
                $SexoValRef = $request->get('sexovalref1');
                $Edad = $request->get('Edad1');
                $EdadMin = $request->get('EdadMin1');
                $EdadMax = $request->get('EdadMax1');
                $ValMin = $request->get('RefMin1');
                $ValMax = $request->get('RefMax1');
                if(DB::select('SELECT * FROM valoresreferencia WHERE claveprueba = ?;', [$id]))
                {
                    $valor = Valoresreferencium::find($request->get('table_idvaloresref'));
                    //$valor->claveprueba = $request->input('inputId');
                    $valor->Sexo = $request->get('table_Sexo');
                    $valor->Edad = $request->input('table_Edad');
                    $valor->EdadMin = $request->input('table_EdadMin');
                    $valor->EdadMax = $request->input('table_EdadMax');
                    $valor->ValMin = $request->input('table_ValMin');
                    $valor->ValMax = $request->input('table_ValMax');
                    $valor->sucursal = "00";
                    $valor->save();
                }
                //DB::select('DELETE FROM valoresreferencia WHERE claveprueba = ?;', [$id]);
            
                $prueba->save();
                $cont = 0;
                if($request->filled('idinventando'))
                {
                    while($cont < count($idarray))
                    { 
                        $valores = new Valoresreferencium();
                        $valores->claveprueba= $id;
                        $valores->Sexo = $SexoValRef[$cont];
                        $valores->Edad= $Edad[$cont];
                        $valores->EdadMin= $EdadMin[$cont];
                        $valores->EdadMax= $EdadMax[$cont];
                        $valores->ValMin= $ValMin[$cont];
                        $valores->ValMax= $ValMax[$cont];
                        $valores->sucursal='00';  
                        $valores->save();
                        $cont=$cont+1;
                    }
                }
               
            } */
           /*  DB::select('DELETE FROM valoresreferencia WHERE claveprueba = ?;', [$id]);
                $valor = Valoresreferencium::find($request->get('table_idvaloresref'));
                //$valor->claveprueba = $request->input('inputId');
                $valor->Sexo = $request->get('table_Sexo');
                $valor->Edad = $request->input('table_Edad');
                $valor->EdadMin = $request->input('table_EdadMin');
                $valor->EdadMax = $request->input('table_EdadMax');
                $valor->ValMin = $request->input('table_ValMin');
                $valor->ValMax = $request->input('table_ValMax');
                $valor->sucursal = "00";
                $valor->save(); */
                
            if("Rango númerico" === $prueba->tipo_valor_normalidad)
            {
                DB::select('DELETE FROM valoresreferencia WHERE claveprueba = ?;', [$id]);
                $SexoValRef = $request->get('sexovalref1');
                $Edad = $request->get('Edad1');
                $EdadMin = $request->get('EdadMin1');
                $EdadMax = $request->get('EdadMax1');
                $ValMin = $request->get('RefMin1');
                $ValMax = $request->get('RefMax1');

                $cont = 0;
                if($request->filled('sexovalref1'))
                {
                    while($cont < count($SexoValRef))
                    { 
                        $valores = new Valoresreferencium();
                        $valores->claveprueba= $id;
                        $valores->Sexo = $SexoValRef[$cont];
                        $valores->Edad= $Edad[$cont];
                        $valores->EdadMin= $EdadMin[$cont];
                        $valores->EdadMax= $EdadMax[$cont];
                        $valores->ValMin= $ValMin[$cont];
                        $valores->ValMax= $ValMax[$cont];
                        $valores->sucursal='00';  
                        $valores->save();
                        $cont=$cont+1;
                    }
                 }
                 DB::commit();
                /*return back(); */
            }
            DB::commit();
           
        }
        catch(Exception $e){
            DB::rollback();
            return back()->with('error', $e->getMessage());
        }
        /* if("1" === $request->get('Redireccionador')){
            return redirect('/pruebas');
        }
        if("2" === $request->get('Redireccionador')){
            return redirect()->to(app('url')->previous()."#valoresref");
        } */
        return redirect('/pruebas');
    }

    public function destroy(Request $request, $id)
    {
        $prueba = Prueba::find($id);
        $prueba->delete();

        return redirect('/pruebas')->with('eliminar', 'echo');
    }    
}
