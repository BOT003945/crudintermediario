<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Bacteria;
use Illuminate\Support\Facades\Crypt;
use Carbon\Carbon;
use Exception;

class BacteriaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $bacterias = Bacteria::all();
        return view('bacterias.index')->with('bacterias', $bacterias);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('bacterias.create');
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
           /*  $request->validate([
                'Telefono' => 'required',
            ]); */
            $Bacterias = new Bacteria();
        $Bacterias->descripcion = $request->get('descripcionCreate');
        $Bacterias->save();
        return redirect('/bacterias');
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

    public function edit($id)
    {   $id =  Crypt::decrypt($id);
        return view('bacterias.edit')->with([
            'bacteria' => Bacteria::findorFail($id)
        ]);
    }

    public function update(Request $request, $id)
    {
        $siemprehoy = Carbon::now();

        try{
           

            $Bacteria = Bacteria::find($id);
    
            $Bacteria->descripcion = $request->get('descripcionEdit');
            $Bacteria->save();
            return redirect('/bacterias');
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
        $Bacteria = Bacteria::find($id);
        $Bacteria->delete();
        return redirect('/bacterias')->with('eliminar', 'Echo');
    }
}
