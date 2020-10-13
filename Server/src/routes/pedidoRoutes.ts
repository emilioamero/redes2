import express, { Router } from 'express';

import PedidoController from '../controllers/pedidoController';

class PedidoRoutes {

    router: Router = Router();

    constructor() {
        this.config();
    }

    config() {
        this.router.get('/', PedidoController.list);
        this.router.post('/', PedidoController.create);
/*         this.router.get('/:id', gamesController.getOne);
        this.router.post('/', gamesController.create);
        this.router.put('/:id', gamesController.update);
        this.router.delete('/:id', gamesController.delete); */
    }

}

export default new PedidoRoutes().router;
