function date(){
  var d = new Date();
  d.setFullYear(2018);
document.getElementById('date').innerHTML =  d.getMonth() +"/"+ d.getDate()+ "/"+d.getFullYear();

}
function time(){
  var t = new Date();
  document.getElementById('time').innerHTML = t.getHours() + ":" + t.getMinutes();
}



function load(){


  time();
  date();
}
