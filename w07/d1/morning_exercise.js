
// Create a function called $ that takes one parameter called query

// This function will retrieve DOM nodes for us.

// If you pass a string beginning with . search the DOM by class
// $('.cadet') should return all elements with the class .cadet

// If you pass a string beginning with # search the DOM by id.
// $('#enterprise') should return an element with an id of enterprise

// Otherwise search the DOM by tag name
// $('p') should return all p tags

function $(query) {
  var firstChar = query[0];
  var searchString = query.slice(1);
  switch(firstChar) {
    case ".":
      return document.getElementsByClassName(searchString);
      break;
    case "#":
      return document.getElementById(searchString);
      break;
    default:
      // have to search document by query rather than searchString
      return document.getElementsByTagName(query);
  }
}

function serialize(obj) {
  var serialized, k, v, pair;
  serialized = [];
  // loop through properties on the object
  for (property in obj){
    //this skips properties on the prototype
    if (obj.hasOwnProperty(property)){
    k = encodeURIComponent(property);
    v = encodeURIComponent(obj[property]);
    pair = k + "=" + v;
    serialized.push(pair);
   }
  }
  return serialized.join("&");
}

var theLoneliestMonk = {name: 'Thelonius Monk', occupation: 'composer'};
var test = serialize(theLoneliestMonk);
console.log(test);
//"name=Thelonius%20Monk&occupation=composer"



