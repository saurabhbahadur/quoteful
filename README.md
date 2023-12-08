<h1 align="center" > QuoteFul </h1> <p align="center"> (Fun project to learn CRUD operation)</p>

### QuoteFul contains many inspirational quotes and in this project you can create you own quot or delete or edit others quotes. The main purpose of this project to understand basic understanding of CRUD operation with database. In ths project i used Express JS as backend and My SQL as a database. You can easily check out the function of QuoteFul by clicking demo 🤗


## [Demo](https://www.linkedin.com/posts/saurabhbahadur_mernstack-mernstackdevelopment-nodejs-activity-7138888918044762113-D8Yk?utm_source=share&utm_medium=member_desktop)


# Getting Started

### Run this command in terminal :
```ruby
npm i express
```
---
### Code Start :
```js
const express = require("express"); // require express 
const app = express();
// Creating server connection 
let port = 3000;
app.listen(port);
```

### You can easily install all dependencies from this command
```js
npm i
```

### Creating Connection with Database :
```js
const mysql = require('mysql2');

const connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    database: 'quot',
    password: '1234'
});
```

#### Create database of `quot` and import data given in database file

   ### Home Page:
```js
// setting home page using ejs templates
app.get("/", (req, res) => {
  res.render("index.ejs");
});
```
### Enter this on your browser url 
```
http://localhost:3000/
```

### New quotes CREATE operation :
```js
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
```

### All Quotes ( READ Operation ) :
```js
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
```

### Edit Quotes ( UPDATE Operation ) :
```js
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

```
### Delete any Quot ( DELETE Operation ) :
```js
app.delete("/allQuotes/:id", (req, res) => {
  let { id } = req.params;
  let q = `DELETE from  quotData WHERE id = '${id}'  `;
  connection.query(q, (err, result) => {
    if (err) throw err;
    res.redirect("/allQuotes");
  });
});
```

### Requirement
```js
const express = require("express");
const app = express();
const mysql = require('mysql2');
const path = require("path");
const methodOverride = require("method-override");
const connection = require('./connection');
const { v4: uuidv4 } = require('uuid');
```

#### Some important line of code
```js
app.use(express.urlencoded({ extended: true })); // It is a middleware used to parse incoming requests with URL-encoded payloads.
app.use(methodOverride('_method')); // middleware in Express.js allows you to use HTTP verbs such as PUT or DELETE in places where the client doesn't support it
app.use(express.static("public")); // (Static files server middleware) setting directory for css and js files 
app.set("view engine", "ejs");  // setting view engine to ejs for ejs templates
app.set("views", path.join(__dirname, "/views")); // application to specify the directory where the application's views (templates) are located
```
***
### From this Repository i can easily revise my crud operation if i needed or anyone can easily understand.

# Feel Free to connect
+ ### [LinkedIn](https://www.linkedin.com/in/saurabhbahadur) 
+ ### [Mail](mailto:singhsaurabhbahadur@gmail.com)
+ ### [Instagram](https://www.instagram.com/saurabhbahadur_)
+ ### [Discord](https://discord.gg/aQR27Bg7de)

# License

`RESTful-API` is licensed under **`MIT license`**. View [license](https://github.com/saurabhbahadur/quoteful/blob/main/LICENSE).<br>
Copyright (c) [**Saurabh Bahadur**](https://github.com/saurabhbahadur).
