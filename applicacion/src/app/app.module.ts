import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import​ { ​HttpClientModule​ } ​from​​'@angular/common/http'​;
import { FormsModule } from "@angular/forms";
import { Globals } from './globales';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { MenuComponent } from './componentes/menu/menu.component';
import { PrincipalComponent } from './componentes/principal/principal.component';
import { ClienteComponent } from './componentes/cliente/cliente.component';
import { EditarClienteComponent } from './componentes/editar-cliente/editar-cliente.component';
import { FooterComponent } from './componentes/footer/footer.component';
import { PedidoComponent } from './componentes/pedido/pedido.component';
import { PedidoabmComponent } from './componentes/pedidoabm/pedidoabm.component';
/* Formatear */
import { DatePipe } from '@angular/common';
import { CallbackComponent } from './componentes/callback/callback.component';
import { PerfilComponent } from './componentes/perfil/perfil.component';

@NgModule({
  declarations: [
    AppComponent,
    MenuComponent,
    PrincipalComponent,
    ClienteComponent,
    EditarClienteComponent,
    FooterComponent,
    PedidoComponent,
    PedidoabmComponent,
    CallbackComponent,
    PerfilComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    ​HttpClientModule,
    FormsModule
    ​
  ],
  providers: [Globals,DatePipe],
  bootstrap: [AppComponent]
})
export class AppModule { }
