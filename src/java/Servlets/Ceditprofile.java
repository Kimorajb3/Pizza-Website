/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Servlets;

import Business.Customer;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/********************************************************************
 *	Java III - Edit Customer Profile Servlet
 *      Kimora Bailey - Fall 2022
 *      Ceditprofile.java
 ********************************************************************/
@WebServlet(name = "Ceditprofile", urlPatterns = {"/Ceditprofile"})
public class Ceditprofile extends HttpServlet {

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
 *  This servlet is to edit the patient profile
 ********************************************************************/
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
 /********************************************************************
 *  Getting Patient object out of session
 ********************************************************************/     
        Customer c1;
        HttpSession session = request.getSession();
        c1 = (Customer)session.getAttribute("c1");
        
       String Cid;
       String firstn;
       String lastn;
       String Cem;
       String Cphone;
       String Cbirth;
       String Cstr;
       String Ccity;
       String Cst;
       String Cz;
       String Cpass;
       String Crole;
 /********************************************************************
 *  Get Parameter from previous HTML file
 ********************************************************************/ 
        Cid = request.getParameter("custid");
        Cpass = request.getParameter("custpass");
        firstn = request.getParameter("cfn");
        lastn = request.getParameter("cln");
        Cphone = request.getParameter("cph");
        Cem = request.getParameter("cem");
        Cbirth = request.getParameter("cb");
        Cstr = request.getParameter("cstr");
        Ccity = request.getParameter("ccity");
        Cz = request.getParameter("cz");
        Cst = request.getParameter("cstate");
        Crole = request.getParameter("cmr");
 /********************************************************************
 *  Put Patient object in session
 ********************************************************************/     
        c1.setCustomerID(Cid);
        c1.setFirstName(firstn);
        c1.setLastName(lastn);
        c1.setEmail(Cem);
        c1.setPhone(Cphone);
        c1.setBirthday(Cbirth);
        c1.setStreet(Cstr);
        c1.setCity(Ccity);
        c1.setState(Cst);
        c1.setZip(Cz);
        c1.setPassword(Cpass);
        c1.setRole(Crole);
        c1.updateDB();
        
        session.setAttribute("c1", c1);
 /********************************************************************
 *  Using RequestDispatcher to forward to next file
 ********************************************************************/    
        RequestDispatcher rd = request.getRequestDispatcher("/CustInfo.jsp");
        rd.forward(request, response);
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