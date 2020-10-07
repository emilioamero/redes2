
import { Injectable } from '@angular/core';
import​ { ​HttpClient​ } ​from​​'@angular/common/http'​;
import​ { ​Observable​ } ​from​​'rxjs';

@Injectable({
  providedIn: 'root'
})
export class ClienteService {

  constructor​(​private​​http​: ​HttpClient​) { }
  obtengoClientes() : ​Observable​<​any​>{
    ​return​​ this​.​http​.​get​(​"http://localhost:3000/api/cliente"​);

  }

  obtengounCliente(id: string) : ​Observable​<​any​>{
    ​return​​ this​.​http​.​get​(​`http://localhost:3000/api/clientes/${id}`​);

  }

/*
  guardarCliente(cliente: Cliente) {
    return this.http.post(`http://localhost:3000/api/clientes/api/cliente`, cliente);
  }
 */

}
