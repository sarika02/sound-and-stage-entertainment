

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <script src="script/loginvalidation.js"></script>
        <title>Register-Book My Show</title>
    </head>
    <body>
        <%@include file="Header.jsp"%>
        <h1><div id="topdiv" align="center">Welcome To Book My Show
<img src="IMAGES/BMS_logo_new.png"width="50" height="30" align="right"/> 
<br>

</h1>
</br>
</br>
</br>
</br>
        
        
         <form  action="InsertRegisterDetail"  method="post">
           <table align="center" cellspacing="5" cellpadding="5">     
                <tr bgcolor="blue"> 
                   
                               <td colspan="5"><center><b>LOGIN DIALOG<b></center></td>
                            
                </tr>
                <tr bgcolor="pink"> 
                    <td>User ID</td>
                    <td> <input type='text'name='uid'/></td>
                </tr>
                <tr bgcolor="pink">
                    <td>Password</td>
                    <td> <input type='password'name='password'/></td>
                </tr>
                
                <tr bgcolor="pink">
                    <td>User Name</td>
                    <td> <input type='text'name='uname'/></td>
                </tr>
                
                
                <tr bgcolor="pink">
                    <td>Email ID</td>
                    <td> <input type='email'name='email'/></td>
                </tr>
                
                <tr bgcolor="pink">
                    <td>Mobile</td>
                    <td> <input type='text'name='mobile'/></td>
                </tr>
                
                <tr bgcolor="pink">
                    <td>Address</td>
                    <td> <textarea colspan='20' rows='10' name='addr'></textarea></td>
                </tr>
                 <tr bgcolor="pink">
                    <td colspan='2'>
                 <center>
                        <input type='submit'value='SUBMIT'/>
                         <input type='reset'value='RESET'/>
                         <button type="cancel"><a href="index.jsp"> CANCEL </a></button>

                 </center>
                    </td>
                </tr>
            </table>
             </form>
        
        
        <%@include file="Footer.jsp"%>
                   
    </body>
</html>
