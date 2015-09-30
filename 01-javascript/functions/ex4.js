
function pluralize(noun, count) {
  if (count === 1) {
    return count + ' ' + noun;
  } else {
    return count + ' ' + noun + 's';
  }
}


console.log( pluralize('dog', 1) );
console.log( pluralize('dog', 0) );
console.log( pluralize('dog', 10) );
console.log( pluralize('dog', -5) );