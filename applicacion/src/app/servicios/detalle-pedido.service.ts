import { Injectable } from '@angular/core';
import​ { ​HttpClient​ } ​from​​'@angular/common/http'​;
import​ { ​Observable​ } ​from​​'rxjs';
import { DetallePedido } from '../modelos/detallePedido';


@Injectable({
  providedIn: 'root'
})
export class DetallePedidoService {

  API_URI = 'http://localhost:3000/api';

  constructor(private​​http​: ​HttpClient) {}

  obtengoDetallesPedidos(idPedido:number) : ​Observable​<​any​>{
    ​return​​ this​.​http​.​get​(​`${this.API_URI}/detallePedido/${idPedido}`​​);

  }


  guardarDetallepedido(detallePedido:DetallePedido ) {
    return this.http.post(`${this.API_URI}/detallePedido`, detallePedido);
  }




  eliminaDetalle(idDetallepedido: string) {
    return this.http.delete(`${this.API_URI}/detallePedido/${idDetallepedido}`);
  }


  /* obtengounDetalle(id: number) : ​Observable​<​any​>{
    ​return​​ this​.​http​.​get​(​`http://localhost:3000/api/detallePedido/${id}`​);

  } */



}
