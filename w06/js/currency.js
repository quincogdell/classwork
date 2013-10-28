// var usToUkExchangeRate = 0.62;
// var usToJapan = 97.71;
// var usToEu = 0.73;
// "£"

var exchangeRate = {
  uk: {rate: 0.62, symbol: "£"},
  japan: {rate: 97.71, symbol: "￥"},
  eu: {rate: 0.73, symbol: "€"}
}

var exchangeDollars = function (location, amount) {
  return  exchangeRate[location].symbol + (amount / (1+exchangeRate[location].rate)).toFixed(2);
}
// var dollarsToPounds = function (amount) {
//   return  + (amount / (1+usToUkExchangeRate)).toFixed(2);
// }


var location_input = prompt("What's your location")
var amount_input = parseInt(prompt("How many dollars"), 10);
//debugger
alert("$" + amount_input + " is equal to " + exchangeDollars(location_input, amount_input));

