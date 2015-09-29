console.log('its working');

// while (true) {
//   // stuck here till eternity
// }

var input = 0;
do {
  console.log(input);
  input = input + 1;
} while (input < 10);

var languages = ['ruby','js','c#','closure'];

for (var i=0; i<languages.length; i++) {
  console.log(languages[i])
}

languages.forEach(function(elem) {
  console.log(elem);
});

// only even numbers
for (var num = 1; num <= 100; num++) {
  if (num % 2 === 0) {
    console.log(num);
  }
}

// count from 1 to 101

// when its divisible by 3 console log fizz
// when its divisible by 5 console log buzz
// when both 3 and 5 console log fizzbuzz
console.log('my fizzbuzz');

var counter = 1;

do {

  if ((counter % 3 === 0) && (counter % 5 === 0)) {
    console.log(counter, 'fizzbuzz');
  } else if (counter % 3 === 0) {
    console.log(counter, 'fizz');
  } else if (counter % 5 === 0) {
    console.log(counter, 'buzz');
  } else {
    console.log(counter);
  }

  counter = counter + 1; // counter++

} while (counter <= 101);