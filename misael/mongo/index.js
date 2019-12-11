const mongo = require("mongodb").MongoClient;

const Libro = require("./Libro");

const url = "mongodb://localhost:27017/tarea";

// Database Name
const dbName = "tarea";

// Create a new MongoClient
const client = new mongo(url, { useUnifiedTopology: true });

let libro = new Libro("pedro", "la aventura de pedro", "ben", "pollito");

// Use connect method to connect to the Server
client.connect(err => {
  console.log("Connected successfully to server");

  const db = client.db(dbName);

  db.collection(dbName).insertOne(libro);

  client.close();
});

//console.log(libro.toJSON());
