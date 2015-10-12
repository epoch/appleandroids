var addTodo = function() {
  // get the value
  var value = newTodoInput.value;

  // create new dom element li with the value
  var newListItem = document.createElement('li'); // <li></li>
  var contentNode = document.createTextNode(value); //
  newListItem.appendChild(contentNode); // <li>whatever value</li>

  // attach back to the page inside the ul 
  todosUL.appendChild(newListItem);
}

var todosUL = document.getElementsByClassName('todos')[0];

// tell the parent to listen instead
// this works because of event delegation
todosUL.addEventListener('click', function() {
  if (event.target.tagName === 'LI') {
    // event.target.className = 'done';

  // create new dom element li with the value
  var newListItem = document.createElement('li'); // <li></li>
  var contentNode = document.createTextNode(event.target.innerHTML); //

  newListItem.className = 'done';
  newListItem.appendChild(contentNode); // <li>whatever value</li>

  document.getElementById('completed-list').appendChild(newListItem); 
  todosUL.removeChild(event.target)     
  }
})

// search for button
var addTodoBtn = document.getElementById('add-todo-btn');
// search for input box 
var newTodoInput = document.getElementById('new-todo-input');

// tell button to listen to click
// when clicked call function addTodo
addTodoBtn.addEventListener('click', addTodo);


