/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dal.AccountDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Account;

/**
 *
 * @author Quang Huy
 */
public class SignupServlet extends HttpServlet {

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
//        response.setContentType("text/html;charset=UTF-8");
//        request.setCharacterEncoding("UTF8");
//        String user = request.getParameter("user");
//        String pass = request.getParameter("pass");
//        String repass = request.getParameter("repass");
//        if(!(pass.equals(repass))){
//            request.setAttribute("mess1", "Mật khẩu không khớp nhau");
//            request.setAttribute("user1", user);
//            request.getRequestDispatcher("login.jsp").forward(request, response);
//        }else{
//            AccountDAO ac = new AccountDAO();
//            Account account = ac.searchAccountByUser(user);
//            if(account == null){
//                ac.addAccount(user, pass);
//                request.setAttribute("mess2", "Đăng kí thành công");
//                request.getRequestDispatcher("login.jsp").forward(request, response);
//            }else{
//               request.setAttribute("mess1", "Tài khoản đã tồn tại");
//               request.getRequestDispatcher("login.jsp").forward(request, response);
//            }
//        }
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
//        request.setCharacterEncoding("UTF8");
//        String user = request.getParameter("user");
//        String pass = request.getParameter("pass");
//        String repass = request.getParameter("repass");
//        if(!(pass.equals(repass))){
//            request.setAttribute("mess1", "Mật khẩu không khớp nhau");
//            request.setAttribute("user1", user);
//            request.getRequestDispatcher("checkout.jsp").forward(request, response);
//        }else{
//            AccountDAO ac = new AccountDAO();
//            Account account = ac.searchAccountByUser(user);
//            if(account == null){
//                ac.addAccount(user, pass);
//                request.setAttribute("mess2", "Đăng kí thành công");
//                request.getRequestDispatcher("checkout.jsp").forward(request, response);
//            }else{
//               request.setAttribute("mess1", "Tài khoản đã tồn tại");
//               request.getRequestDispatcher("checkout.jsp").forward(request, response);
//            }
//        }
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
        request.setCharacterEncoding("UTF8");
        String user = request.getParameter("user");
        String pass = request.getParameter("pass");
        String repass = request.getParameter("repass");
        if(!(pass.equals(repass))){
            request.setAttribute("mess1", "Mật khẩu không khớp nhau");
            request.setAttribute("user1", user);
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }else{
            AccountDAO ac = new AccountDAO();
            Account account = ac.searchAccountByUser(user);
            if(account == null){
                ac.addAccount(user, pass);
                request.setAttribute("mess2", "Đăng kí thành công");
                request.getRequestDispatcher("login.jsp").forward(request, response);
            }else{
               request.setAttribute("mess1", "Tài khoản đã tồn tại");
               request.getRequestDispatcher("login.jsp").forward(request, response);
            }
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
