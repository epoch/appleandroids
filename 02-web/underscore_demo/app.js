console.log('ready for underscore');

var list = ['bart','lisa','homer','marge','maggie','ned'];


var person = {
  name: 'homer',
  age: 46,
  numberOfFingers: 4
}

_.sample(list, 3)

_.each(person, function(key, val) {
  console.log(key, val);
});

_.keys(person)

_.each(list, function(elem, index) { 
  console.log('the elem is ' + elem + ' index is ' + index);
})

_.each(document.getElementsByTagName('button'), function(elem, index) {
    elem.addEventListener('click', function() {
      console.log(event.target.innerHTML);
    });
});