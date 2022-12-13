<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\DetalleGrupoAntibiotico;
use Exception;
use Illuminate\Support\Facades\DB;

class GrupoAntibioticoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $id = $request->get('id');
        if(DB::select('SELECT id_Antibiotico, COUNT(*) Total
        FROM detalle_grupo_antibioticos
        WHERE id_GrupoAntibiotico = ?
        GROUP BY id_Antibiotico
        HAVING COUNT(*) > 1', [$id])){
            $mensaje = "Datos repetidos.";
            return back()->with('duplicidad', $mensaje);
        }
        $dg_antibioticos = new DetalleGrupoAntibiotico();
        
        $dg_antibioticos->id_Antibiotico = $request->get('select_disponible');
        $dg_antibioticos->id_GrupoAntibiotico = $request->get('id');
        
        $dg_antibioticos->save();
        return back();
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

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
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
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $detalleAntibiotico = DetalleGrupoAntibiotico::find($id);
        $detalleAntibiotico->delete();
        return back();
    }
}
