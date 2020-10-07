import express, { Router } from 'express';

import clienteController from '../controllers/clienteController';

class ClienteRoutes {

    router: Router = Router();

    constructor() {
        this.config();
    }

    config() {
        this.router.get('/', clienteController.list);
/*         this.router.get('/:id', gamesController.getOne);
        this.router.post('/', gamesController.create);
        this.router.put('/:id', gamesController.update);
        this.router.delete('/:id', gamesController.delete); */
    }

}

export default new ClienteRoutes().router;

