<%@ LANGUAGE = JScript %>
<%
	ima1=Request.QueryString("name1");   
	kol1=Request.QueryString("number");
    email1=Request.QueryString("mail");  
    tarif1=Request.QueryString("radio"); 
    Data1=Request.QueryString("data");
    Coment1=Request.QueryString("coment");
            filePath = Server.MapPath("nett.mdb");
	        oConnUp = Server.CreateObject("ADODB.Connection");
			oConnUp.Open("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" +filePath);
          	SQL_Sapros="Update net_kont2 SET ima= '"+ima1+"',kol= '"+kol1+"',tarif= '"+tarif1+"',email= '"+email1+"',dat= '"+Data1+"',koment= '"+Coment1+"' WHERE id=" + "'"+ id1+ "'" ;
		    oRsDel = oConnUp.Execute(SQL_Sapros);		   
		    oConnUp.close();
%>
<HTML>
    <HEAD>
         <TITLE>Изменить запись</TITLE>
 		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<meta http-equiv="Content-Language" content="ru">
 </HEAD>
    <BODY  style="background-color:#E6E6FA" topmargin="10" leftmargin="10" text="#800080">
    	<br/><br/><br/>
<h2 align="center">Для завершения обновления нажмите ссылку <a href="default.asp">Далее</a> </h2>

</BODY> </HTML>