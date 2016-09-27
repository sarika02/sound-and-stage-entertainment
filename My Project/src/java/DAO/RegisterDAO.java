package DAO;

import javax.sql.*;
import java.sql.*;
import javax.naming.*;

public class RegisterDAO
{
    Connection conn;
   public RegisterDAO()throws Exception
   {
       Context ctx=new InitialContext();
       DataSource ds=(DataSource)ctx.lookup("jdbc/MyDsn");
       conn=ds.getConnection();
       
       }
   public boolean registerDetail(String uid,String password,String uname,String email,String mobile,String addr)throws Exception
   {
       PreparedStatement psmt1=conn.prepareStatement("insert into UserCredential values(?,?,?)");
       PreparedStatement psmt2=conn.prepareStatement("insert into UserDetails values(?,?,?,?,?)");
       
       psmt1.setString(1,uid);
       psmt1.setString(2,password);
       psmt1.setString(3,"ROLE_USER");
       
       psmt2.setString(1, uid);
       psmt2.setString(2 ,uname);
       psmt2.setString(3, email);
       psmt2.setString(4, mobile);
       psmt2.setString(5, addr);
       
       int i=psmt1.executeUpdate();
       int j=psmt2.executeUpdate();
       
       if(i>0 && j>0)
       
            return true;
       
       else
            return false;
   }

   
}
