<%@ LANGUAGE = JScript %>
<%
	ima1=Request.QueryString("name1");   
	kol1=Request.QueryString("number");
    email1=Request.QueryString("mail");  
    tarif1=Request.QueryString("radio"); 
    Data1=Request.QueryString("data");
    Coment1=Request.QueryString("coment"); 
			filePath = Server.MapPath("nett.mdb");
	        oConnAdd = Server.CreateObject("ADODB.Connection");
		 	oConnAdd.Open("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" +filePath);	    
            SQL_Sapros="INSERT INTO net_kont2(ima,kol,tarif,dat,email,koment) VALUES('"+ima1+"','"+kol1+"','"+email1+"','"+tarif1+"','"+Data1+"','"+Coment1+"')"; %>
   
  
    
<%          oRsAdd = oConnAdd.Execute(SQL_Sapros);
            oConnAdd.close();	%>
            <HTML>
    <HEAD>
 		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<meta http-equiv="Content-Language" content="ru">
 </HEAD>
 <BODY  style="background-color:#E6E6FA" topmargin="10" leftmargin="10" text="#800080">
	<h2 align="center"><font face="Arial"><b>Добавлена запись<br/>
        
	 &nbsp;&nbsp;<%=ima1%>&nbsp;&nbsp;&nbsp; <%=kol1%>
     &nbsp;&nbsp;<%=email1%></b></font><font face="Arial"  size="2"> </h2>
    <br/><br/>
<h2 align="center">Для продолжения нажмите  <a href="default.asp">Далее</a></h2>

</BODY> </HTML>