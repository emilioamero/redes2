import { Request, Response } from 'express';

class IndexController {

    /* Mensaje pagina Principal servidor */
    public index(req: Request, res: Response) {
        res.json({text: 'API Rest Funcionando - direcionar IP:3000/api/DIRECCION'});
      
    }

}

export const indexController = new IndexController;