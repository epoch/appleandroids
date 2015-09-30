console.log('objects ex');

// ex1: recipe

var recipe = {
  title: 'suprise',
  servings: 1,
  ingredients: ['cheese','fairy floss', 'cake','pudding'],
  print: function() {
    console.log(recipe.title);
    console.log('serves', recipe.servings);
    console.log('ingredients', recipe.ingredients.join(', '));

    for (var i = 0; i < recipe.ingredients.length; i++) {
      console.log(recipe.ingredients[i]);
    }
  }
}

recipe.print();


// for in loop

for (key in recipe) {
  console.log(key, recipe[key]);
}

// ex2: reading list
var book1 = { 
  title: 'coolbeans',
  author: 'beanie',
  alreadyRead: true 
}

var books = [book1, { 
  title: 'how to make a sandwich',
  author: 'andre',
  alreadyRead: false 
}];

for (var i = 0; i < books.length; i++) {

  var book = books[i];
  var desc = book.title + ' by ' + book.author;

  if (book.alreadyRead) {
    console.log('you already read', desc);
  } else {
    console.log('you may want to read', desc);
  }
}

// ex3: movies

var sharknado = {
  title: 'sharknado',
  duration: 100,
  stars: ['sharks', 'the guy from 90210']
}

function movieInfo(movie) {
  var info = '';

  info += movie.title;
  info += ' lasts for ' + movie.duration + ' minutes.';
  info += ' stars: ' + movie.stars.join(', ');


  debugger

  console.log(info);
}


movieInfo(sharknado);