
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class Bookingregisterdetail extends HttpServlet {

   

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
          try
          {
          // String theaterid=request.getParameter("Theaterid");   
           String Theaterplace=request.getParameter("Theaterplace"); 
            String date=request.getParameter("date"); 
             String time=request.getParameter("time"); 
              String seating=request.getParameter("seating"); 
                String movies=request.getParameter("movies"); 
                 String Amount=request.getParameter("Amount"); 
                
                out.println(Theaterplace+"::"+date+"::"+time+"::"+seating+"::"+movies+"::"+Amount);
                
                DAO.BookMyShowDAO obj=new DAO.BookMyShowDAO();
                
                if(obj.Bookingdetail(  Theaterplace, date,  time,  seating,  movies,Amount))
                { 
                  out.println("successful");
                }  
                 else
                {
                    out.println("Error In Entering");
                            }   
                   
          }
          catch(Exception e)
          {
              out.println("Exception Arised");
              e.printStackTrace(out);
          }
        }
}