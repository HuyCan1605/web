/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import model.Comment;
import model.Product;

/**
 *
 * @author Quang Huy
 */
public class ProductDAO extends DBContext {

    public List<Product> getAll() {
        List<Product> list = new ArrayList<>();
        String sql = "select * from Product";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1), rs.getString(2), rs.getBoolean(3), rs.getString(4), rs.getInt(5), rs.getString(6), rs.getString(8)));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Product> getProductByIDCategory(int id) {
        List<Product> list = new ArrayList<>();
        String sql = "select * from Product where idCategory = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1), rs.getString(2), rs.getBoolean(3), rs.getString(4), rs.getInt(5), rs.getString(6), rs.getString(8)));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public Product getProductByIDProductToDetail(int id) {

        String sql = "select * from Product where idProduct = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                return (new Product(rs.getInt(1), rs.getString(2), rs.getBoolean(3), rs.getString(4), rs.getInt(5), rs.getString(6), rs.getInt(7), rs.getString(8)));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public List<Product> getAllProductBySearch(String txt) {
        List<Product> list = new ArrayList<>();
        String sql = "select * from Product where [name] like ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, "%" + txt + "%");
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1), rs.getString(2), rs.getBoolean(3), rs.getString(4), rs.getInt(5), rs.getString(6), rs.getString(8)));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public void deleteProduct(String id) {
        String sql = "delete from Product where idProduct = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, id);
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void addProduct(String name, String des, int price, String imgLink, int idCat, String quantity) {
        String sql = "Insert [dbo].[Product]"
                + "([name],[available],[description],[price],[imageLink],[idCategory],[quantity])"
                + "values(?,?,?,?,?,?,?)";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, name);
            ps.setInt(2, 1);
            ps.setString(3, des);
            ps.setInt(4, price);
            ps.setString(5, imgLink);
            ps.setInt(6, idCat);
            ps.setString(7, quantity);
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void updateProduct(String name, boolean avai, String des, int price, String image, int idCat, String quantity, int id) {
        String sql = "update Product\n"
                + "set [name] = ?,\n"
                + "[available] = ?,\n"
                + "[description] = ?,\n"
                + "[price] = ?,\n"
                + "[imageLink] = ?,\n"
                + "[idCategory] = ?,\n"
                + "[quantity] = ?\n"
                + "where [idProduct] = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, name);
            ps.setBoolean(2, avai);
            ps.setString(3, des);
            ps.setInt(4, price);
            ps.setString(5, image);
            ps.setInt(6, idCat);
            ps.setString(7, quantity);
            ps.setInt(8, id);
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
    
    public int countProduct(){
        String sql = "select count(*) from Product";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            
            while(rs.next()){
                return rs.getInt(1);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        
        
        return 0;
    }
    
    public List<Product> paging(int index){ //lấy ra 6 sản phẩm từ database
        List<Product> list = new ArrayList<>();
        // khi ấn 1 thì sẽ lấy 6 sản phẩm đầu 0 -> 5, 2 thì sẽ lấy từ sp số 6 -> 12
        String sql = "select * from Product order by idProduct OFFSET ? rows fetch next 6 rows only";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, (index - 1) * 6);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                list.add(new Product(rs.getInt(1), rs.getString(2), rs.getBoolean(3), rs.getString(4), rs.getInt(5), rs.getString(6), rs.getString(8)));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }
    
    public int getRandom(){
        
        Random r = new Random();
        int num =  r.nextInt(countProduct());
        if(num == 0){
            num += 1;
        }
        return num;
    }
    
    public List<Comment> getAllComment(int pid) {
        List<Comment> list = new ArrayList<>();
        String sql = "select * from Comment where pid=? order by cid asc";

        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, pid);
            ResultSet st = ps.executeQuery();
            while (st.next()) {
                list.add(new Comment(st.getInt(1), st.getString(2), st.getDate(3), st.getString(5)));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }
    public int insertComment(String content, String date, int pid, String user){
        String sql = "insert [Comment] ([content],[date],[pid],[user]) values (?,?,?,?)";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1,content);
            ps.setString(2,date);
            ps.setInt(3, pid);
            ps.setString(4, user);
            return ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
            return 0;
        }
    }
    public static void main(String[] args) {
        ProductDAO da = new ProductDAO();
        List<Product> a = da.paging(1);
//        List<Product> list = da.getAll();
//        for (Product list1 : list) {
//            System.out.println(list1);
//        }
        int b = da.getRandom();
//        System.out.println(a);
        List<Comment> c = da.getAllComment(1);
        System.out.println(c);
    
    }

}
