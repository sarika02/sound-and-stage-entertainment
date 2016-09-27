package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class InsertRegisterDetail extends HttpServlet {

   
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
          try
          {
           String uid=request.getParameter("uid");   
           String password=request.getParameter("password"); 
            String uname=request.getParameter("uname"); 
             String email=request.getParameter("email"); 
              String mobile=request.getParameter("mobile"); 
                String addr=request.getParameter("addr"); 
                
                out.println(uid+"::"+password+"::"+uname+"::"+email+"::"+mobile+"::"+addr);
                
                DAO.RegisterDAO obj=new DAO.RegisterDAO();
                
                if(obj.registerDetail( uid, password, uname,  email,  mobile,  addr))
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

    