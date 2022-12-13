<?php

namespace App\Http\Controllers;

use App\Models\Empresas;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;
use Barryvdh\DomPDF\Facade\Pdf;

class EmpresaController extends Controller
{
    public function index()
    {
        $empresas = DB::select('SELECT idEmpresa, sucursal, Nombre, tel1, tel2, rfc, direccion, cp, pais, Entidad, Ciudad FROM empresas');
        return view('empresas.index')->with('empresas', $empresas);
    }
    
    public function create()
    {
        //
    }

    public function store(Request $request)
    {
        $empresas = new Empresas();
        $empresas->Nombre = $request->get('NombreCreate');
        $empresas->tel1 = $request->get('tel1Create');
        $empresas->tel2 = $request->get('tel2Create');
       /*  $empresas->Nombre = $request->get('Tipo_EmpresaCreate'); */
        $empresas->rfc = $request->get('rfcCreate');
        $empresas->direccion = $request->get('direccionCreate');
        $empresas->cp = $request->get('CpCreate');
        $empresas->pais = $request->get('paisCreate');
        $empresas->Entidad = $request->get('EstadoCreate');
        $empresas->Ciudad = $request->get('MunicipioCreate');
        $empresas->sucursal = session('SUCURSAL');
        $empresas->tipo_tarifa = 4;
        $empresas->save();

        return redirect('/empresas');
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
        //
    }

    public function reportePDF()
    {
        $siemprehoy = Carbon::now()->format('d/m/Y');
        $actualhora = Carbon::now()->isoFormat('H:mm:ss A');
        $empresas = Empresas::latest()->paginate(21);
        $pdf = Pdf::loadView('reporteEmpresas', compact('empresas', 'siemprehoy', 'actualhora'))
        ->setPaper(array(0,0,1000.00,1000), 'portrait');
        return $pdf->stream('REPORTE');
    }
}
