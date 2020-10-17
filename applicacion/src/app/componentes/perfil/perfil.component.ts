import { Component, OnInit } from '@angular/core';
import { AuthService } from '../../servicios/auth.service';


@Component({
  selector: 'app-perfil',
  templateUrl: './perfil.component.html',
  styleUrls: ['./perfil.component.css']
})
export class PerfilComponent implements OnInit {
  credeciales:any=[];
  constructor( public auth: AuthService ) { }

  ngOnInit() {

    this.auth.userProfile$.subscribe( perfil => {

      this.credeciales=perfil;

    });
  }

}
