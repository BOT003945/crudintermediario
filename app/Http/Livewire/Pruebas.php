<?php

namespace App\Http\Livewire;

use Livewire\Component;
use Livewire\WithPagination;
use App\Models\Prueba;

class Pruebas extends Component
{
    use WithPagination;

	protected $paginationTheme = 'bootstrap';
    public $selected_id, $keyWord, $abreviatura, $cveprueba, $Decimales, $Descripcion, $Prueba, $Medida, $hoja_trabajo, $id_Departamento, $id_Metodo, $impr_metodo_Resultado, $imprimir_negritas, $impr_Nota_Resultado, $formula, $antibiograma, $notas, $notas_internas, $sexo, $TipoMuestra, $Tipo_Valor, $valor_restringido, $tipo_valor_normalidad, $valor_normalidad_texto, $indicaciones, $TipoResultado, $dias, $horas, $minutos, $Autoanalizador, $Resultado_default, $sucursal, $fecha_act, $fecha_sync, $flag_sucursales, $eliminar;
    public $updateMode = false;

    public function render()
    {
		$keyWord = '%'.$this->keyWord .'%';
        return view('livewire.pruebas.view', [
            'pruebas' => Prueba::latest()
						->orWhere('abreviatura', 'LIKE', $keyWord)
						->orWhere('cveprueba', 'LIKE', $keyWord)
						->orWhere('Decimales', 'LIKE', $keyWord)
						->orWhere('Descripcion', 'LIKE', $keyWord)
						->orWhere('Prueba', 'LIKE', $keyWord)
						->orWhere('Medida', 'LIKE', $keyWord)
						->orWhere('hoja_trabajo', 'LIKE', $keyWord)
						->orWhere('id_Departamento', 'LIKE', $keyWord)
						->orWhere('id_Metodo', 'LIKE', $keyWord)
						->orWhere('impr_metodo_Resultado', 'LIKE', $keyWord)
						->orWhere('imprimir_negritas', 'LIKE', $keyWord)
						->orWhere('impr_Nota_Resultado', 'LIKE', $keyWord)
						->orWhere('formula', 'LIKE', $keyWord)
						->orWhere('antibiograma', 'LIKE', $keyWord)
						->orWhere('notas', 'LIKE', $keyWord)
						->orWhere('notas_internas', 'LIKE', $keyWord)
						->orWhere('sexo', 'LIKE', $keyWord)
						->orWhere('TipoMuestra', 'LIKE', $keyWord)
						->orWhere('Tipo_Valor', 'LIKE', $keyWord)
						->orWhere('valor_restringido', 'LIKE', $keyWord)
						->orWhere('tipo_valor_normalidad', 'LIKE', $keyWord)
						->orWhere('valor_normalidad_texto', 'LIKE', $keyWord)
						->orWhere('indicaciones', 'LIKE', $keyWord)
						->orWhere('TipoResultado', 'LIKE', $keyWord)
						->orWhere('dias', 'LIKE', $keyWord)
						->orWhere('horas', 'LIKE', $keyWord)
						->orWhere('minutos', 'LIKE', $keyWord)
						->orWhere('Autoanalizador', 'LIKE', $keyWord)
						->orWhere('Resultado_default', 'LIKE', $keyWord)
						->orWhere('sucursal', 'LIKE', $keyWord)
						->orWhere('fecha_act', 'LIKE', $keyWord)
						->orWhere('fecha_sync', 'LIKE', $keyWord)
						->orWhere('flag_sucursales', 'LIKE', $keyWord)
						->orWhere('eliminar', 'LIKE', $keyWord)
						->paginate(10),
        ]);
    }
	
    public function cancel()
    {
        $this->resetInput();
        $this->updateMode = false;
    }
	
    private function resetInput()
    {		
		$this->abreviatura = null;
		$this->cveprueba = null;
		$this->Decimales = null;
		$this->Descripcion = null;
		$this->Prueba = null;
		$this->Medida = null;
		$this->hoja_trabajo = null;
		$this->id_Departamento = null;
		$this->id_Metodo = null;
		$this->impr_metodo_Resultado = null;
		$this->imprimir_negritas = null;
		$this->impr_Nota_Resultado = null;
		$this->formula = null;
		$this->antibiograma = null;
		$this->notas = null;
		$this->notas_internas = null;
		$this->sexo = null;
		$this->TipoMuestra = null;
		$this->Tipo_Valor = null;
		$this->valor_restringido = null;
		$this->tipo_valor_normalidad = null;
		$this->valor_normalidad_texto = null;
		$this->indicaciones = null;
		$this->TipoResultado = null;
		$this->dias = null;
		$this->horas = null;
		$this->minutos = null;
		$this->Autoanalizador = null;
		$this->Resultado_default = null;
		$this->sucursal = null;
		$this->fecha_act = null;
		$this->fecha_sync = null;
		$this->flag_sucursales = null;
		$this->eliminar = null;
    }

    public function store()
    {
        $this->validate([
		'abreviatura' => 'required',
		'cveprueba' => 'required',
		'sucursal' => 'required',
        ]);

        Prueba::create([ 
			'abreviatura' => $this-> abreviatura,
			'cveprueba' => $this-> cveprueba,
			'Decimales' => $this-> Decimales,
			'Descripcion' => $this-> Descripcion,
			'Prueba' => $this-> Prueba,
			'Medida' => $this-> Medida,
			'hoja_trabajo' => $this-> hoja_trabajo,
			'id_Departamento' => $this-> id_Departamento,
			'id_Metodo' => $this-> id_Metodo,
			'impr_metodo_Resultado' => $this-> impr_metodo_Resultado,
			'imprimir_negritas' => $this-> imprimir_negritas,
			'impr_Nota_Resultado' => $this-> impr_Nota_Resultado,
			'formula' => $this-> formula,
			'antibiograma' => $this-> antibiograma,
			'notas' => $this-> notas,
			'notas_internas' => $this-> notas_internas,
			'sexo' => $this-> sexo,
			'TipoMuestra' => $this-> TipoMuestra,
			'Tipo_Valor' => $this-> Tipo_Valor,
			'valor_restringido' => $this-> valor_restringido,
			'tipo_valor_normalidad' => $this-> tipo_valor_normalidad,
			'valor_normalidad_texto' => $this-> valor_normalidad_texto,
			'indicaciones' => $this-> indicaciones,
			'TipoResultado' => $this-> TipoResultado,
			'dias' => $this-> dias,
			'horas' => $this-> horas,
			'minutos' => $this-> minutos,
			'Autoanalizador' => $this-> Autoanalizador,
			'Resultado_default' => $this-> Resultado_default,
			'sucursal' => $this-> sucursal,
			'fecha_act' => $this-> fecha_act,
			'fecha_sync' => $this-> fecha_sync,
			'flag_sucursales' => $this-> flag_sucursales,
			'eliminar' => $this-> eliminar
        ]);
        
        $this->resetInput();
		$this->emit('closeModal');
		session()->flash('message', 'Prueba Successfully created.');
    }

    public function edit($id)
    {
        $record = Prueba::findOrFail($id);

        $this->selected_id = $id; 
		$this->abreviatura = $record-> abreviatura;
		$this->cveprueba = $record-> cveprueba;
		$this->Decimales = $record-> Decimales;
		$this->Descripcion = $record-> Descripcion;
		$this->Prueba = $record-> Prueba;
		$this->Medida = $record-> Medida;
		$this->hoja_trabajo = $record-> hoja_trabajo;
		$this->id_Departamento = $record-> id_Departamento;
		$this->id_Metodo = $record-> id_Metodo;
		$this->impr_metodo_Resultado = $record-> impr_metodo_Resultado;
		$this->imprimir_negritas = $record-> imprimir_negritas;
		$this->impr_Nota_Resultado = $record-> impr_Nota_Resultado;
		$this->formula = $record-> formula;
		$this->antibiograma = $record-> antibiograma;
		$this->notas = $record-> notas;
		$this->notas_internas = $record-> notas_internas;
		$this->sexo = $record-> sexo;
		$this->TipoMuestra = $record-> TipoMuestra;
		$this->Tipo_Valor = $record-> Tipo_Valor;
		$this->valor_restringido = $record-> valor_restringido;
		$this->tipo_valor_normalidad = $record-> tipo_valor_normalidad;
		$this->valor_normalidad_texto = $record-> valor_normalidad_texto;
		$this->indicaciones = $record-> indicaciones;
		$this->TipoResultado = $record-> TipoResultado;
		$this->dias = $record-> dias;
		$this->horas = $record-> horas;
		$this->minutos = $record-> minutos;
		$this->Autoanalizador = $record-> Autoanalizador;
		$this->Resultado_default = $record-> Resultado_default;
		$this->sucursal = $record-> sucursal;
		$this->fecha_act = $record-> fecha_act;
		$this->fecha_sync = $record-> fecha_sync;
		$this->flag_sucursales = $record-> flag_sucursales;
		$this->eliminar = $record-> eliminar;
		
        $this->updateMode = true;
    }

    public function update()
    {
        $this->validate([
		'abreviatura' => 'required',
		'cveprueba' => 'required',
		'sucursal' => 'required',
        ]);

        if ($this->selected_id) {
			$record = Prueba::find($this->selected_id);
            $record->update([ 
			'abreviatura' => $this-> abreviatura,
			'cveprueba' => $this-> cveprueba,
			'Decimales' => $this-> Decimales,
			'Descripcion' => $this-> Descripcion,
			'Prueba' => $this-> Prueba,
			'Medida' => $this-> Medida,
			'hoja_trabajo' => $this-> hoja_trabajo,
			'id_Departamento' => $this-> id_Departamento,
			'id_Metodo' => $this-> id_Metodo,
			'impr_metodo_Resultado' => $this-> impr_metodo_Resultado,
			'imprimir_negritas' => $this-> imprimir_negritas,
			'impr_Nota_Resultado' => $this-> impr_Nota_Resultado,
			'formula' => $this-> formula,
			'antibiograma' => $this-> antibiograma,
			'notas' => $this-> notas,
			'notas_internas' => $this-> notas_internas,
			'sexo' => $this-> sexo,
			'TipoMuestra' => $this-> TipoMuestra,
			'Tipo_Valor' => $this-> Tipo_Valor,
			'valor_restringido' => $this-> valor_restringido,
			'tipo_valor_normalidad' => $this-> tipo_valor_normalidad,
			'valor_normalidad_texto' => $this-> valor_normalidad_texto,
			'indicaciones' => $this-> indicaciones,
			'TipoResultado' => $this-> TipoResultado,
			'dias' => $this-> dias,
			'horas' => $this-> horas,
			'minutos' => $this-> minutos,
			'Autoanalizador' => $this-> Autoanalizador,
			'Resultado_default' => $this-> Resultado_default,
			'sucursal' => $this-> sucursal,
			'fecha_act' => $this-> fecha_act,
			'fecha_sync' => $this-> fecha_sync,
			'flag_sucursales' => $this-> flag_sucursales,
			'eliminar' => $this-> eliminar
            ]);

            $this->resetInput();
            $this->updateMode = false;
			session()->flash('message', 'Prueba Successfully updated.');
        }
    }

    public function destroy($id)
    {
        if ($id) {
            $record = Prueba::where('id', $id);
            $record->delete();
        }
    }
}
