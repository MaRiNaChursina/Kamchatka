<%@ LANGUAGE = JScript %>
<%
	email1=Request.QueryString("emailed");
	        filePath = Server.MapPath("nett.mdb");
	        oConnDel = Server.CreateObject("ADODB.Connection");
			oConnDel.Open("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" +filePath);
			SQL_Sapros="DELETE * From net_kont2 WHERE emailed=" + "'"+ email1+  "'";%>
	<%SQL_Sapros%>	
			
<%			oRsDel = oConnDel.Execute(SQL_Sapros);		   
		    oConnDel.close();%>
		

<HTML>
    <HEAD>


        <TITLE>Удаление</TITLE>
 		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<meta http-equiv="Content-Language" content="ru">
    </HEAD>
  <BODY  style="background-color:#E6E6FA" topmargin="10" leftmargin="10" text="#800080">
<h2 align="center">Для завершения удаления нажмите ссылку <a href="default.asp">Далее</a> </h2>

</BODY> </HTML>