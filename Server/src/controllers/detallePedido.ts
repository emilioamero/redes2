import { Request, Response } from 'express';
import pool from '../basededatos';

class DetallePedidoController {
    

    public async list(req: Request, res: Response): Promise<any> {
        const { idPedido } = req.params;
        const detallepedido = await pool.query('SELECT * FROM detallePedido where idPedido = ?', [idPedido]);
       
        if (detallepedido.length > 0) {
            res.json(detallepedido);
        }else{
            res.status(404).json({ text: "No hay detalles pedidos" }); 
        }

        
    }

    
/*     public async getOne(req: Request, res: Response): Promise<any> {
        const { id } = req.params;
        const games = await pool.query('SELECT * FROM pedido WHERE idpedido = ?', [id]);
        console.log(games.length);
        if (games.length > 0) {
            return res.json(games[0]);
        }
        res.status(404).json({ text: "Pedido no existe" });
    }
 */
    public async create(req: Request, res: Response): Promise<void> {
        const result = await pool.query('INSERT INTO detallePedido set ?', [req.body]);
        res.json({ message: 'detalle Pedido Saved' });
    }

/*     public async update(req: Request, res: Response): Promise<void> {
        const { id } = req.params;
        const oldGame = req.body;
        await pool.query('UPDATE pedido set ? WHERE idpedido = ?', [req.body, id]);
        res.json({ message: "The pedido was Updated" });
    } */

     public async delete(req: Request, res: Response): Promise<void> {
        const { idDetallepedido } = req.params;
        await pool.query('DELETE FROM detallePedido WHERE idDetallepedido = ?', [idDetallepedido]);
        res.json({ message: "detalle eliminado" });
    } 
}

const detallePedidoController = new DetallePedidoController;
export default detallePedidoController;