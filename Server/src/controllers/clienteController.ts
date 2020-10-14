import { Request, Response } from 'express';
import pool from '../basededatos';

class ClienteController {
    

    public async listBusqueda(req: Request, res: Response): Promise<void> {
        const { nombrecliente } = req.params;
        const clientes = await pool.query('SELECT * FROM cliente where nombrecliente like ? or apellidocliente like ?', ['%' + nombrecliente + '%','%' + nombrecliente + '%'] );
        res.json(clientes);
              
    }

    public async list(req: Request, res: Response): Promise<void> {
        const clientes = await pool.query('SELECT * FROM cliente');
         res.json(clientes);
              
    }

    /* 
    public async getOne(req: Request, res: Response): Promise<any> {
        const { id } = req.params;
        const games = await pool.query('SELECT * FROM games WHERE id = ?', [id]);
        console.log(games.length);
        if (games.length > 0) {
            return res.json(games[0]);
        }
        res.status(404).json({ text: "The game doesn't exits" });
    }

    public async create(req: Request, res: Response): Promise<void> {
        const result = await pool.query('INSERT INTO games set ?', [req.body]);
        res.json({ message: 'Game Saved' });
    }

    public async update(req: Request, res: Response): Promise<void> {
        const { id } = req.params;
        const oldGame = req.body;
        await pool.query('UPDATE games set ? WHERE id = ?', [req.body, id]);
        res.json({ message: "The game was Updated" });
    }

    public async delete(req: Request, res: Response): Promise<void> {
        const { id } = req.params;
        await pool.query('DELETE FROM games WHERE id = ?', [id]);
        res.json({ message: "The game was deleted" });
    } */
}

const clienteController = new ClienteController;
export default clienteController;