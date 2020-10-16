import { Injectable } from '@angular/core';
import​ { ​HttpClient​ } ​from​​'@angular/common/http'​;
import​ { ​Observable​ } ​from​​'rxjs';
import { Pedido } from '../modelos/pedido';
import {Globals} from 'src/app/globales'


@Injectable({
  providedIn: 'root'
})
export class PedidoService {



  constructor(private​​http​: ​HttpClient,private globals:Globals) {}

  obtengoPedidos() : ​Observable​<​any​>{
    ​return​​ this​.​http​.​get​(​`${this.globals.URLapidatos}/Pedido`​​);

  }

  actualizaPedido(idPedido: number) : ​Observable​<​any​>{
    ​return​​ this​.​http​.​get​(​`${this.globals.URLapidatos}/Pedido/actualizaestado/${idPedido}`​​);

  }


  guardarPedido(pedido:Pedido ) {
    return this.http.post(`${this.globals.URLapidatos}/Pedido`, pedido);
  }



/*
  actualizarPedido(id: string|number, pedido: Pedido): Observable<Pedido> {
    return this.http.put(`${this.globals.URLapidatos}/pedido/${id}`, pedido);
  } */




  /* obtengounDetalle(id: number) : ​Observable​<​any​>{
    ​return​​ this​.​http​.​get​(​`http://localhost:3000/api/detallePedido/${id}`​);

  } */


}
