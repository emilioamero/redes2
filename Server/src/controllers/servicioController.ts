import { Request, Response } from 'express';
import pool from '../basededatos';

class ServicioController {
    

    public async list(req: Request, res: Response): Promise<void> {
        const servicio = await pool.query('SELECT * FROM servicio');
       
      
        res.json(servicio);
        
     

    }

}

const servicioController = new ServicioController;
export default servicioController;