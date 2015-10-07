var accounts = {
  savings: {
    balance: 0,
    deposit: function(amount) {
      this.balance += amount;
    },
    withdraw: function(amount) {
      if (amount <= this.balance) {
        this.balance -= amount;
      } else {
        return false;
      }
    }
  },
  check: {}
}

/********************/

// elemFind('#container') search for element with id container
// elemFind('div'); search for div elements
// elemFind('.content'); search for elements with class content

var elemFind = function(elem) {
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
}

var balanceDiv = elemFind('.balance')[0];
var depositBtn = elemFind('#deposit-btn')[0];
var withdrawBtn = elemFind('button')[1];
var inputBox = elemFind('input')[0];

var renderBalance = function() {
  balanceDiv.innerHTML = '$' + accounts.savings.balance;
}

depositBtn.addEventListener('click', function() {
  var amount = parseInt(inputBox.value, 10);
  accounts.savings.deposit(amount);
  renderBalance();
});

withdrawBtn.addEventListener('click', function() {
  var amount = parseInt(inputBox.value, 10);  
  if (!accounts.savings.withdraw(amount)) {
    var newDiv = document.createElement('div');
    var newContent = document.createTextNode('back to work');
    newDiv.appendChild(newContent);
    document.getElementsByTagName('span')[0].appendChild(newDiv);
  }

  renderBalance();
});

renderBalance();






