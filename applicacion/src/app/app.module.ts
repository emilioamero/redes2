import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import​ { ​HttpClientModule​ } ​from​​'@angular/common/http'​;
import { FormsModule } from "@angular/forms";


import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { MenuComponent } from './componentes/menu/menu.component';
import { PrincipalComponent } from './componentes/principal/principal.component';
import { ClienteComponent } from './componentes/cliente/cliente.component';
import { EditarClienteComponent } from './componentes/editar-cliente/editar-cliente.component';
import { FooterComponent } from './componentes/footer/footer.component';

@NgModule({
  declarations: [
    AppComponent,
    MenuComponent,
    PrincipalComponent,
    ClienteComponent,
    EditarClienteComponent,
    FooterComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    ​HttpClientModule,
    FormsModule​
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
