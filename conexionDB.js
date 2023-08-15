import { createPool } from "mysql2/promise";

const pool = createpool({
    host: "localhost",
    port: 3306,
    user: "root",
    password: "samiragarcia95",
    database: "autos_db"
});



await agregarAutos("for fiesta", "negro", 2008);



async function agregarAutos(marca, color, año) {
    let resultadoCrear = await pool.query(`INSERT INTO primer_tabla (marca,color,año)
    VALUES (?, ?, ?);`, [marca, color, año]);



    console.log(resultadoCrear);
}


await obtenerAutos();





async function obtenerAutos() {
    let resultadoObtenerInfo = await pool.query("SELECT * FROM primer_tabla");
    console.log(resultadoObtenerInfo[0]);
}



await actualizarAutos(2, true);




async function actualizarAutos(idregistro, color) {
    let resultadoActualizar = await pool.query(`
    UPDATE primer_tabla SET color = “blanco” WHERE id_registro = ?;`, [color, idregistro]);
    console.log(resultadoActualizar);
}



pool.end();
