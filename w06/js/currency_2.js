var worldBank = {
  exchangeRates: {
    uk: 0.62,
    japan: 97.71,
    eu: 0.73
  },
  convert: function() {
    debugger
    alert(this.exchangeRates[this.location] * this.amount)
  },
  getLocation: function() {
    this.location = prompt("convert currency to what location?");
    debugger
  },
  getAmount: function() {
    this.amount = parseInt(prompt("What amount would you like to convert?"), 10);
  },
  run_convert: function() {
    this.getLocation(),
    this.getAmount(),
    this.convert()
  }
}

//worldBank.run_convert();
