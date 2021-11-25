/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Quang Huy
 */
public class DisplayCreditCardServlet extends HttpServlet {

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
        request.setCharacterEncoding("UTF8");
        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession(true);

        Object o = session.getAttribute("count");

        if (o == null) {
            out.println("<li>\n"
                    + "                                            <span>Ngân hàng :</span>\n"
                    + "                                            <span>BIDV</span>\n"
                    + "                                            <img src=\"images/home/BIDV.png\"/><br/>\n"
                    + "                                            <span>Số tài khoản:</span>\n"
                    + "                                            <span>123456789</span>\n"
                    + "                                        </li>\n"
                    + "                                        <li>\n"
                    + "                                            <span>MoMo hoặc ViettelPay:</span>\n"
                    + "                                            <img src=\"images/home/momo.png\"/>\n"
                    + "                                            <span>hoặc</span>\n"
                    + "                                            <img src=\"images/home/viettel.png\"/><br/>\n"
                    + "                                            <span>Số điện thoại:</span>\n"
                    + "                                            <span>0862424010</span>\n"
                    + "                                        </li>");

        }
        session.setAttribute("count", 1);

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
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF8");
        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession(true);

        Object o = session.getAttribute("count");

        if (o == null) {
            out.println("<li>\n"
                    + "                                            <span>Ngân hàng :</span>\n"
                    + "                                            <span>BIDV</span>\n"
                    + "                                            <img src=\"images/home/BIDV.png\"/><br/>\n"
                    + "                                            <span>Số tài khoản:</span>\n"
                    + "                                            <span>123456789</span>\n"
                    + "                                        </li>\n"
                    + "                                        <li>\n"
                    + "                                            <span>MoMo hoặc ViettelPay:</span>\n"
                    + "                                            <img src=\"images/home/momo.png\"/>\n"
                    + "                                            <span>hoặc</span>\n"
                    + "                                            <img src=\"images/home/viettel.png\"/><br/>\n"
                    + "                                            <span>Số điện thoại:</span>\n"
                    + "                                            <span>0862424010</span>\n"
                    + "                                        </li>");

        }
        session.setAttribute("count", 1);
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
        
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF8");
        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession(true);

        Object o = session.getAttribute("count");

        if (o == null) {
            out.println("<li>\n"
                    + "                                            <span>Ngân hàng :</span>\n"
                    + "                                            <span>BIDV</span>\n"
                    + "                                            <img src=\"images/home/BIDV.png\"/><br/>\n"
                    + "                                            <span>Số tài khoản:</span>\n"
                    + "                                            <span>123456789</span>\n"
                    + "                                        </li>\n"
                    + "                                        <li>\n"
                    + "                                            <span>MoMo hoặc ViettelPay:</span>\n"
                    + "                                            <img src=\"images/home/momo.png\"/>\n"
                    + "                                            <span>hoặc</span>\n"
                    + "                                            <img src=\"images/home/viettel.png\"/><br/>\n"
                    + "                                            <span>Số điện thoại:</span>\n"
                    + "                                            <span>0862424010</span>\n"
                    + "                                        </li>");

        }
        session.setAttribute("count", 1);
        
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
