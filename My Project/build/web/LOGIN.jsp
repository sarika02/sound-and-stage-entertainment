
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <script src="script/loginvalidation.js"></script>
        <title>Login-Book My Show</title>
    </head>
    <body>
        <%@include file="Header.jsp" %>
        <h1><div id="topdiv" align="center">Welcome To Book My Show
<img src="IMAGES/BMS_logo_new.png"width="50" height="30" align="right"/> 
<br>

</h1>
</br>
</br>
</br>
</br>

        
        <form action="LoginCheck2"  method="post">
           <table align="center" cellspacing="10" cellpadding="10">
              
        <tr bgcolor="cyan">
            <td colspan="10"><center><b>LOGIN DIALOG<b></center></td>
        </tr>

         <tr bgcolor="pink">
            <td>User ID</td><td><input type="text" name="uid"/></td>
         </tr>
        <tr bgcolor="pink">
            <td>Password</td><td><input type="password" name="password"/></td>
        </tr>
        <tr bgcolor="cyan">
        <td colspan="5">
        <center>
           
           
                         <input type='submit' value='SUBMIT'/>
                         <input type='reset' value='RESET'/>
                         <button type="cancel"><a href="index.jsp"> CANCEL </a></button>

</center>
         </td>
                </tr>
            </table>
</form>

      
        <%@include file="Footer.jsp" %> 
    </body>
</html>
