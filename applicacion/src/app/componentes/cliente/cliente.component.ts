import { Component, OnInit } from '@angular/core';
import { ClienteService } from '../../servicios/cliente.service';

@Component({
  selector: 'app-cliente',
  templateUrl: './cliente.component.html',
  styleUrls: ['./cliente.component.css']
})
export class ClienteComponent implements OnInit {

  constructor(private clienteService:ClienteService) { }

  clientes:any=[];

  ngOnInit() {
    this.obtenerClientes();
  }

  obtenerClientes() {
    this.clienteService.obtengoClientes()
      .subscribe(
        res => {
          this.clientes = res;
        },
        err => console.error(err)
      );
  }


}
