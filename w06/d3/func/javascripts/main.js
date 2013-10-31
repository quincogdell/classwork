console.log("Hello World");

// function sayName(name) {
//   return name;
// }

function knockKnock() {

  function whoDat() {
    return "who's there?"
  }

  return whoDat;
}

var joke = knockKnock()
// for demonstration purposes
joke = function whoDat() {
  return "Who's there"
}

joke();



function fortuneCookie() {
  return "nothing ventured nothing gained";
}

var cookie = function() {
  return "nothing ventured, nothing gained";
}

function fortuneCookie() {
  return function() {
    return "nothing ventured, nothing gained";
  }
}

  // var name = "larry";
  // function sayName() {
  //   var name = "susan";
  //   function sayHi() {
  //     return name;
  //   }
  //   return sayHi();
  // }



function makeSandwich() {
  var ingredient = "peanut butter";
  return function(filling){
    return "mmm a " + ingredient + " and " + filling + " sandwich";
  }
}




