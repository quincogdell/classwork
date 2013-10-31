// function secret
// 2 parameters
//      password
//      message
// secret is going to return a function that will only let you read the message if you give it the correct password

function secret(message, password) {
  var msg = message;
  var pwd = password;
  return function unlock(password) {
    if (password === pwd){
      alert(message);
    } else {
      alert("wrong password")
    }
  }
}

// secret("Super Secret Message", '123')


function makeTicker() {
  var i = 0;
  return function() {
    return i++;
  }
}
