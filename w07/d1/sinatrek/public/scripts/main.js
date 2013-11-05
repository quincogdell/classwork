var enterprise = document.getElementById("enterprise");
var crewCount;
enterprise.addEventListener('mouseover', fnMouseOver);
enterprise.addEventListener('mouseout', fnMouseOut);
enterprise.addEventListener('click', fnClickEnterprise);

function fnMouseOver() {
  var results = xhrRequest();
  crewCount = document.createElement('p');
  crewCount.className = 'crew-count';
  crewCount.textContent = results.length + " crew members."
  enterprise.appendChild(crewCount);
}

function fnMouseOut() {
  //console.log('out')
  enterprise.innerHTML = "";
}

function fnClickEnterprise() {
  var results = xhrRequest();
  var crewList = document.createElement('ol');
  for (var i = 0; i < results.length; i++) {
    var crewMemberName = results[i].name;
    var crewMemberId = results[i].id;
    //debugger
    var crewMember = document.createElement('li');
    crewMember.textContent = crewMemberName;
    crewMember.className = crewMemberName.toLowerCase();
    crewMember.id = crewMemberId;
    crewMember.addEventListener('click', function() {
      var result = xhrRequestSingle(this.id);
      alert(result.name + " has the rank of " + result.rank + ".");
    } )
    crewList.appendChild(crewMember);
  }
  document.body.appendChild(crewList);
}

function xhrRequest() {
  var xhr = new XMLHttpRequest();
  var url = "http://localhost:4567/crew";
  var method = "GET";
  xhr.open(method, url, false);
  xhr.send();
  var results = JSON.parse(xhr.response);
  return results;
}

function xhrRequestSingle(id) {
  var xhr = new XMLHttpRequest();
  var url = "http://localhost:4567/crew/" + id;
  var method = "GET";
  xhr.open(method, url, false);
  xhr.send();
  var results = JSON.parse(xhr.response);
  return results;
}
