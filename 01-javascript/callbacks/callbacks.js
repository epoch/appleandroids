console.log('call me back');


// setTimeout(callback function, milliseconds);

var someTask = function() {
  console.log('eat cake');
}

var doSomething = function(task) {
  console.log('hey');
  console.log('task', task);
  task(); // callback function
}

// setTimeout(someTask, 1000);

// setInterval(someTask, 1000);



