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
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Account;

/**
 *
 * @author Quang Huy
 */
public class LoginServlet extends HttpServlet {

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

        //THỰC HIỆN CHỨC NĂNG GHI NHỚ TÀI KHOẢN VÀ PASS
        
        Cookie arr[] = request.getCookies(); // trả về dãy các cookies
        if(arr != null){ // !(nếu cookie bị xoá hết khi đóng trình duyệt)
            for (Cookie o : arr) {
            if (o.getName().equals("user_Cookie")) {
                request.setAttribute("userJSP", o.getValue());
            }
            if (o.getName().equals("pass_Cookie")) {
                request.setAttribute("passJSP", o.getValue());
            }
        }
        }
        
        request.getRequestDispatcher("login.jsp").forward(request, response);
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
        String remember = request.getParameter("remember");

        AccountDAO ac = new AccountDAO();
        Account a = ac.login(user, pass); // lấy ở database

        if (a == null) {
            request.setAttribute("mess", "Tài khoản sai hoặc không tồn tại");
            request.getRequestDispatcher("login.jsp").forward(request, response);

        } else {
            if(!a.isIsCustomer() && !a.isIsAdmin()){
                request.setAttribute("mess", "Tài khoản đã bị chặn");
                request.getRequestDispatcher("login.jsp").forward(request, response);
                
            }
//          đẩy tìa khoản lên session
            HttpSession session = request.getSession();
            session.setAttribute("acc", a);
            
            
            //set cookies luu account
            Cookie userC = new Cookie("user_Cookie", user);
            Cookie passC = new Cookie("pass_Cookie", pass);

            if (remember != null) {
                userC.setMaxAge(60);
                passC.setMaxAge(60);
            } else {
                userC.setMaxAge(0);
                passC.setMaxAge(0);
            }

            response.addCookie(userC);
            response.addCookie(passC);
            response.sendRedirect("home");
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
