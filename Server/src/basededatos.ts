/* Conexion base de datos */

import mysql from 'promise-mysql';

import keys from './credenciales';

const pool = mysql.createPool(keys.database);

pool.getConnection()
    .then(connection => {
        pool.releaseConnection(connection);
        console.log('Base de Datos Conectada');
    });

export default pool;
