

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        
        <title>JSP Page</title>
    </head>
    <body>
        
        <h3 align='center'> USER HOME PAGE </h3>
        <%
            String userid=(String)session.getAttribute("userid");
            if(userid!=null)
            {
          %>      
            
          <h2 align="center">USER HOME</h2>
        
        Welcome :${sessionScope.userid}
                
        <%
            }
            else
            {
            %>
            <jsp:forward page="index.jsp"/>
    
            <%
            }
            %>
           
            <table style="width:60%" align="center" cellspacing="3">
                <tr>
                    <td colspan="10" style="height:165px">SCREEN THIS SIDE</td>
                    
                </tr>
                <%
                        int i,j;
                    String arr[]={"A","B","C","D","E","F","G","H","I","J"};
                    
                    for(i=1;i<=10;i++)
                    {
                        out.println("<tr>");
                        for(j=1;j<=10;j++)
                        {
                            String str=arr[i]+String.valueOf(j);
                            out.println("<td style='background-color:gray'><center><B>"+str+"<B></center></td>");
                        }
                        out.println("</tr>");
                        
                    }
                    %>
                    
                
}           
            
            </table>        
            
        
    </body>
</html>
