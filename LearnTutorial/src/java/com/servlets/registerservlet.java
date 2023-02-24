/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.servlets;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 *
 * @author Pr@tik
 */
public class registerservlet extends Httpservlet{

    /**
     *
     * @param req
     * @param resp
     * @throws ServletException
     * @throws IOException
     */
    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        resp.setContentType("text/html");
        
        PrintWriter out = resp.getWriter();
        
        String name = req.getParameter("user_name");
        String password = req.getParameter("user_password");
        String email = req.getParameter("user_e-mail");
        String gender = req.getParameter("user_gender");
        String course = req.getParameter("user_course");
        
        String condition = req.getParameter("condition");
        
        if(condition != null)
        {
            if(condition.equals("checked"))
            {
                out.println("<h2>Welcome to My Project</h2>");
                out.println("<h2>Name : "+name + "</h2>");
                out.println("<h2>Password : "+password + "</h2>");
                out.println("<h2>e-mail : "+email + "</h2>");
                out.println("<h2>Gender : "+gender + "</h2>");
                out.println("<h2>Course : "+course + "</h2>");
                
//                RequestDispatcher rs;
//                rs = req.getRequestDispatcher("s");
//                rs.forward(req, resp);
            }
        }else
        {
            out.println("You have Not accepted Terms and Condtions....");
            
//            RequestDispatcher rs = req.getRequestDispatcher("index.html");
//            rs.include(req, resp);
        }
        
    }
    
    
}
