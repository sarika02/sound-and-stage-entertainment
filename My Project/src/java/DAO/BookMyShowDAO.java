
package DAO;

import javax.sql.*;
import java.sql.*;
import javax.naming.*;
public class BookMyShowDAO 
{
     Connection conn;
   public BookMyShowDAO()throws Exception
   {
       Context ctx=new InitialContext();
       DataSource ds=(DataSource)ctx.lookup("jdbc/MyDsn");
       conn=ds.getConnection();
       
       }
   public boolean Bookingdetail(String Theaterplace,String date,String time,String seating,String movies,String Amount)throws Exception
   {
       
       PreparedStatement psmt=conn.prepareStatement("insert into EVENTBOOKING values(?,?,?,?,?,?)");
       
       
       psmt.setString(1,Theaterplace);
       psmt.setString(2,date);
       
       psmt.setString(3, time);
       psmt.setString(4 ,seating);
       psmt.setString(5, movies);
       psmt.setString(6, Amount);
     
       
       
       int i=psmt.executeUpdate();
       
       if(i>0)
       
            return true;
       
       else
            return false;
   }

    
}
