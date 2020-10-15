import { Component, OnInit } from '@angular/core';
import { Router, ActivatedRoute } from '@angular/router';
import { ServicioService } from '../../servicios/servicio.service';
import { Pedido } from '../../modelos/pedido';
import { DetallePedido } from '../../modelos/detallePedido';
import { PedidoService } from '../../servicios/pedido.service';
import { DetallePedidoService } from '../../servicios/detalle-pedido.service';
import { DatePipe } from '@angular/common';
import { Observable, of } from "rxjs";


@Component({
  selector: 'app-pedido',
  templateUrl: './pedido.component.html',
  styleUrls: ['./pedido.component.css']
})
export class PedidoComponent implements OnInit {

  pedidos:any=[];

  constructor(private pedidoService:PedidoService,
  private datePipe:DatePipe) { }

  ngOnInit() {
    this.obtenerPedidos();
  }

    obtenerPedidos(){
      this.pedidoService.obtengoPedidos()
      .subscribe(
        res => {
          console.log(res);
          this.pedidos = res;
        },
        err => console.log(err)
      )


    }


}
