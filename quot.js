const Quote = require('inspirational-quotes');
const { v4: uuidv4 } = require('uuid');
const connection = require('./connection');


let quote = Quote.getQuote();
let id = uuidv4();



let q = "INSERT INTO quotData ( id ,text, author) VALUES (?,?,?)";

try {
  connection.query(q, [ id ,quote.text , quote.author], (err, result) => {
    if (err) throw err;
    console.log(result);
  });
} catch (err) {
  console.log(err);
}
connection.end();