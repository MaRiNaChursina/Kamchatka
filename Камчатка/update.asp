<%@ LANGUAGE = JScript %>
<%
	id1=Request.QueryString("id"); 	
                       %>

<HTML>
    <HEAD>
         <TITLE>Изменить запись</TITLE>
 		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<meta http-equiv="Content-Language" content="ru">
 </HEAD>
    <BODY style="background-color:#E6E6FA" topmargin="10" leftmargin="10" text="#800080">
   
    <h2 align="center">
   
    &nbsp;<font face="Arial"><b>Изменить запись
    </b></font><font face="Arial"  size="2" >
    </h2>
<table align="center" width="80%" border="0">

<%				
			filePath = Server.MapPath("nett.mdb");
	        oConn = Server.CreateObject("ADODB.Connection");
		 	oConn.Open("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" +filePath);
     	 	SQL_Sapros="SELECT * From net_kont2  WHERE id=" + "'"+ idl+ "'";
		  	oRs = oConn.Execute(SQL_Sapros);		
%>
  
<div align="center" style="font-size: 16px"><%=oRs("ima")%>&nbsp;&nbsp;<%=oRs("kol")%>&nbsp;&nbsp;<%=oRs("tarif")%>&nbsp;&nbsp;     <%=oRs("dat")%>&nbsp;&nbsp; <%=oRs("email")&nbsp;&nbsp; <%=oRs("koment")%> </div>
 
</TABLE>
	</font>
    <div align="center">
<form method="GET" action="update2.asp" >
     <fieldset style="width: 300px; font-size: 16px;">

      <p>Имя<br/>
        <input type="text" name="name1" size="30" value='<%=oRs("ima")%>'></p>
      <p>Количество человек<br/>
       <input type="text" name="number" size="30" value='<%=oRs("kol")%>'></p>
      <p>Почта<br/>
       <input type="text" name="mail" size="30" value='<%=oRs("email")%>'></p>

      <p>Тариф<br/>
       <input type="text" name="radio" size="30" value='<%=oRs("tarif")%>'></p>

        <p>Дата<br/>
            <input type="text" name="data" size="30" value='<%=oRs("dat")%>'></p>
            
            <p>Коментарий<br/>
       <input type="text" name="coment" size="30" value='<%=oRs("koment")%>'></p>



      <p><input type="submit" value="Обновить" name="B1"><input type="reset" value="C6poc" name="B2"></p>
  </fieldset>
</form>
</div>
<% 	oRs.close();
	oConn.close();		
%> 
 
</BODY> </HTML>