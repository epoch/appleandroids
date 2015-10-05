var checkButton = document.getElementById('check-btn');
var passwordInput = document.getElementsByTagName('input')[0];
// getElementsByClassName
// getElementsByTagName

var checkPassword = function() {
  // event
  console.log('the event', event);

  // early exit - guard condition
  if (passwordInput.value.length === 0) {
    return;
  }

  var resultElement = document.getElementsByClassName('result')[0];
  var resultMessage = 'no';

  if (passwordInput.value.length >= 8) {
    var resultMessage = 'yes';
    resultElement.style.backgroundColor = 'yellow';
  } else {
    resultElement.style.backgroundColor = 'red';    
  }

  resultElement.innerHTML = resultMessage;
}

checkButton.addEventListener('click', checkPassword);
passwordInput.addEventListener('keyup', checkPassword);