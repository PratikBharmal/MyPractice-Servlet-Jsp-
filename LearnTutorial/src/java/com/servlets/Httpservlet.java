/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

/**
 *
 * @author Pr@tik
 */
public class Httpservlet extends HttpServlet{
    
    /**
     *
     * @param req
     * @param res
     * @throws ServletException
     * @throws IOException
     */
    @Override
    public void doGet (HttpServletRequest req , HttpServletResponse res)throws ServletException, IOException{
        
        System.out.println("This is my httpServelt method");
        
        res.setContentType("text/html");
        PrintWriter out = res.getWriter();
        
        out.println("<h1>This is get method of my servlet</h1>");
        out.println(new Date().toString());
        
                
    }

}
