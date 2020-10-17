import { Component, OnInit } from '@angular/core';
import { Router, ActivatedRoute } from '@angular/router';
import { ClienteService } from '../../servicios/cliente.service';
import {Location} from '@angular/common';

@Component({
  selector: 'app-editar-cliente',
  templateUrl: './editar-cliente.component.html',
  styleUrls: ['./editar-cliente.component.css']
})
export class EditarClienteComponent implements OnInit {

  constructor(private _location: Location,
    private clienteService:ClienteService,
    private router: Router,
     private activatedRoute: ActivatedRoute) { }

  /* cliente:any=[]; */
 /*  {"id": 1, "nombre": "Cliente 1", "localidad":{"id":1 ,"nombre":"Villa Maria"}} */





  ngOnInit() {

  }


  backClicked() {
    this._location.back();
  }

  guardar() {
/*     this.clienteService.obtengounCliente(this.objetocliente)
    .subscribe(
      res => {
        console.log(res);
        this.cliente = res;
        this.idciudad= this.cliente.localidad.id;
      },
      err => console.log(err)
    ) */
  }


}
