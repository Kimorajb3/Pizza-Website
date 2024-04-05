/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import Business.Customer;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/********************************************************************
 *	Java III - Logging in as Customer Servlet
 *      Kimora Bailey
 *      CustServlet.java
 ********************************************************************/
@WebServlet(name = "CustServlet", urlPatterns = {"/CustServlet"})
public class CustServlet extends HttpServlet {

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
 *  This servlet is to log in as a Customer
 ********************************************************************/
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
            
        String custid;
        String password;
/********************************************************************
 *  Get Parameter from previous HTML file
 ********************************************************************/
        password = request.getParameter("Password");
        custid = request.getParameter("CustomerID");
        
        try{
            System.out.println("Customer ID: "+custid);
            System.out.println("Password: "+password);
 /********************************************************************
 *  Creating Customer object 
 ********************************************************************/           
            Customer c1 = new Customer();
            c1.selectDB(custid);
            String id = c1.getCustomerID();
            String pw = c1.getPassword();
/********************************************************************
 *  Putting Customer object into session
 ********************************************************************/            
            HttpSession ses1;
            ses1 = request.getSession();
            ses1.setAttribute("c1",c1);

            
            if((custid.equals(id)&& password.equals(pw))){
              System.out.println("Customer First Name: " + c1.getFirstName());
              System.out.println("Customer Last Name: " + c1.getLastName());
              System.out.println("Customer Email: " + c1.getEmail());
              System.out.println("Customer Phone: " + c1.getPhone());
              System.out.println("Customer Birthday: " + c1.getBirthday());
              System.out.println("Customer Street: " + c1.getStreet());
              System.out.println("Customer City: " + c1.getCity());
              System.out.println("Customer Zip: " + c1.getZip());
              System.out.println("Customer State: " + c1.getState());
              System.out.println("Customer Password: " + c1.getPassword());
              System.out.println("Customer Movie Role: " + c1.getRole());
 /********************************************************************
 *  Using RequestDispatcher to forward to next file
 ********************************************************************/                
              RequestDispatcher rd = request.getRequestDispatcher("/CustInfo.jsp");
              rd.forward(request, response);
            }
            else{
 /********************************************************************
 *  Using RequestDispatcher to forward to next file
 ********************************************************************/   
              RequestDispatcher rd = request.getRequestDispatcher("/Customer Login.jsp");
              out.println("<font color=red>Username or Password is incorrect</font>");
              rd.include(request, response);
          }
        }
        catch(Exception e){
            System.out.println("Error");
        }
        finally{
            System.out.println("CustServlet Ending...");
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
