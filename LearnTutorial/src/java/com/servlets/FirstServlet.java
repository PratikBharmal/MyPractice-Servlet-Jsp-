/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.servlets;

import jakarta.servlet.Servlet;
import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;


/**
 *
 * @author Pr@tik
 */
public class FirstServlet implements Servlet{
    
    ServletConfig conf;
    
    @Override
    public void init(ServletConfig conf)
    {
        this.conf = conf;
        System.out.println("Init Method Executes");
    }
    
    public void service(ServletRequest req, ServletResponse res)throws ServletException,IOException{
        
        System.out.println("Service Method Executes");
        
        //set the content type of the response
        res.setContentType("text/html");
        PrintWriter out = res.getWriter();
        out.println("<h1>This is my output from servlet method;</h1>");
        out.println("<h2>Todays date and Time is "+new Date().toString()+"</h2>");
    }
    
    public void destroy()
    {
        System.out.println("destroy Method Executes");
    }
    
    public ServletConfig getServletConfig()
    {
        return this.conf;
    }
    
    public String getServletInfo()
    {
        return "This is created by pratik";
    }
}
