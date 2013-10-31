// https://gist.github.com/tealtail/394d40451f91eedb3361

function wordCount(lyric) {
  return lyric.split(" ").length
}

var lyric = "We should have each other to tea";
wordCount(lyric)

function wordFrequency(lyric) {
  var arrayOfWords = lyric.split(" ")

  var frequency = {};

  for (var i = 0; i < arrayOfWords.length; i++) {
    var thisWord = arrayOfWords[i];
    if (frequency[thisWord]) {
      frequency[thisWord]++;
    } else {
      frequency[thisWord] = 1;
    }
  }
  return frequency;
}

var lyric = "o bla di o bla da";
wordFrequency(lyric)


function longestWord(lyric) {
  var arrayOfWords = lyric.split(" ");
  var longWord = '';
  for (var i = 0; i < arrayOfWords.length; i++) {
    if (arrayOfWords[i].length > longWord.length){
      longWord = arrayOfWords[i];
    }
  }
  return longWord
}
var lyric = "heaven knows I'm miserable now";
longestWord(lyric) // "miserable"

function shortestWord(lyric) {
  var arrayOfWords = lyric.split(" ");
  var shortWord = arrayOfWords[0];
  for (var i = 0; i < arrayOfWords.length; i++) {
    if (arrayOfWords[i].length < shortWord.length) {
      shortWord = arrayOfWords[i];
    }
  }
  return shortWord;
}
var lyric = "I am the ghost of Troubled Joe"
shortestWord(lyric) // "I"






