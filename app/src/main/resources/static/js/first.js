/*let a = prompt("Первое число?", 1);
let b = prompt("Второе число?", 2);

alert(+ a + + b); // 12*/
/*$("#timeBag").mask("99:99");
*/

window.onload = function () {  
var now = new Date();
let day = now.getDate();
let month = now.getMonth()+1;
let year = now.getFullYear();
let hours = now.getHours();
let mins = now.getMinutes();
console.log(now);
console.log(day);
console.log(month);
console.log(year);
let datka = year+'-'+month+'-'+day;
let vremya = hours+':'+mins;
document.getElementById('dataId').value = datka;
document.getElementById('timeBag1').value = vremya;
}   
/*window.onload = function () {
  //ищем элемент по селектору
  var a = document.getElementsByTagName('header')[0];
  //вешаем на него события

  a.onmouseover = function(e) {
    a.style.opacity=0.33;  };

    a.onmouseout = function() {
    a.style.opacity=1;
  }
}
*/

function visStep (){
    let val = document.getElementById('step').value;
    document.getElementById('step1').value += '* ';
    document.getElementById('step1').value += val;
    document.getElementById('step1').value += '\n';
    console.log(val);
    document.getElementById('hidestep').style.display = "block";
    document.getElementById('step').value ="";
}




