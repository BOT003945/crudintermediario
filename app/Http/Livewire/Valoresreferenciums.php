<?php

namespace App\Http\Livewire;

use Livewire\Component;
use Livewire\WithPagination;
use App\Models\Valoresreferencium;

class Valoresreferenciums extends Component
{
    use WithPagination;

	protected $paginationTheme = 'bootstrap';
    public $selected_id, $keyWord, $sucursal, $claveprueba, $Sexo, $Edad, $EdadMin, $EdadMax, $ValMin, $ValMax, $TextoValores, $fecha_act, $fecha_sync, $flag_sucursales, $eliminar;
    public $updateMode = false;

    public function render()
    {
		$keyWord = '%'.$this->keyWord .'%';
        return view('livewire.valoresreferencias.view', [
            'valoresreferencia' => Valoresreferencium::latest()
						->orWhere('sucursal', 'LIKE', $keyWord)
						->orWhere('claveprueba', 'LIKE', $keyWord)
						->orWhere('Sexo', 'LIKE', $keyWord)
						->orWhere('Edad', 'LIKE', $keyWord)
						->orWhere('EdadMin', 'LIKE', $keyWord)
						->orWhere('EdadMax', 'LIKE', $keyWord)
						->orWhere('ValMin', 'LIKE', $keyWord)
						->orWhere('ValMax', 'LIKE', $keyWord)
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
		$this->claveprueba = null;
		$this->Sexo = null;
		$this->Edad = null;
		$this->EdadMin = null;
		$this->EdadMax = null;
		$this->ValMin = null;
		$this->ValMax = null;
		$this->TextoValores = null;
		$this->fecha_act = null;
		$this->fecha_sync = null;
		$this->flag_sucursales = null;
		$this->eliminar = null;
    }

    public function store()
    {
        $this->validate([
		'sucursal' => 'required',
		'claveprueba' => 'required',
        ]);

        Valoresreferencium::create([ 
			'sucursal' => $this-> sucursal,
			'claveprueba' => $this-> claveprueba,
			'Sexo' => $this-> Sexo,
			'Edad' => $this-> Edad,
			'EdadMin' => $this-> EdadMin,
			'EdadMax' => $this-> EdadMax,
			'ValMin' => $this-> ValMin,
			'ValMax' => $this-> ValMax
        ]);
        
        $this->resetInput();
		$this->emit('closeModal');
		session()->flash('message', 'Valoresreferencium Successfully created.');
    }

    public function edit($id)
    {
        $record = Valoresreferencium::findOrFail($id);

        $this->selected_id = $id; 
		$this->sucursal = $record-> sucursal;
		$this->claveprueba = $record-> claveprueba;
		$this->Sexo = $record-> Sexo;
		$this->Edad = $record-> Edad;
		$this->EdadMin = $record-> EdadMin;
		$this->EdadMax = $record-> EdadMax;
		$this->ValMin = $record-> ValMin;
		$this->ValMax = $record-> ValMax;
		
		
        $this->updateMode = true;
    }

    public function update()
    {
        if ($this->selected_id) {
			$record = Valoresreferencium::find($this->selected_id);
            $record->update([ 
			'claveprueba' => $this-> claveprueba,
			'Sexo' => $this-> Sexo,
			'Edad' => $this-> Edad,
			'EdadMin' => $this-> EdadMin,
			'EdadMax' => $this-> EdadMax,
			'ValMin' => $this-> ValMin,
			'ValMax' => $this-> ValMax,
            ]);

            $this->resetInput();
            $this->updateMode = false;
			session()->flash('message', 'Valoresreferencium Successfully updated.');
        }
    }

    public function destroy($id)
    {
        if ($id) {
            $record = Valoresreferencium::where('id', $id);
            $record->delete();
        }
    }
}
