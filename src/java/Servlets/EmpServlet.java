/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import Business.Employee;
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
 *	Java III - Logging in as Employee Servlet
 *      Kimora Bailey
 *      EmpServlet.java
 ********************************************************************/
@WebServlet(name = "EmpServlet", urlPatterns = {"/EmpServlet"})
public class EmpServlet extends HttpServlet {

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
 *  This servlet is to log in as a Employee
 ********************************************************************/
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
            
        String empid;
        String password;
/********************************************************************
 *  Get Parameter from previous HTML file
 ********************************************************************/
        password = request.getParameter("Password");
        empid = request.getParameter("EmployeeID");
        
        try{
            System.out.println("Employee ID: "+empid);
            System.out.println("Password: "+password);
 /********************************************************************
 *  Creating Employee object 
 ********************************************************************/           
            Employee e1 = new Employee();
            e1.selectDB(empid);
            String id = e1.getEmployeeID();
            String pw = e1.getPassword();
/********************************************************************
 *  Putting Employee object into session
 ********************************************************************/            
            HttpSession ses1;
            ses1 = request.getSession();
            ses1.setAttribute("e1",e1);

            
            if((empid.equals(id)&& password.equals(pw))){
              System.out.println("Employee First Name: " + e1.getFirstName());
              System.out.println("Employee Last Name: " + e1.getLastName());
              System.out.println("Employee Email: " + e1.getEmail());
              System.out.println("Employee Phone: " + e1.getPhone());
              System.out.println("Employee Birthday: " + e1.getBirthday());
              System.out.println("Employee Street: " + e1.getStreet());
              System.out.println("Employee City: " + e1.getCity());
              System.out.println("Employee Zip: " + e1.getZip());
              System.out.println("Employee State: " + e1.getState());
              System.out.println("Employee Password: " + e1.getPassword());
              
 /********************************************************************
 *  Using RequestDispatcher to forward to next file
 ********************************************************************/                
              RequestDispatcher rd = request.getRequestDispatcher("/EmployeeInfo.jsp");
              rd.forward(request, response);
            }
            else{
 /********************************************************************
 *  Using RequestDispatcher to forward to next file
 ********************************************************************/   
              RequestDispatcher rd = request.getRequestDispatcher("/Employee Login.jsp");
              out.println("<font color=red>Username or Password is incorrect</font>");
              rd.include(request, response);
          }
        }
        catch(Exception e){
            System.out.println("Error");
        }
        finally{
            System.out.println("EmpServlet Ending...");
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
