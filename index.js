const express = require("express");
const app = express();
const mysql = require('mysql2');
const path = require("path");
const methodOverride = require("method-override");
const connection = require('./connection');
const { v4: uuidv4 } = require('uuid');

app.use(express.urlencoded({ extended: true })); // It is a middleware used to parse incoming requests with URL-encoded payloads.
app.use(methodOverride('_method')); // middleware in Express.js allows you to use HTTP verbs such as PUT or DELETE in places where the client doesn't support it
app.use(express.static("public")); // (Static files server middleware) setting directory for css and js files 
app.set("view engine", "ejs");  // setting view engine to ejs for ejs templates
app.set("views", path.join(__dirname, "/views")); // application to specify the directory where the application's views (templates) are located

// home page
app.get("/", (req, res) => {
  res.render("index.ejs");
});

// new quotes CREATE operation
app.get("/new", (req, res) => {
  res.render("new.ejs");
});

app.post("/allQuotes", (req, res) => {
  let id = uuidv4();
  let { text, author } = req.body;
  console.log(req.body);
  let q = "INSERT INTO quotData ( id ,text, author) VALUES (?,?,?)";

  try {
    connection.query(q, [id, text, author], (err, result) => {
      if (err) throw err;
      console.log(result);
    });
  } catch (err) {
    console.log(err);
  }

  res.redirect("allQuotes")
});

// all quotes  READ operation
app.get("/allQuotes", (req, res) => {
  let q = `SELECT * from quotData`;
  try {
    connection.query(q, (err, quotes) => {
      if (err) throw err;
      res.render("allQuotes.ejs", { quotes });
    });
  } catch (err) {
    console.log(err);
    res.send("Error in Database");
  }
});

// edit quotes UPDATE operation

app.get("/allQuotes/:id/edit", (req, res) => {
  let { id } = req.params;
  let q = `SELECT * FROM quotData WHERE id = '${id}'`;

  try {

    connection.query(q, (err, result) => {
      if (err) throw err;
      console.log(result);
      let quot = result[0];
      res.render("edit.ejs", { quot });
    });

  } catch (err) {
    console.log(err);
    res.send("Error in Database");
  }
});

app.patch("/allQuotes/:id", (req,res) => {
  let {id} = req.params;
  let { text: newText} = req.body;
  let q = `SELECT * FROM quotData WHERE id = '${id}'`;
  try {

    connection.query(q, (err, result) => {
      if (err) throw err;
      console.log(result);
      let quot = result[0];
      let q2 = `UPDATE quotData SET text = '${newText}'  WHERE id ='${id}' `;
      connection.query(q2 , (err , result) => {
        if (err) throw err;
         res.redirect("/allQuotes");
       });
    });

  } catch (err) {
    console.log(err);
    res.send("Error in Database");
  }
} );




// del quotes DELETE operation

app.delete("/allQuotes/:id", (req, res) => {
  let { id } = req.params;
  let q = `DELETE from  quotData WHERE id = '${id}'  `;
  connection.query(q, (err, result) => {
    if (err) throw err;
    res.redirect("/allQuotes");
  });
});


// login
app.get("/login", (req, res) => {
  res.render("login.ejs");
});

let port = 3000;
app.listen(port);