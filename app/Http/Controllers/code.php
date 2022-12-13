<?php        
        try{
           
            $mUtimaSolicitud = SolicitudController::ultimaSolicitud();  
            $mFolio = SolicitudController::generarFolio($mUtimaSolicitud);
            DB::beginTransaction();
            $solicitud=new solicitud;
            $solicitud->sucursal='00';
            $solicitud->solicitud=$mUtimaSolicitud;
            $solicitud->folio= $mFolio;
            $solicitud->id_paciente=$request->get('tIdPaciente');
            $solicitud->id_doctor=$request->get('tIdDoctor');
            $solicitud->id_empresa=$request->get('tIdEmpresa');
            $mytime = Carbon::now();
            $solicitud->fecha=$mytime->toDateTimeString();
            $solicitud->suc_paciente='00';
            $solicitud->suc_doctor='00';
            $solicitud->suc_empresa='00';
            $solicitud->edad=$request->get('tEdad');
            $solicitud->sexo=$request->get('tSexo');
            $solicitud->edadtipo=$request->get('tTipoEdad');
            $solicitud->expediente=$request->get('tNotas2');  
            $solicitud->estatus='0';  

            $solicitud->Tipo_Pago=$request->get('tipoPago');
            $solicitud->Fecha_Entrega=$request->get('tFechaEntrega');
            $solicitud->Anticipo=$request->get('tAnticipo2');
            //$solicitud->Importe=$request->get('tImporte');
            $solicitud->Tipo_toma=$request->get('tIdTipoToma');
            $solicitud->Descuento=$request->get('tDescuento2');
            $solicitud->Total=$request->get('tTotal2');
            $solicitud->Estudios=substr($request->get('tEstudiosSolicitud'),0,254);
            $solicitud->subtotal=$request->get('tSubtotal2');

            $idestudio = $request->get('idestudio');
            $fecha = $request->get('tfecha');
            $tomas = $request->get('tomas');
            $precio = $request->get('precio');
            $descuento = $request->get('descuento');
            $tubo = $request->get('tubo'); 
            $depto = $request->get('depto');
            $importe = $request->get('importe');
            $abreviatura = $request->get('abreviatura');
            $descimpte = $request->get('descimpte');
            while($cont < count($idestudio)){
                $estxsol = new estxsol();
                $estxsol->id_solicitud= $solicitud->idSolicitud; 
                $estxsol->fecha=$mytime->toDateTimeString();
                $estxsol->id_estudio= $idestudio[$cont];
                $estxsol->Tomas= $tomas[$cont];
        var fila = '<tr class="selected" id="fila'+cont+'"><td><input type="hidden" name="idestudio[]" value="'+idestudio+'">'+estudio+'</td>   
        <td><input type="hidden" name="tomas[]" value="'+tomas+'">'+tomas+'</td>   <td><input type="hidden" name="precio[]" value="'+precio+'">'+Moneda(precio)+'</td>        
        <td><input type="hidden" name="descuento[]" value="'+descuento+'">'+descuento+' % </td> <td>INCOMPLETO</td><td>-</td><td>
        <button type="button" class="btn-xs btn-danger fa fa-trash" onclick="eliminar('+cont+');"></button>  <td><input type="hidden" name="tubo[]" value="'+tubo+'"></td>
        <td><input type="hidden" name="depto[]" value="'+depto+'"></td><td><input type="hidden" name="abreviatura[]" value="'+abreviatura+'"></td>
        <td><input type="hidden" name="importe[]" value="'+importe+'"></td><td><input type="hidden" name="descimpte[]" value="'+descimpte+'"></td>        </tr>'; cont++;
                CalcularTotales();
                evaluar();
                $('#detalles').append(fila);  
        