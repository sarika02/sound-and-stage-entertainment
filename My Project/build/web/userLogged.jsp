
<%@page contentType="text/html" pageEncoding="UTF-8"%>

 <html>

      <head>
         <meta http-equiv="Content-Type" 
            content="text/html; charset=windows-1256">
         <title>   User Logged Successfully   </title>
      </head>
	
      <body>

         <center>
           <%
            String userid=(String)session.getAttribute("userid");
            if(userid!=null)
            {
          %>      
            
			
            Welcome :${sessionScope.userid}
         </center>

      </body>
	
   </html>

