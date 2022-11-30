<%@ LANGUAGE = JScript %>

<HTML>
    <HEAD>
        <TITLE>База данных</TITLE>
 		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<meta http-equiv="Content-Language" content="ru">
    </HEAD>
<BODY  style="background-color:#E6E6FA" topmargin="10" leftmargin="10" text="#800080">
    <style type="text/css">
        .style1{
width:400px;    /* ширина блока*/
    margin:auto;}
</style>
   
    <h2 align="center"><font face="Arial"><b>Записи
        </b></font><font face="Arial"  size="2"> </h2>

<table align="center" width="80%" border="0">

<%			// Map  database to physical path
			
			filePath = Server.MapPath("nett.mdb");
			// Create ADO Connection Component to connect with
			// sample database
			
			oConn = Server.CreateObject("ADODB.Connection");
			oConn.Open("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" +filePath);
			
			// Execute a SQL query and store the results within
			// recordset
			oRs = oConn.Execute("SELECT * From net_kont2  ORDER BY id  ");
%>
 
<thead style="background-color:#DDA0DD">
   <tr>
 
       <td align="center"><b>ID</b></td>
      <td align="center"><b>Имя</b></td>
      <td align="center"><b>Количество человек</b></td>
      <td align="center"><b>Почта</b></td>
        <td align="center"><b>Тариф</b></td>
          <td align="center"><b>Дата тура</b></td>
   </tr>
 
<% flag=0;   i=0; %>
	
<%  while (!oRs.eof) { 

 %>	
  
<tr>
  
          </TD> <!--тут то что пишется в первом столбце -->
 
<% 		for(Index=0; Index < (oRs.fields.count); Index++) { 				
					
   if (flag==1) {%>  <td align="left" bgcolor='#D8BFD8'>  <%  }
   if (flag==0) {%>  <td align="left" bgcolor='#C8A2C8'>  <%  } 
 
gofile = "update.asp?id="+oRs("id"); %>
<%= "<a href= " +gofile + "  >	" %>
    	
<% = oRs(Index)%>    </TD>
					
            <% } 	%>

</tr>
<% oRs.MoveNext();
				
if (flag==1) flag=0 ; else flag=1 ;
			
}%>

</TABLE>
<%   
	oRs.close();
	oConn.close();
%>
 </font>

  <h2 align="center"><font face="Arial"><b>Удалить запись
        </b></font><font face="Arial"  size="2"> </h2>
 <div align="center">
<form  method="GET" action="delete.asp"> 
    <fieldset style="width: 300px; font-size: 16px;">
      <label for="emailed">Почта</label> 
     <br/>
     <input required id="emailed" type="text" name="emailed" size="20">
     <br/>
           <input type="submit" value="Удалить" name="B1">
      <input type="reset" value="Cбpoc" name="B2"></p>
      </fieldset>
</form>
</div>
    <h2 align="center"><font face="Arial"><b><a href="Index.html">Главнвя страница</a>
        </b></font><font face="Arial"  size="2"> </h2>
    <p>&nbsp;</p>

</BODY> </HTML>