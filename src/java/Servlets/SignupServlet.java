/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import Business.Customer;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/********************************************************************
 *	Java III - Adding Account to Customer Database Servlet
 *      Kimora Bailey
 *      SignupServlet.java
 ********************************************************************/
@WebServlet(name = "SignupServlet", urlPatterns = {"/SignupServlet"})
public class SignupServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
 /********************************************************************
 *  This servlet is to add an account to Customer Database
     * @param request
     * @param response
     * @throws javax.servlet.ServletException
     * @throws java.io.IOException
 ********************************************************************/

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
 /********************************************************************
 *  Getting Customer object out of session
 ********************************************************************/                       
        String Cid;
        String Cfn;
        String Cln;
        String Cem;
        String Cphone;
        String CDOB;
        String Cstr;
        String Ccity;
        String Cstate;
        String Czip;
        String Cpass;
        String Cmr;
 /********************************************************************
 *  Get Parameter from previous HTML file
 ********************************************************************/ 
        Cid = request.getParameter("CID");
        Cfn = request.getParameter("FN");
        Cln = request.getParameter("LN");
        Cem = request.getParameter("EM");
        Cphone = request.getParameter("Phone");
        CDOB = request.getParameter("DOB");
        Cstr = request.getParameter("STR");
        Ccity = request.getParameter("City");
        Cstate = request.getParameter("State");
        Czip = request.getParameter("Zip");
        Cpass = request.getParameter("Password");
        Cmr = request.getParameter("MR");
        
        try{
            System.out.println("Customer ID: "+Cid);
            System.out.println("Password: "+Cpass);
            
            Customer c1 = new Customer();
            c1.selectDB(Cid);
            String id = c1.getCustomerID();
            
            HttpSession ses1;
            ses1 = request.getSession();
            ses1.setAttribute("c1",c1);
            
            if(Cid.equals(id)){
              RequestDispatcher rd = request.getRequestDispatcher("/SignUp.jsp");
              out.println("<font color=red>Customer ID is already taken</font>");
              rd.include(request, response);  
            }
            else{
            c1.insertDB(Cid, Cfn, Cln, Cem, Cphone, CDOB, Cstr, Ccity, Cstate, Czip, Cpass, Cmr);
            RequestDispatcher rd = request.getRequestDispatcher("/SUSuccess.jsp");
            rd.forward(request, response);
            } 
        }
            
        catch(Exception err){
           System.out.println("Error");
           err.printStackTrace();
       }
       finally{
            System.out.println("SignupServlet Ending...");
            out.close();
        }        
        
    }
}