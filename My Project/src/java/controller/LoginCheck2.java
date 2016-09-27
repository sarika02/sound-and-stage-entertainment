package controller;


import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;



public class LoginCheck2 extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        response.setContentType("text/html;charset=UTF-8");
         PrintWriter out = response.getWriter();
         try
               {
                   String uid=request.getParameter("uid");
                    String password=request.getParameter("password");
                    
                   
                    DAO.LoginDAO  obj=new DAO. LoginDAO();
                   String role=obj.checkLogin(uid, password);
                   if(role.equals("error"))
                   {
                      
                       RequestDispatcher dispatch=request.getRequestDispatcher("index.jsp");
                       dispatch.forward(request,response);
                       
                   }
                   
                  if(role.equals("ROLE_USER"))
                   {
                       HttpSession session=request.getSession();
                       session.setAttribute("userid",uid);
                       RequestDispatcher dispatch=request.getRequestDispatcher("UserHome.jsp");
                       dispatch.forward(request,response);
                       
                   }
                   
                   
                   else
                   {
                       HttpSession session=request.getSession();
                       session.setAttribute("userid",uid);
                       
                      RequestDispatcher dispatch=request.getRequestDispatcher("Admin.jsp");
                       dispatch.forward(request,response);
                       
                   }
                   
               }
                   
                    
               catch(Exception e)
               {
               out.println("Exception Arised");
               }
    }
    }
    
