import express, { Router } from 'express';

import detallePedidoController from '../controllers/detallePedido';

class detallePedidoRoutes {

    router: Router = Router();

    constructor() {
        this.config();
    }

    config() {
        this.router.get('/:idPedido', detallePedidoController.list);
        this.router.get('/totaldetalle/:idPedido', detallePedidoController.calculoTotalPedido);
        this.router.delete('/:idDetallepedido', detallePedidoController.delete);
        this.router.post('/', detallePedidoController.create);
        
 /* this.router.get('/', clienteController.list);
       this.router.get('/:id', gamesController.getOne);
        this.router.put('/:id', gamesController.update);
      */
    }

}

export default new detallePedidoRoutes().router;

