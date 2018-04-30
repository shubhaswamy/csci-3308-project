var express = require('express');
var bodyParser = require("body-parser");
var app = express();

//app.use(express.static(path.join(home/user/Desktop/proj/,	'/public')));
/** bodyParser.urlencoded(options)
 * Parses the text as URL encoded data (which is how browsers tend to send form data from regular forms set to POST)
 * and exposes the resulting object (containing the keys and values) on req.body
 */
app.use(bodyParser.json());

app.use(bodyParser.urlencoded({
    extended: true
}));

//app.get("/", function (req,res) {
    //console.log(req.body.user.name)
//    console.log("bumble")
//    res.send("server : i am working")
//});

app.use(express.static(__dirname + "/public"));

//app.post('/sel', function(req, res) {
//    console.log(req.body.user.name);
  //res.send('You sent the name "' + req.body.user.name + '".');
//});

app.post('/sel', function (req, res) {
    //console.log("hi")
    // If it's not showing up, just use req.body to see what is actually being passed.
    //res.send('You sent the name "' + req.body.selectpicker + '".');
    console.log(req.body.nameText);
    console.log(req.body.osDrop);
    console.log(req.body.linuxDrop);
    console.log(req.body.windowsDrop);
    console.log(req.body.date);
    console.log(req.body.comment);
});

app.listen(3000,function(){
    console.log('po')
});
/**bodyParser.json(options)
 * Parses the text as JSON and exposes the resulting object on req.body.
 */
//app.use(bodyParser.json());

//app.get('/', function(req, res){
//   console.log(req.body.user.name)
//});


//app.post('/', function (req, res) {
//    res.send('You sent the name "' + req.body.name + '".');
//    console.log(req.body.user.name)
//});
