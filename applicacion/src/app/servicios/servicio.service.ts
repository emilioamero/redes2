
import { Injectable } from '@angular/core';
import​ { ​HttpClient​ } ​from​​'@angular/common/http'​;
import​ { ​Observable​ } ​from​​'rxjs';
import {Globals} from 'src/app/globales'


@Injectable({
  providedIn: 'root'
})
export class ServicioService {

  constructor(private ​http​:HttpClient,private globals:Globals) { }

  obtengoServicios() : ​Observable​<​any​>{
    ​return​​ this​.​http​.​get​(​`${this.globals.URLapidatos}/servicio`​​);

  }

}
