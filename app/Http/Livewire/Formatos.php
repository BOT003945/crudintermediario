<?php

namespace App\Http\Livewire;

use Livewire\Component;
use Livewire\WithPagination;
use App\Models\Formato;

class Formatos extends Component
{
    use WithPagination;

	protected $paginationTheme = 'bootstrap';
    public $selected_id, $keyWord, $sucursal, $id_Estudio, $idprueba, $Prueba, $Valor1, $Valor2, $Medida, $tipoFormato, $Orden, $ClavePrueba, $autoanalizador, $TextoValores, $word, $fecha_act, $fecha_sync, $flag_sucursales, $eliminar;
    public $updateMode = false;

    public function render()
    {
		$keyWord = '%'.$this->keyWord .'%';
        return view('livewire.formatos.view', [
            'formatos' => Formato::latest()
						->orWhere('sucursal', 'LIKE', $keyWord)
						->orWhere('id_Estudio', 'LIKE', $keyWord)
						->orWhere('idprueba', 'LIKE', $keyWord)
						->orWhere('Prueba', 'LIKE', $keyWord)
						->orWhere('Valor1', 'LIKE', $keyWord)
						->orWhere('Valor2', 'LIKE', $keyWord)
						->orWhere('Medida', 'LIKE', $keyWord)
						->orWhere('tipoFormato', 'LIKE', $keyWord)
						->orWhere('Orden', 'LIKE', $keyWord)
						->orWhere('ClavePrueba', 'LIKE', $keyWord)
						->orWhere('autoanalizador', 'LIKE', $keyWord)
						->orWhere('TextoValores', 'LIKE', $keyWord)
						->orWhere('word', 'LIKE', $keyWord)
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
		$this->sucursal = null;
		$this->id_Estudio = null;
		$this->idprueba = null;
		$this->Prueba = null;
		$this->Valor1 = null;
		$this->Valor2 = null;
		$this->Medida = null;
		$this->tipoFormato = null;
		$this->Orden = null;
		$this->ClavePrueba = null;
		$this->autoanalizador = null;
		$this->TextoValores = null;
		$this->word = null;
		$this->fecha_act = null;
		$this->fecha_sync = null;
		$this->flag_sucursales = null;
		$this->eliminar = null;
    }

    public function store()
    {
        $this->validate([
        ]);

        Formato::create([ 
			'sucursal' => $this-> sucursal,
			'id_Estudio' => $this-> id_Estudio,
			'idprueba' => $this-> idprueba,
			'Prueba' => $this-> Prueba,
			'Valor1' => $this-> Valor1,
			'Valor2' => $this-> Valor2,
			'Medida' => $this-> Medida,
			'tipoFormato' => $this-> tipoFormato,
			'Orden' => $this-> Orden,
			'ClavePrueba' => $this-> ClavePrueba,
			'autoanalizador' => $this-> autoanalizador,
			'TextoValores' => $this-> TextoValores,
			'word' => $this-> word,
			'fecha_act' => $this-> fecha_act,
			'fecha_sync' => $this-> fecha_sync,
			'flag_sucursales' => $this-> flag_sucursales,
			'eliminar' => $this-> eliminar
        ]);
        
        $this->resetInput();
		$this->emit('closeModal');
		session()->flash('message', 'Formato Successfully created.');
    }

    public function edit($id)
    {
        $record = Formato::findOrFail($id);

        $this->selected_id = $id; 
		$this->sucursal = $record-> sucursal;
		$this->id_Estudio = $record-> id_Estudio;
		$this->idprueba = $record-> idprueba;
		$this->Prueba = $record-> Prueba;
		$this->Valor1 = $record-> Valor1;
		$this->Valor2 = $record-> Valor2;
		$this->Medida = $record-> Medida;
		$this->tipoFormato = $record-> tipoFormato;
		$this->Orden = $record-> Orden;
		$this->ClavePrueba = $record-> ClavePrueba;
		$this->autoanalizador = $record-> autoanalizador;
		$this->TextoValores = $record-> TextoValores;
		$this->word = $record-> word;
		$this->fecha_act = $record-> fecha_act;
		$this->fecha_sync = $record-> fecha_sync;
		$this->flag_sucursales = $record-> flag_sucursales;
		$this->eliminar = $record-> eliminar;
		
        $this->updateMode = true;
    }

    public function update()
    {
        $this->validate([
        ]);

        if ($this->selected_id) {
			$record = Formato::find($this->selected_id);
            $record->update([ 
			'sucursal' => $this-> sucursal,
			'id_Estudio' => $this-> id_Estudio,
			'idprueba' => $this-> idprueba,
			'Prueba' => $this-> Prueba,
			'Valor1' => $this-> Valor1,
			'Valor2' => $this-> Valor2,
			'Medida' => $this-> Medida,
			'tipoFormato' => $this-> tipoFormato,
			'Orden' => $this-> Orden,
			'ClavePrueba' => $this-> ClavePrueba,
			'autoanalizador' => $this-> autoanalizador,
			'TextoValores' => $this-> TextoValores,
			'word' => $this-> word,
			'fecha_act' => $this-> fecha_act,
			'fecha_sync' => $this-> fecha_sync,
			'flag_sucursales' => $this-> flag_sucursales,
			'eliminar' => $this-> eliminar
            ]);

            $this->resetInput();
            $this->updateMode = false;
			session()->flash('message', 'Formato Successfully updated.');
        }
    }

    public function destroy($id)
    {
        if ($id) {
            $record = Formato::where('id', $id);
            $record->delete();
        }
    }
}
