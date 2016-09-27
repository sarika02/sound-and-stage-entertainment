
package DAO;

import java.sql.*;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;


public class LoginDAO 
{
    Connection conn;
   public LoginDAO()throws Exception
   {
       Context ctx=new InitialContext();
       DataSource ds=(DataSource)ctx.lookup("jdbc/MyDsn");
        conn=ds.getConnection();
       
       }
   public String checkLogin(String uid,String password)throws Exception
   {
       
     
       PreparedStatement psmt=conn.prepareStatement("select * from UserCredential where userid=? and password=?");
       psmt.setString(1, uid);
       psmt.setString(2, password);
       ResultSet rs=psmt.executeQuery();
       String role="";
       if(rs.next())
       {
          role=rs.getString(3);
          
      }  
      
       else
      {
          role="Error";
      }
      
        return role.trim();
   }
}
