import express, { Router } from 'express';

import servicioController from '../controllers/servicioController';

class ServicioRoutes {

    router: Router = Router();

    constructor() {
        this.config();
    }

    config() {

        this.router.get('/', servicioController.list);

    }

}

export default new ServicioRoutes().router;

