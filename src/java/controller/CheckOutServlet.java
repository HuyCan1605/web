/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dal.OrderDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Account;
import model.Cart;
import model.Item;

/**
 *
 * @author Quang Huy
 */
public class CheckOutServlet extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet CheckOutServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CheckOutServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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

        HttpSession session = request.getSession(true);
        Cart cart = null; 
        Object o = (Cart) session.getAttribute("cart");
        if (o != null) {
            cart = (Cart) o;
            List<Item> list = cart.getItems();
            
            request.setAttribute("listCheckOut", list);
           
        }
        request.getRequestDispatcher("checkout.jsp").forward(request, response);
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
        
//        int payment_methods = Integer.parseInt(request.getParameter("option"));
//        String phone = request.getParameter("phone");
//        String email = request.getParameter("email");
//        String firstN = request.getParameter("firstN");
//        String midN = request.getParameter("midN");
//        String lastN = request.getParameter("lastN");
//        String address = request.getParameter("address");
//        String street = request.getParameter("street");
//        int typeAdd = Integer.parseInt(request.getParameter("typeAdd"));
//        String message = request.getParameter("message");
//        
////        request.setAttribute("1", payment_methods);
//        request.setAttribute("2", phone);
//        request.setAttribute("3", email);
//        request.setAttribute("4", firstN);
//        request.setAttribute("5", midN);
//        request.setAttribute("6", lastN);
//        request.setAttribute("7", address);
//        request.setAttribute("8", street);
//        request.setAttribute("9", typeAdd);
//        request.setAttribute("10", message);
//        request.getRequestDispatcher("test.jsp").forward(request, response);
        HttpSession session = request.getSession(true);
        Cart cart = null;
        Object o = session.getAttribute("cart");

        if (o != null) {
            cart = (Cart) o;
            
        } else {
            cart = new Cart();
        }
        Account account = null;
        Object a = session.getAttribute("acc");
        if (a != null) {
            account = (Account) a;
            OrderDAO odb = new OrderDAO();
            odb.addOrder(account, cart);
            session.removeAttribute("cart");
            session.setAttribute("size", 0);
            response.sendRedirect("home");
        } else {
            response.sendRedirect("login.jsp");
            
        }
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
