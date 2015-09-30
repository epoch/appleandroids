console.log('objects here we go')

var myObject = {}; // empty object

var Person = {
  name: 'Jamie',
  surname: 'Dawson',
  "current age": 15
};

var classRoom = {
  name: 'appleandroids',
  campus: 'melbourne',
  sayHello: function() {
    console.log('hello class'); 
  }
}

// var accelerate = function() {

// }

// function accelerate() {

// }

var car = {
  speed: 0,
  accelerate: function() {
    car.speed = car.speed + 10;
    // car.speed += 10;
  }
}

