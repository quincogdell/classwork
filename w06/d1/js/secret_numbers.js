var secretNumber = Math.ceil(Math.random() * 10);

var guess = parseInt(prompt("Guess a Number"), 10);
var guesses = [];

while( guess !== secretNumber ){
  guesses.push(guess);
  guess = parseInt(prompt("guess again"), 10);
}

console.log("You guessed right. Here are your incorret guesses");

for (var i = 0; i < guesses.length; i++) {
  //debugger
  console.log(guesses[i]);
}


