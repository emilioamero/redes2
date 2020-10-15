import { Request, Response } from 'express';
import pool from '../basededatos';

class PedidoController {
    

    public async list(req: Request, res: Response): Promise<void> {
        const pedido = await pool.query('SELECT * FROM VPedido');
       
      
        res.json(pedido);
        
  

    }

    
    public async getOne(req: Request, res: Response): Promise<any> {
        const { id } = req.params;
        const games = await pool.query('SELECT * FROM pedido WHERE idpedido = ?', [id]);
        console.log(games.length);
        if (games.length > 0) {
            return res.json(games[0]);
        }
        res.status(404).json({ text: "Pedido no existe" });
    }

    public async create(req: Request, res: Response): Promise<void> {
        const result = await pool.query('INSERT INTO pedido set ?', [req.body]);
      /*   res.json({ message: 'Pedido Saved' }); */
        res.json(result);
    }

    public async update(req: Request, res: Response): Promise<void> {
        const { id } = req.params;
        const oldGame = req.body;
        await pool.query('UPDATE pedido set ? WHERE idpedido = ?', [req.body, id]);
        res.json({ message: "The pedido was Updated" });
    }

/*     public async delete(req: Request, res: Response): Promise<void> {
        const { id } = req.params;
        await pool.query('DELETE FROM pedido WHERE idpedido = ?', [id]);
        res.json({ message: "The game was deleted" });
    } */
}

const pedidoController = new PedidoController;
export default pedidoController;