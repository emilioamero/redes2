import { Component, OnInit } from '@angular/core';
import { Router, ActivatedRoute } from '@angular/router';
import { ServicioService } from '../../servicios/servicio.service';
import { Pedido } from '../../modelos/pedido';
import { DetallePedido } from '../../modelos/detallePedido';
import { PedidoService } from '../../servicios/pedido.service';
import { DetallePedidoService } from '../../servicios/detalle-pedido.service';
import { DatePipe } from '@angular/common';

@Component({
  selector: 'app-pedidoabm',
  templateUrl: './pedidoabm.component.html',
  styleUrls: ['./pedidoabm.component.css']
})
export class PedidoabmComponent implements OnInit {

  id_Cliente:number=0;
  nombre_cliente:string='';
  servicios:any=[];

  fechaActual = new Date();
  pedido:Pedido={
    idPedido:0
  };
  detallePedido:DetallePedido={
    idPedido:0,

  };
  respuestaServidor:any=[];



  constructor(private activatedRoute:ActivatedRoute,
    private servicioService:ServicioService,
    private pedidoService:PedidoService,
    private detallePedidoService:DetallePedidoService,
    private datePipe:DatePipe) { }



  ngOnInit() {


    this.servicioService.obtengoServicios()
    .subscribe(
      res => {
        console.log(res);
        this.servicios = res;
      },
      err => console.log(err)
    )

    const params = this.activatedRoute.snapshot.params;
    if (params.idcliente) {
      this.pedido.idCliente=params.idcliente;
      this.nombre_cliente=params.nombrecliente;


    }


    this.guardarPedido();


  }


  capturarValorCombo(valor:string){


    if(valor=='servicio'){
      this.detallePedido.idServicio = this.detallePedido.idServicio.valueOf();
      console.log('id se servicio' + this.detallePedido.idServicio)

    }

    if(valor=='cantidad'){
      this.detallePedido.cantidad = this.detallePedido.cantidad.valueOf();
      console.log('cantidad' + this.detallePedido.cantidad)

    }


  }



  guardarPedido(){


    this.pedido.fechapedido=this.datePipe.transform(this.fechaActual, 'yyyy-MM-dd');
    console.log(this.pedido.fechapedido);
    this.pedido.fechaentrega=this.datePipe.transform(this.fechaActual.setDate(this.fechaActual.getDate() + 3), 'yyyy-MM-dd');
    this.pedido.estado="Pendiente";


    this.pedidoService.guardarPedido(this.pedido)
    .subscribe(
      res => {
        this.respuestaServidor=res;
        this.detallePedido.idPedido=this.respuestaServidor.insertId;
        /* llenar los campos del objeto detalle de pedido */
      },
      err => {
        console.error(err);

        return
      }
    )


  }




  guardarDetPedido(){


    this.detallePedidoService.guardarDetallepedido(this.detallePedido)
    .subscribe(
      res => {
        console.log(res);
      },
      err => {
        console.error(err);

        return
      }
    )

  }


}
