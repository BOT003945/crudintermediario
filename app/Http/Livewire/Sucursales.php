<?php

namespace App\Http\Livewire;

use Livewire\Component;
use Livewire\WithPagination;
use App\Models\Sucursale;

class Sucursales extends Component
{
    use WithPagination;

	protected $paginationTheme = 'bootstrap';
    public $selected_id, $keyWord, $descripcion, $flag_sync, $propagar, $sync_tablas, $bloquea_edicion, $lic_autorizado, $fecha_act, $fecha_sync, $flag_sucursales, $eliminar;
    public $updateMode = false;

    public function render()
    {
		$keyWord = '%'.$this->keyWord .'%';
        return view('livewire.sucursales.view', [
            'sucursales' => Sucursale::latest()
						->orWhere('descripcion', 'LIKE', $keyWord)
						->orWhere('flag_sync', 'LIKE', $keyWord)
						->orWhere('propagar', 'LIKE', $keyWord)
						->orWhere('sync_tablas', 'LIKE', $keyWord)
						->orWhere('bloquea_edicion', 'LIKE', $keyWord)
						->orWhere('lic_autorizado', 'LIKE', $keyWord)
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
		$this->descripcion = null;
		$this->flag_sync = null;
		$this->propagar = null;
		$this->sync_tablas = null;
		$this->bloquea_edicion = null;
		$this->lic_autorizado = null;
		$this->fecha_act = null;
		$this->fecha_sync = null;
		$this->flag_sucursales = null;
		$this->eliminar = null;
    }

    public function store()
    {
        $this->validate([
        ]);

        Sucursale::create([ 
			'descripcion' => $this-> descripcion,
			'flag_sync' => $this-> flag_sync,
			'propagar' => $this-> propagar,
			'sync_tablas' => $this-> sync_tablas,
			'bloquea_edicion' => $this-> bloquea_edicion,
			'lic_autorizado' => $this-> lic_autorizado,
			'fecha_act' => $this-> fecha_act,
			'fecha_sync' => $this-> fecha_sync,
			'flag_sucursales' => $this-> flag_sucursales,
			'eliminar' => $this-> eliminar
        ]);
        
        $this->resetInput();
		$this->emit('closeModal');
		session()->flash('message', 'Sucursale Successfully created.');
    }

    public function edit($id)
    {
        $record = Sucursale::findOrFail($id);

        $this->selected_id = $id; 
		$this->descripcion = $record-> descripcion;
		$this->flag_sync = $record-> flag_sync;
		$this->propagar = $record-> propagar;
		$this->sync_tablas = $record-> sync_tablas;
		$this->bloquea_edicion = $record-> bloquea_edicion;
		$this->lic_autorizado = $record-> lic_autorizado;
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
			$record = Sucursale::find($this->selected_id);
            $record->update([ 
			'descripcion' => $this-> descripcion,
			'flag_sync' => $this-> flag_sync,
			'propagar' => $this-> propagar,
			'sync_tablas' => $this-> sync_tablas,
			'bloquea_edicion' => $this-> bloquea_edicion,
			'lic_autorizado' => $this-> lic_autorizado,
			'fecha_act' => $this-> fecha_act,
			'fecha_sync' => $this-> fecha_sync,
			'flag_sucursales' => $this-> flag_sucursales,
			'eliminar' => $this-> eliminar
            ]);

            $this->resetInput();
            $this->updateMode = false;
			session()->flash('message', 'Sucursale Successfully updated.');
        }
    }

    public function destroy($id)
    {
        if ($id) {
            $record = Sucursale::where('id', $id);
            $record->delete();
        }
    }
}
