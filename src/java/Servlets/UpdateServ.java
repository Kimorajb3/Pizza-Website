/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Servlets;

import Business.Employee;
import Business.Menu;
import Business.Order;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author bellk
 */
@WebServlet(name = "UpdateServ", urlPatterns = {"/UpdateServ"})
public class UpdateServ extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try{
        
        
        Employee e1;
        HttpSession session = request.getSession();
        e1 = (Employee)session.getAttribute("e1");
        
        String statup;
        String orderid;
        String customer;
        String food;
        String stat;
        String employee;
        
        
        orderid = request.getParameter("OrderID");
        customer = request.getParameter("CustomerID");
        food = request.getParameter("Food");
        stat = request.getParameter("Status");
        statup = request.getParameter("Status_for");
        employee = e1.getEmployeeID();
        
        Order o1 = new Order();
        o1.selectDBE(employee);
        o1.setStatus(statup);
        o1.updateDB();
        
        
        
        RequestDispatcher rd = request.getRequestDispatcher("/OrderUpdated.jsp");
        rd.forward(request, response);
        }
        catch(Exception e){
            e.printStackTrace();
        }
        finally{
            System.out.println("UpdateServlet Ending...");
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
