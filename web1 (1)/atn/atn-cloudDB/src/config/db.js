const db = require('pg').Pool
module.exports = new db({
    user: "gqrxyzrethkvib",
    host: "ec2-3-227-149-67.compute-1.amazonaws.com",
    database: "d5mjnea23avvuq",
    password: "18cf89d7029b948c8787072892e64d891c5cdcadc83f05ed7eac208d45032bb7",
    port: "5432",
    ssl: {
        rejectUnauthorized: false,
    }
})
