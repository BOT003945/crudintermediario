<?php

namespace App\Http\Controllers;

use App\Models\Paquete;
use App\Models\PaqueteDetalle;
use App\Models\Estudio;

use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Crypt;
use Illuminate\Support\Facades\DB;

class PaqueteController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $paquetes = Estudio::all()->where('espaquete', '=', '1');
        return view('paquetes.index')->with('paquetes', $paquetes);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $estudios = Estudio::all()->where('espaquete', '=', '0');
        return view('paquetes.create',['estudios'=>$estudios]);
    }

    public function store(Request $request)
    {
        try{
            DB::beginTransaction();
            $paquetes = new Estudio();
            $paquetes->Abreviatura = $request->get('abreviatura');
            $paquetes->Nombre = $request->get('descripcion');
            $paquetes->Indicaciones = $request->get('indicaciones');
            $paquetes->Notas_Internas = $request->get('notas_internas');
            $paquetes->Dias = $request->get('dias');
            $paquetes->Horas = $request->get('horas');
            $paquetes->Minutos = $request->get('minutos');

            $paquetes->depto = 99;
            $paquetes->sucursal = session('SUCURSAL');
            $paquetes->espaquete = 1;
            $paquetes->eliminar = 0;
            $paquetes->SucProceso = session('SUCURSAL');
            $paquetes->save();

            $idEstudio = $request->get('prueba');
            $estudioNombre = $request->get('estudioNombre');
            
            $cont = 0;
            if($request->filled('estudioNombre'))
            {
                while($cont < count($estudioNombre))
                { 
                    $paquetedetalle = new PaqueteDetalle();
                    //$paquetedetalle->id_Paquete= $paquetes->idPaquete;
                    $paquetedetalle->id_Estudio = $paquetes->idEstudio;
                    $paquetedetalle->Estudio = $estudioNombre[$cont];
                    $paquetedetalle->Orden = $cont;
                    $paquetedetalle->save();
                    
                    $cont=$cont+1;            
                }
                
            }
            DB::commit();
        }
        catch(Exception $e){
            DB::rollback();
            return back()->with('error', $e->getMessage());
        }
        return redirect('/paquetes');
    }

    public function show($id)
    {
        //
    }

    public function edit($id)
    {
        $id =  Crypt::decrypt($id);
        return view('paquetes.edit')->with([
            'estudios' => Estudio::all()->where('espaquete', '=', '0'),
            'paquete' => Estudio::findorFail($id),
            'paquetedetalles' => DB::select('SELECT * FROM paquete_detalle WHERE id_Estudio = ? ORDER BY Orden ASC;', [$id])
        ]);
    }

    public function update(Request $request, $id)
    {
       try{
            DB::beginTransaction();
            $paquete = Estudio::find($id);
            $paquete->Abreviatura = $request->get('abreviatura');
            $paquete->Nombre = $request->get('descripcion');
            $paquete->Indicaciones = $request->get('indicaciones');
            $paquete->Notas_Internas = $request->get('notas_internas');
            $paquete->Dias = $request->get('dias');
            $paquete->Horas = $request->get('horas');
            $paquete->Minutos = $request->get('minutos');
            $paquete->sucursal = session('SUCURSAL');
            $paquete->espaquete = 1;
            $paquete->eliminar = 0;
            $paquete->SucProceso = session('SUCURSAL');
            $paquete->save();
            DB::select('DELETE FROM paquete_detalle WHERE id_Estudio = ?;', [$id]);
            $idEstudio = $request->get('prueba');
            $estudioNombre = $request->get('estudioNombre');
            
            $cont = 0;
            if($request->filled('estudioNombre'))
            {
                while($cont < count($estudioNombre))
                { 
                    
                    $paquetedetalle = new PaqueteDetalle();
                    //$paquetedetalle->id_Paquete= $id;
                    $paquetedetalle->id_Estudio = $id;
                    $paquetedetalle->Estudio = $estudioNombre[$cont];
                    $paquetedetalle->Orden = $cont;
                    $paquetedetalle->save();
                    $estudio = Estudio::find($request->get('prueba')[$cont]);
                    $estudio->espaquete = 1;
                    $estudio->save();
                    $cont=$cont+1;            
                }
                
            }
            DB::commit();
        }
         catch(Exception $e){
            DB::rollback();
            return back()->with('error', $e->getMessage());
        }
        return redirect('/paquetes');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        try{
            $paquete = Estudio::find($id);
            $paquete->delete();
            return redirect('/paquetes')->with('eliminar', 'echo');
        }
        catch(Exception $e){
            return back()->with('error', $e->getMessage());
        }
    }
}
