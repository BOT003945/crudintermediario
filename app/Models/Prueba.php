<?php 

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Prueba extends Model
{
	use HasFactory;
	
    public $timestamps = true;

    protected $table = 'pruebas';

    protected $fillable = ['abreviatura','cveprueba','Decimales','Descripcion','Prueba','Medida','hoja_trabajo','id_Departamento','id_Metodo','impr_metodo_Resultado','imprimir_negritas','impr_Nota_Resultado','formula','antibiograma','notas','notas_internas','sexo','TipoMuestra','Tipo_Valor','valor_restringido','tipo_valor_normalidad','valor_normalidad_texto','indicaciones','TipoResultado','dias','horas','minutos','Autoanalizador','Resultado_default','sucursal','fecha_act','fecha_sync','flag_sucursales','eliminar'];
	
    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasOne
     */
    public function deptos()
    {
        return $this->hasOne('App\Models\Depto', 'id', 'id_Departamento');
    }
    
    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function formatos()
    {
        return $this->hasMany('App\Models\Formato', 'idprueba', 'id');
    }
    
    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasOne
     */
    public function metodo()
    {
        return $this->hasOne('App\Models\Metodo', 'id', 'id_Metodo');
    }
    
    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function valoresreferencias()
    {
        return $this->hasMany('App\Models\Valoresreferencium', 'claveprueba', 'id');
    }
    
}
