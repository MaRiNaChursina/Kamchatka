var a=prompt("Введите свое ФИО", );
 alert("Здраствуйте, "+a+" !\n Добро пожаловать на сайт!");
m_Name=new Array("января", "февраля", "марта","апреля", "мая", "июня", "июля", "августа",
"сентября", "октября", "ноября", "декабря");
//Названия дней недели
d_Name=new Array("воскресенье", "понедельник",
"вторник", "среда", "четверг", "пятница",
"суббота");
function showTime(){
var Now = new Date();
var str="Вы зашли на эту страницу ";
str+= Now.getDate()+" "+m_Name[Now.getMonth()]+
" " + Now.getFullYear()+"года<br>";
str+="в "+ Now.getHours() + ":" +
Now.getMinutes() + ":" +
Now.getSeconds()+"<br>";
str+="Сегодня - "+ d_Name[Now.getDay()];
document.write(str);
}
