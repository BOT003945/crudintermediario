<?php

namespace App\Http\Controllers;

use App\Models\Depto;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;
use Barryvdh\DomPDF\Facade\Pdf;
use Exception;
use PhpParser\Node\Expr;

class DepartamentoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        
        $departamentos = DB::select('SELECT id, Depto FROM deptos');
        return view('deptos.index')->with('departamentos', $departamentos);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        try{
            $deptos = new Depto();
        $deptos->Depto = $request->get('depto');
        $deptos->sucursal = session('SUCURSAL');
        $deptos->save();
        return redirect('/deptos');
        }
        catch(Exception $e){
            return back()->with('error', $e->getMessage());
        }
        
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
        try{
            $depto = Depto::find($id);
        $depto->Depto = $request->get('deptoEdit');
        $depto->sucursal = session('SUCURSAL');
        $depto->save();
        return redirect('/deptos');
        }
        catch(Exception $e){
            return back()->with('error', $e->getMessage());
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
       /* try{ */
        $depto = Depto::find($id);
        //DELETE FROM `deptos` WHERE `id` = 1
        /* if(DB::select('DELETE FROM deptos WHERE id = ?', [$id])){
            return with('integrityviolation');
        } */
        $depto->delete();
        return redirect('/deptos')->with('eliminar', 'Echo');
       /* } */
       /* catch(Exception $e){ */
        //return back()->with('integrityviolation', $e->getMessage());
       /* } */
    }

    public function reportePDF()
    {
        $siemprehoy = Carbon::now()->format('d/m/Y');
        $actualhora = Carbon::now()->isoFormat('H:mm:ss A');
        $deptos = Depto::latest()->paginate(21);
        $cfdi = DB::table('cfdi_parametros')->select('CFDIRFC','CFDITEL','CFDIFCALLE', 'CFDIFNEXT', 'CFDIFNINT','CFDIFCOL','CFDISUCURSAL','CFDIFPAIS', 'CFDIFESTADO', 'CFDIFMUNICIPIO')
        ->where('id','=','1')->first();
        $pdf = Pdf::loadView('deptos.reporteDeptos',  compact('cfdi','deptos', 'siemprehoy', 'actualhora'))
        ->setPaper(array(0,0,1000.00,1000), 'portrait');
        return $pdf->stream('REPORTE');
    }
}
