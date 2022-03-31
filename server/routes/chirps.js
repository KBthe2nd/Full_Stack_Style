import db from './db';

const express = require("express");
const router = express.Router();
// const chirpsStore = require("../chirpstore.js");
// no more chirpstore! install mysql from npm and configure the routes to use that instead of chirpstore.

// REST API
router.get("/:id", (req, res) => {
   // const id = req.params.id;
   let sql = `SELECT * FROM chirpr WHERE id = ${id}`
    db.query(sql, (err, res => {
        if(err) throw err;
        res.send(res);

    }));
});

// Create
router.post("/", (req, res) => {
    const body = req.body;
    let sql = "CREATE DATABASE chirprapp";
    db.query(sql, (err,result) => {
        if(err) throw err;
        console.log(result);
        res.send('database created...');
    })

    // chirpsStore.CreateChirp(body);
    res.sendStatus(200);
});

// Delete
router.delete("/:id", (req, res) => {
    const id = req.params.id;
    let sql = `DELETE FROM chirps WHERE id = ${id} `
    db.query(sql, (err,result) => {
        if(err) throw err;
        console.log(result);
        res.send('Chirp deleted...');
    })
    // chirpsStore.DeleteChirp(id);
    res.sendStatus(200);
});

// Update
router.put("/:id", (req, res) => {
    const id = req.params.id;
    const body = req.body;
    let sql = `UPDATE users SET location = ${location} `;
    db.query(sql, (err,result) => {
        if(err) throw err;
        console.log(result);
        res.send('location updated...');
    })

    // chirpsStore.UpdateChirp(id, body);
    res.sendStatus(200);
});

module.exports = router;