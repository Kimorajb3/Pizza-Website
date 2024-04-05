/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Servlets;

import Business.Customer;
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
@WebServlet(name = "OrderServlet", urlPatterns = {"/OrderServlet"})
public class OrderServlet extends HttpServlet {

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
        Customer c1;
        HttpSession session = request.getSession();
        c1 = (Customer)session.getAttribute("c1");
        
        Menu m1;
        m1 = (Menu)session.getAttribute("m1");
        
        String chooseFood="";
        String FD[] = request.getParameterValues("CustOrder");
        for (int i = 0; i<FD.length;i++){
            chooseFood+=FD[i]+" ";
        }
        
        String cID, eID, oID;
        cID = request.getParameter("CustomerID");
        eID = request.getParameter("Employee");
        oID = request.getParameter("OrderID");
        String Stat = "Open";
        
        try{
        
        Order o1 = new Order();
        o1.setOrderID(oID);
        o1.setCustomerID(cID);
        o1.setEmployeeID(eID);
        o1.setStatus(Stat);
        o1.setFood(chooseFood);
        o1.insertDB();
        
        session.setAttribute("o1", o1);
        session.setAttribute("m1", m1);
        
        RequestDispatcher rd = request.getRequestDispatcher("/GuestOrderSubmit.jsp");
        rd.forward(request, response);
  
      
        }
        catch(Exception e){
            e.printStackTrace();
        }
        finally{
            System.out.println("OrderServlet Ending...");
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
