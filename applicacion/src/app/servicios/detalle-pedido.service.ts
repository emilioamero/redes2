import { Injectable } from '@angular/core';
import​ { ​HttpClient​ } ​from​​'@angular/common/http'​;
import​ { ​Observable​ } ​from​​'rxjs';
import { DetallePedido } from '../modelos/detallePedido';
import {Globals} from 'src/app/globales'


@Injectable({
  providedIn: 'root'
})
export class DetallePedidoService {


  constructor(private​​http​: ​HttpClient,private globals:Globals) {}

  obtengoDetallesPedidos(idPedido:number) : ​Observable​<​any​>{
    ​return​​ this​.​http​.​get​(​`${this.globals.URLapidatos}/detallePedido/${idPedido}`​​);

  }

  obtengoTotalPedidos(idPedido:number) : ​Observable​<​any​>{
    ​return​​ this​.​http​.​get​(​`${this.globals.URLapidatos}/detallePedido/totaldetalle/${idPedido}`​​);

  }



  guardarDetallepedido(detallePedido:DetallePedido ) {
    return this.http.post(`${this.globals.URLapidatos}/detallePedido`, detallePedido);
  }




  eliminaDetalle(idDetallepedido: number) {
    return this.http.delete(`${this.globals.URLapidatos}/detallePedido/${idDetallepedido}`);
  }


  /* obtengounDetalle(id: number) : ​Observable​<​any​>{
    ​return​​ this​.​http​.​get​(​`http://localhost:3000/api/detallePedido/${id}`​);

  } */



}
