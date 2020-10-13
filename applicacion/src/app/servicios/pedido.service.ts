import { Injectable } from '@angular/core';
import​ { ​HttpClient​ } ​from​​'@angular/common/http'​;
import​ { ​Observable​ } ​from​​'rxjs';
import { Pedido } from '../modelos/pedido';

@Injectable({
  providedIn: 'root'
})
export class PedidoService {

  API_URI = 'http://localhost:3000/api';

  constructor(private​​http​: ​HttpClient) {}

  obtengoPedidos() : ​Observable​<​any​>{
    ​return​​ this​.​http​.​get​(​`${this.API_URI}/Pedido`​​);

  }


  guardarPedido(pedido:Pedido ) {
    return this.http.post(`${this.API_URI}/Pedido`, pedido);
  }




  actualizarPedido(id: string|number, pedido: Pedido): Observable<Pedido> {
    return this.http.put(`${this.API_URI}/pedido/${id}`, pedido);
  }




  /* obtengounDetalle(id: number) : ​Observable​<​any​>{
    ​return​​ this​.​http​.​get​(​`http://localhost:3000/api/detallePedido/${id}`​);

  } */


}
