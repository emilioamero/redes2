import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { PrincipalComponent } from './componentes/principal/principal.component';
import { ClienteComponent } from './componentes/cliente/cliente.component';
import { EditarClienteComponent } from './componentes/editar-cliente/editar-cliente.component';
import { PedidoabmComponent } from './componentes/pedidoabm/pedidoabm.component';

const routes: Routes = [
  {path: '', component: PrincipalComponent},
  {path: 'principal', component: PrincipalComponent},
 {path: 'cliente', component: ClienteComponent},
 {path: 'pedido/editar/:idcliente/:nombrecliente', component: PedidoabmComponent}
/*  {path: 'clientes/editar/:id', component: EditarClienteComponent} */

];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
