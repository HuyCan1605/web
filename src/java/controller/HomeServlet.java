/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dal.CategoryDAO;
import dal.ProductDAO;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Category;
import model.Product;

/**
 *
 * @author Quang Huy
 */
public class HomeServlet extends HttpServlet {

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
        //b1: get data from DAO

        String index = request.getParameter("index");// số trang 
        if (index == null) { // lúc mới load trang thì index = 1
            index = "1"; 
        }
        int indexPage = Integer.parseInt(index);

        ProductDAO pd = new ProductDAO();
        CategoryDAO cd = new CategoryDAO();
        List<Product> list = pd.paging(indexPage); // lấy list sản phẩm tương ứng với số trang
        List<Category> listCat = cd.getAllCat(); //

        //kiểm tra xem có bao nhiêu trang 
        int count = pd.countProduct();
        int endPage = count / 6;
        if (count % 6 != 0) {
            endPage++;
        }
        
        
        //b2 set data to jsp
        List<Product> list1 = pd.paging(1);
        List<Product> list2 = pd.paging(2);
        request.setAttribute("listR", list1);
        request.setAttribute("listP2", list2);
        
        request.setAttribute("listP", list);
        request.setAttribute("listCat", listCat);
        request.setAttribute("tag", indexPage);
        request.setAttribute("endP", endPage);
        request.getRequestDispatcher("index.jsp").forward(request, response);
        
        
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
