import { Component, OnInit } from '@angular/core';
import { AuthService } from '../../servicios/auth.service';

@Component({
  selector: 'app-menu',
  templateUrl: './menu.component.html',
  styleUrls: ['./menu.component.css']
})
export class MenuComponent implements OnInit {

  constructor(public auth:AuthService) { }

  ocultarMenu:boolean=true;
  ngOnInit() {
    if(this.auth.loggedIn){/* si estoy loguado muestr0 menu */
      this.ocultarMenu=false;
    }else{
      this.ocultarMenu=true;
    }
  }

}
