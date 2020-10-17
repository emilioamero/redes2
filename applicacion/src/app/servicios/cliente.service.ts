
import { Injectable } from '@angular/core';
import​ { ​HttpClient​ } ​from​​'@angular/common/http'​;
import​ { ​Observable​ } ​from​​'rxjs';
import {Globals} from 'src/app/globales'

@Injectable({
  providedIn: 'root'
})
export class ClienteService {


  constructor​(​private ​​http​: ​HttpClient​,
    private globals:Globals
    ) { }

  obtengoClientesBusqueda(nombrecliente:string) : ​Observable​<​any​>{
    ​return​​ this​.​http​.​get​(​`${this.globals.URLapidatos}/cliente/${nombrecliente}`​​);

  }

  obtengoClientes() : ​Observable​<​any​>{
    ​return​​ this​.​http​.​get​(​`${this.globals.URLapidatos}/cliente`​​);

  }

  obtengounCliente(id: string) : ​Observable​<​any​>{
    ​return​​ this​.​http​.​get​(​`${this.globals.URLapidatos}/clientes/${id}`​);

  }

/*
  guardarCliente(cliente: Cliente) {
    return this.http.post(`http://localhost:3000/api/clientes/api/cliente`, cliente);
  }
 */

}
