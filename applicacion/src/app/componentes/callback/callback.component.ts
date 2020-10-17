import { Component, OnInit } from '@angular/core';
import { AuthService } from '../../servicios/auth.service';

@Component({
  selector: 'app-callback',
  templateUrl: './callback.component.html',
  styleUrls: ['./callback.component.css']
})
export class CallbackComponent implements OnInit {

  constructor( private auth: AuthService) { }

/*   Esta pagina es la que devuelve despues del login se define en la pagina de auth0

esta pagina EJECUTA UNA FUNCION  vuelve a la pgina definida en Allowed Web Origins */



  ngOnInit() {
    this.auth.handleAuthCallback();
  }

}
