import { Component, OnInit } from '@angular/core';
import { ClienteService } from '../../servicios/cliente.service';
import { Observable, of } from "rxjs";
@Component({
  selector: 'app-cliente',
  templateUrl: './cliente.component.html',
  styleUrls: ['./cliente.component.css']
})
export class ClienteComponent implements OnInit {

  constructor(private clienteService:ClienteService) { }

  clientes:Observable<any[]>;
/*   clientes:any=[]; */
  busqueda:string='';

  ngOnInit() {
    this.obtenerClientes();

  }

  fun_busqueda(){

    this.obtenerClientes();
  }
  obtenerClientes() {

    if(this.busqueda.length>0){
      this.clienteService.obtengoClientesBusqueda(this.busqueda)
      .subscribe(
        res => {
          this.clientes = res;
        },
        err => console.error(err)
      );
    }else{

      this.clienteService.obtengoClientes()
      .subscribe(
        res => {
          this.clientes = res;
        },
        err => console.error(err)
      );
    }

  }


}
