import { Component, OnInit } from '@angular/core';
import { AuthService } from '../../servicios/auth.service';
import {Globals} from 'src/app/globales'

@Component({
  selector: 'app-principal',
  templateUrl: './principal.component.html',
  styleUrls: ['./principal.component.css']
})
export class PrincipalComponent implements OnInit {

  constructor(public auth:AuthService,
    private globals:Globals) { }

  ngOnInit() {
    /* modificar en Globals */
   if(this.globals.habilitoLoginAlinicio){
      if(!this.auth.loggedIn){
        this.auth.login()
      }
    }
  }

}
