import express, { Application } from 'express';
import morgan from 'morgan';
import cors from 'cors';

/* IMPORTANTE importar las rutas aca en el index  */
import indexRoutes from './routes/indexRoutes';
import clienteRoutes from './routes/clienteRoutes';
import pedidoRoutes from './routes/pedidoRoutes'
import servicioRoutes from './routes/servicioRoutes';
import detallepedidoRoutes from './routes/detallePedidoRoutes';

class Server {

    public app: Application;
    
    
    routes(): void {
        /* Ruta Inicial */
        this.app.use('/', indexRoutes);
        /* Ruta Relativa es decir para hacer funcionar tiene que tener el prefijo /api/games para las rutas declaradas en gameroutes */
        this.app.use('/api/cliente', clienteRoutes);
        this.app.use('/api/pedido', pedidoRoutes);
        this.app.use('/api/servicio', servicioRoutes);
        this.app.use('/api/detallePedido', detallepedidoRoutes);

        
        

    }

    constructor() {
        this.app = express();
        this.config();
        this.routes();
    }

    config(): void {
        this.app.set('port', process.env.PORT || 3000);

        this.app.use(morgan('dev'));
        this.app.use(cors());
        this.app.use(express.json());
        this.app.use(express.urlencoded({extended: false}));
    }

    hoy = new Date();
    
    start() {
        this.app.listen(this.app.get('port'), () => {
            console.log('---------'+ this.hoy.getDay()+'/'+ this.hoy.getMonth() +'/'+ this.hoy.getFullYear() +'  '+this.hoy.getHours() + ':' + this.hoy.getMinutes());
            console.log('Servidor de Node Conectado en el puerto:' , this.app.get('port'));
        });
    }

}

const server = new Server();
server.start();