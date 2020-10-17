import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { PrincipalComponent } from './componentes/principal/principal.component';
import { ClienteComponent } from './componentes/cliente/cliente.component';
import { EditarClienteComponent } from './componentes/editar-cliente/editar-cliente.component';
import { PedidoabmComponent } from './componentes/pedidoabm/pedidoabm.component';
import { PedidoComponent } from './componentes/pedido/pedido.component';
import { PerfilComponent } from './componentes/perfil/perfil.component';
import { AuthGuard } from './servicios/auth.guard';
import { CallbackComponent } from './componentes/callback/callback.component';


const routes: Routes = [
  {path: '', component: PrincipalComponent},
  {path: 'principal', component: PrincipalComponent},
  {path: 'cliente', component: ClienteComponent},
 {path: 'pedido', component: PedidoComponent},
 {path: 'pedido/editar/:idcliente/:nombrecliente/:idPedido/:pendiente', component: PedidoabmComponent},
 {path: 'perfil',component: PerfilComponent, canActivate: [ AuthGuard ] },
 { path: 'callback', component: CallbackComponent },



 /*  {path: 'clientes/editar/:id', component: EditarClienteComponent} */

];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
