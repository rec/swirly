autowatch = 1;


function init() {
  var x = "12";
  if (x.substr) 
    post("yes\n");
  else
    post("no\n");
};
