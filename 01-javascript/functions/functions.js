console.log('its working');

// scope

var money = 10;

function dinner() {

  var moreMoney = 1000;

  console.log(moreMoney);
  console.log('buy pasta');
  console.log('buy sause');
  console.log('get someone else to cook it');  

  return 'paster is ready';
}

function greeting(yourName) {
  var secret = 'more secret'; // local variable
  console.log('hello there ' + yourName);
}

var name = 'dt';


function getFullname(firstname, lastname) {
  var fullname = 'your fullname is ' + firstname + ' ' + lastname;

  return fullname;
}

