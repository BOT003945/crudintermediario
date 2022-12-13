<?php 

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Formato extends Model
{
	use HasFactory;
	
    public $timestamps = true;

    protected $table = 'formatos';

    protected $fillable = ['sucursal','id_Estudio','idprueba','Prueba','Valor1','Valor2','Medida','tipoFormato','Orden','ClavePrueba','autoanalizador','TextoValores','word','fecha_act','fecha_sync','flag_sucursales','eliminar'];
	
    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasOne
     */
    public function estudio()
    {
        return $this->hasOne('App\Models\Estudio', 'id', 'id_Estudio');
    }
    
    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasOne
     */
    public function prueba()
    {
        return $this->hasOne('App\Models\Prueba', 'id', 'idprueba');
    }
    
}
