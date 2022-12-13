<?php 

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Empresasn extends Model
{
	use HasFactory;
	
    public $timestamps = true;

    protected $table = 'empresasn';

    protected $fillable = ['idEmpresa','sucursal','Nombre','cp','tel1','tel2','Fec_convenio','tipo_tarifa','contacto','colonia','descuento','pacientesN_Mes','pacientesN_Acum','Importe_Mes','Importe_Acum','Saldo','rfc','direccion','Ciudad','Entidad','Tipo_Empresa','Fecha_Corte','dias_pago','Acum_estudios','Cla_Ant','UsaTarifaDe','SiUsa','numero','pais','fecha_act','fecha_sync','flag_sucursales','eliminar'];
	
}
