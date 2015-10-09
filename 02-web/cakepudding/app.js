var game = {

  wordList: ['pudding','cake','hotdog'],
  MAX_GUESSES: 8,
  secret: [], // array of letters
  puzzle: [],
  guessedLetters: [],

  init: function() {
    game.setSecret();
    game.setPuzzle();
  },

  setSecret: function() {
    game.secret = _.sample(game.wordList).split('');
  },

  setPuzzle: function() {
    game.puzzle = Array(game.secret.length+1).join('_').split('');
  },

  guessesLeft: function() {
    return (game.MAX_GUESSES - game.guessedLetters.length);
  },

  guess: function(letter) {
    game.guessedLetters.push(letter);

    // work out the puzzle display
    // secret = ['c','a','k','e']
    // puzzle = ['_','_','_','_'] => ['_','_','k','_']

    _.each(game.secret, function(secretLetter, index) {
      if (letter === secretLetter) {
        game.puzzle[index] = letter;
      }
    });
  }

}

window.onload = function() {

  game.init();

  window.addEventListener('keyup', function() {
    var guess = String.fromCharCode(event.which);


    game.guess(guess.toLowerCase());

    console.log(game.puzzle);
    document.getElementById('puzzle').innerHTML = game.puzzle.join(' ');
  })

}