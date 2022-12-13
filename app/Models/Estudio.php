<?php 

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Estudio extends Model
{
	use HasFactory;
	
    public $timestamps = true;

    protected $table = 'estudio';

    protected $fillable = ['Dias','Horas','Minutos','ventaindividual','Sexo','Indicaciones','Notas_Internas','AlineacionTitulo',
    'ColorTitulo','Codigo','Nombre','Descripcion','depto',
    'Abreviatura','Tomas','Frecuencia','Tipoformato','Notas',
    'TiempoProceso','TipoMuestra','Instrucciones','DatosTecnicos','Encabezado','Tubo','Noaplicadescuento','esperfil','sucursal',
    'fecha_act','fecha_sync','flag_sucursales','eliminar','SucProceso'];
	
    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasOne
     */
    public function depto()
    {
        return $this->hasOne('App\Models\Depto', 'id', 'depto');
    }
    
}
