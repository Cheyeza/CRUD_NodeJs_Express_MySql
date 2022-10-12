const express = require('express');
const app = express();
var http = require('http');
const path = require('path');
var bodyParser = require('body-parser');
var jsonParser = bodyParser.json();
var urlencodedParser = bodyParser.urlencoded({ extended: false });

// View Engine Setup
app.set("views", path.join(__dirname))
app.set("view engine", "ejs")
const mariadb = require('../connection');
const { application } = require('express');
const port = process.env.PORT || 3610



const handleErr = (err, req, res, next) => {
    res.status(400).send({ error: err.message })
}

//get method

app.get('/', function(req, res){ 
  var weekday;
var  product;
var names;

    //res.send('Hello'); 
    console.log(req.body)
  mariadb.query("SELECT * FROM list", function (result, fields) {
    console.table(fields);
    res.send(JSON.stringify(result));
  });
    
},handleErr);



//post method

app.post('/post',jsonParser,  function(req, res){
  

const body=({
  weekday: req.body.weekday,
  product:  req.body.product,
  names: req.body.names,
  body: req.body.body
});


console.log(req.body)


  
  mariadb.query(`INSERT INTO list (weekday,product,names) VALUES ('${req.body.weekday}','${req.body.product}','${req.body.names}') ` ,(result)=>{
    console.log("posted");
    res.send(JSON.stringify(result));
    //res.send(req.body);
    
  });
},handleErr);



app.delete('/:id',jsonParser,  function(req, res){

  const body=({
    id: req.body.id
  });
  
  
  console.log(req.body)

  mariadb.query('DELETE FROM list WHERE id = ? ',[req.body.id],(result)=>{
    console.log("Deleted");
    res.send(JSON.stringify(result));
    //res.send(req.body);
    
  });

});
  
app.put('/:id',jsonParser, function(req, res){ 
  const body=({
    id: req.body.id,
    weekday: req.body.weekday,
    product: req.body.product,
    name: req.body.names
  });

    console.log(req.body)

    mariadb.query('UPDATE list SET weekday = ?,product = ?,names = ? WHERE id = ?',[req.body.weekday,req.body.product,req.body.names,req.body.id],(result)=>{
      console.log("UPDATED");
      res.send(JSON.stringify(result));
      //res.send(req.body);
      
    });


});


app.listen(port, () => {
    console.log('Server is up on port ' + port);
})

module.exports = app;