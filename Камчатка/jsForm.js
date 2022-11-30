Function proverka()
{
var dd=1,outputE="";
var e=/^[\w-\.]+@[\w-]+\.[a-z]{2,4}$/i;
var myMail=document.form1.email.value;
var Etest = e.test(myMail);
if(!Etest)
 {
  outputE="Email введен не правильно";
  dd=0;
  }
  document.getElementById("Emeseg").innerHTML=outputE;
  if (dd==1){form1.submit();}
  }