import { Component, OnInit } from '@angular/core';
import { Router, ActivatedRoute } from '@angular/router';
import { ServicioService } from '../../servicios/servicio.service';
@Component({
  selector: 'app-pedidoabm',
  templateUrl: './pedidoabm.component.html',
  styleUrls: ['./pedidoabm.component.css']
})
export class PedidoabmComponent implements OnInit {

  constructor(private activatedRoute:ActivatedRoute,
    private servicioService:ServicioService) { }

  id_Cliente:number=0;
  nombre_cliente:string='';
  servicios:any=[];

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
      this.id_Cliente=params.idcliente;
      this.nombre_cliente=params.nombrecliente;
    }
  }

}
