import * as mysql from 'mysql';

import Chirpr from './chirpr';

export const Connection = mysql.createConnection({
    host: 'localhost',
    port: 3000,
    user: 'chirprapp',
    password: 'blue',
    database: 'chirpr'
});

export const Query = (query,values) => {
    return new Promise((resolve, reject) => {
        Connection.query(query, values, (err,res) => {
            if(err) return reject (err);
            resolve(res);
        });
    });
};



export default {
    Chirpr

}