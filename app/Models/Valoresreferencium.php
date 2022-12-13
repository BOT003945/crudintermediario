<?php 

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Valoresreferencium extends Model
{
	use HasFactory;
	
    public $timestamps = true;

    protected $table = 'valoresreferencia';

    protected $fillable = ['sucursal','claveprueba','Sexo','Edad','EdadMin','EdadMax','ValMin','ValMax','TextoValores','fecha_act','fecha_sync','flag_sucursales','eliminar'];
	
    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasOne
     */
    public function prueba()
    {
        return $this->hasOne('App\Models\Prueba', 'id', 'claveprueba');
    }
    
}
