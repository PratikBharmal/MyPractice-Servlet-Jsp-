/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.servlets;


import jakarta.servlet.GenericServlet;
import jakarta.servlet.Servlet;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import java.io.IOException;
import java.io.*;
import jakarta.servlet.*;
import static java.awt.SystemColor.text;

/**
 *
 * @author Pr@tik
 */
public class Genericservlet extends GenericServlet {
    
    public void service(ServletRequest req , ServletResponse res) throws ServletException , IOException
    {
        System.out.println("This is servlet using generic servlet");
        res.setContentType("text/html");
        PrintWriter out = res.getWriter();
        out.println("<h1>This is my second servlet using generic servlet</h1>");
    }
    
}
