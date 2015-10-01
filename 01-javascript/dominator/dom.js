console.log('dominator is ready');


var dominator = document.getElementById('dominator');

console.log(dominator.innerHTML);

var inputBoxes = document.getElementsByTagName('input');

var firstInputBox = inputBoxes[0];

console.log(firstInputBox.value);

var winButton = document.getElementsByTagName('button')[0];

// winButton.addEventListener(event, function)

var doSomething = function() {
  console.log('event', event);
  // console.log('im doing something');
  console.log(firstInputBox.value);
};


winButton.addEventListener('click', doSomething);
// winButton.addEventListener('click', doSomethingElse);