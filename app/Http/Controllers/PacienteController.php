<?php

namespace App\Http\Controllers;

use App\Models\Paciente;
use Illuminate\Http\Request;
use App\Models\Empresas;
use App\Models\Pacientes;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;
use Barryvdh\DomPDF\Facade\Pdf;

class PacienteController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $empresas = DB::select('SELECT * FROM empresas');
        //$pacientes = Pacientes::all();
        $pacientes = DB::select('SELECT idPaciente,Paciente, email, DATE_FORMAT(FecNac, "%d/%m/%Y") AS FecNacFormateada, DATE_FORMAT(FecNac, "%Y-%m-%d") as FecNac, Sexo, id_Empresa, 
        Rfc, Calle, Numero, Colonia, Cp, Pais, Estado, Municipio, Telefono FROM pacientes;');
        return view('pacientes.index')->with([
            'empresas' => $empresas,
            'pacientes' => $pacientes
        ]);
    }

    public function create()
    {
        //
    }

    public function store(Request $request)
    {
        $siemprehoy = Carbon::now();
        
        $Pacientes = new Pacientes();
        $Pacientes->Paciente = $request->get('PacienteCreate');
        $Pacientes->FecNac = $request->get('FecNacCreate');
        $Pacientes->Sexo = $request->get('SexoCreate');
        $Pacientes->id_Empresa = $request->get('EmpresaCreate');
        $Pacientes->Telefono = $request->get('TelefonoCreate');
        $Pacientes->email = $request->get('emailCreate');
        $Pacientes->Rfc = $request->get('rfcCreate');
        $Pacientes->Cp = $request->get('CpCreate');
        $Pacientes->Calle = $request->get('calleCreate');
        $Pacientes->Numero = $request->get('NumeroCreate');
        $Pacientes->Colonia = $request->get('ColoniaCreate');
        $Pacientes->Pais = $request->get('paisCreate');
        $Pacientes->Estado = $request->get('EstadoCreate');
        $Pacientes->Municipio = $request->get('MunicipioCreate');
        $Pacientes->sucursal = session('SUCURSAL');
        $Pacientes->suc_empresa = session('SUCURSAL');
        $Pacientes->save();
        
        return redirect('/pacientes');
        session()->flash('message', 'Paciente Successfully created.');
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

    public function edit(Request $request)
    {   
        $where = array('idPaciente' => $request->idPaciente);
        $pacientes  = Pacientes::where($where)->first();
      
        return Response()->json($pacientes);
    }

    public function update(Request $request, $id)
    {
        $siemprehoy = Carbon::now();
        $Paciente = Pacientes::find($id);
        $Paciente->Paciente = $request->get('PacienteEdit');
        $Paciente->FecNac = $request->get('FecNacEdit');
        $Paciente->Sexo = $request->get('SexoEdit');
        $Paciente->id_Empresa = $request->get('EmpresaEdit');
        $Paciente->Telefono = $request->get('TelefonoEdit');
        $Paciente->email = $request->get('emailEdit');
        $Paciente->Rfc = $request->get('rfcEdit');
        $Paciente->Cp = $request->get('CpEdit');
        $Paciente->Calle = $request->get('calleEdit');
        $Paciente->Numero = $request->get('NumeroEdit');
        $Paciente->Colonia = $request->get('ColoniaEdit');
        $Paciente->Pais = $request->get('paisEdit');
        $Paciente->Estado = $request->get('EstadoEdit');
        $Paciente->Municipio = $request->get('MunicipioEdit');
        $Paciente->save();
        return redirect('/pacientes');
        session()->flash('message', 'Paciente Successfully actualizado.');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $paciente = Pacientes::find($id);
        $paciente->delete();
        return redirect('/pacientes')->with('eliminar', 'Echo');
    }

    public function reportePDF()
    {
        $siemprehoy = Carbon::now()->toDateString();
        $actualhora = Carbon::now()->isoFormat('H:mm:ss A');
        $pacientes = Pacientes::latest()->paginate(20);
        $pdf = Pdf::loadView('reportepacientes', compact('pacientes','actualhora','siemprehoy'))
		->setPaper(array(0,0,1000.00,1000), 'portrait');
        return $pdf->stream('REPORTE');
        //Obtenemos los registros
        //Obtenemos los registros
        // $registros = Paciente::latest()->paginate(10);

        // $this->fpdf->AddPage();
        // $this->fpdf->SetTextColor(35,56,113);
        // $this->fpdf->SetFont('Arial','B',11);
        // $this->fpdf->Image('https://www.inadware.com.mx/images/Logoinadware0001.png',10,10,50,0,'PNG');

        // $this->fpdf->Cell(0,10,utf8_decode("Listado Clientes"),0,"","C");

        // $this->fpdf->Ln();
        // $this->fpdf->Ln();
        // $this->fpdf->SetTextColor(0,0,0);  // Establece el color del texto 
        // $this->fpdf->SetFillColor(206, 246, 245); // establece el color del fondo de la celda 
        // $this->fpdf->SetFont('Arial','B',10); 
        //  //El ancho de las columnas debe de sumar promedio 190        
        
        //  $this->fpdf->cell(14.61,8,utf8_decode("Clave"),1,"","L",true);
        //  $this->fpdf->cell(14.61,8,utf8_decode("Fec. Alta"),1,"","L",true);
        //  $this->fpdf->cell(14.61,8,utf8_decode("Nombre"),1,"","L",true);
        //  $this->fpdf->cell(14.61,8,utf8_decode("A.Paterno"),1,"","L",true);
        //  $this->fpdf->cell(14.61,8,utf8_decode("A.Materno"),1,"","L",true);
        //  $this->fpdf->cell(14.61,8,utf8_decode("Fecha de Nacimiento"),1,"","L",true);
        //  $this->fpdf->cell(14.61,8,utf8_decode("Sexo"),1,"","L",true);
        //  $this->fpdf->cell(14.61,8,utf8_decode("Domicilio"),1,"","L",true);
        //  $this->fpdf->cell(14.61,8,utf8_decode("C.P"),1,"","L",true);
        //  $this->fpdf->cell(14.61,8,utf8_decode("Estado"),1,"","L",true);
        //  $this->fpdf->cell(14.61,8,utf8_decode("Municipio"),1,"","L",true);
        //  $this->fpdf->cell(14.61,8,utf8_decode("Teléfono"),1,"","L",true);
        //  $this->fpdf->cell(14.61,8,utf8_decode("Email"),1,"","L",true);


        //  foreach ($registros as $reg)
        //  {
        //     $this->fpdf->cell(14.61,8,utf8_decode($reg->Paciente),1,"","L",true);
        //     $this->fpdf->cell(14.61,8,utf8_decode($reg->Fec_alta),1,"","L",true);
        //     $this->fpdf->cell(14.61,8,utf8_decode($reg->Nombre),1,"","L",true);
        //     $this->fpdf->cell(14.61,8,utf8_decode($reg->Paterno),1,"","L",true);
        //     $this->fpdf->cell(14.61,8,utf8_decode($reg->Materno),1,"","L",true);
        //     $this->fpdf->cell(14.61,8,utf8_decode($reg->FecNac),1,"","L",true);
        //     $this->fpdf->cell(14.61,8,utf8_decode($reg->Sexo),1,"","L",true);
        //     $this->fpdf->cell(14.61,8,utf8_decode($reg->Calle),1,"","L",true);
        //     $this->fpdf->cell(14.61,8,utf8_decode($reg->Cp),1,"","L",true);
        //     $this->fpdf->cell(14.61,8,utf8_decode($reg->Estado),1,"","L",true);
        //     $this->fpdf->cell(14.61,8,utf8_decode($reg->Municipio),1,"","L",true);
        //     $this->fpdf->cell(14.61,8,utf8_decode($reg->Telefono),1,"","L",true);
        //     $this->fpdf->cell(14.61,6,utf8_decode($reg->email),1,"","L",true);
        //     $this->fpdf->Ln(); 
        //  }

        // $this->fpdf->Output();

        // exit;
    }
}
