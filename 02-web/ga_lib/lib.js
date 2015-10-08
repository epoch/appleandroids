// our own library of useful functions

// 1. query elemFind
// 2. sample(['a','b','c']) => 'b' 
// returns a random element

// for loops can be used for going through
// collections
// 3. each(['a','b','c'], func)

// namespace ga

// var list = ['ruby','javascript','c++'];
// var printElem = function(elem) {
//   console.log(elem);
// }

// // examples of using the functions
// ga.sample(list);
// ga.query('#container');
// ga.each(list, printElem);

var ga = {
  query: function(elem) {
    var elemList = [];
    var firstChar = elem[0];

    switch (firstChar) {
    case '#':
      return [document.getElementById(elem.slice(1))];    
    case '.':
      return document.getElementsByClassName(elem.slice(1));
    default:
      return document.getElementsByTagName(elem);
    }
  },

  sample: function(arr) {

    var index = Math.floor(Math.random() * arr.length)

    return arr[index];
  },

  each: function(arr, func) {
    for(var i=0; i<arr.length; i++) {
      func(arr[i]);
    } 
  }
}

var lunchShortList = ["noodles", "pudding", "milkshake"];

var bob = function() {
  console.log('yo');
}

var luffy = function(elem) {
  console.log(elem);
}


