var express = require('express');
var port = process.env.PORT || 3000;
var app = express();
var bodyParser = require('body-parser');
var router = express.Router();
var userRouter = express.Router();


app.set('views', './views');
app.set('view engine', 'ejs');

app.use(function(req, res, next) {
  console.log('%s req to %s from %s', req.method, req.path, req.ip);
  next();
});

app.use( bodyParser.json() );
app.use( bodyParser.urlencoded({ extended: false }) );

router.get('/', function(req, res) {
  res.render('index');
});

router.get('/contact', function(req, res) {
  res.render('contact');
})

router.post('/contact', function(req, res) {
  res.send(req.body.test);
})

router.get('/users', function(req, res) {
  var users = [{
    name: 'apple'
  }, {
    name: 'android'
  }]

  res.json(users);
})

app.use('/', router);
app.listen(port);
console.log('server started on ' + port);

