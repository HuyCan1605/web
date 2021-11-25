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
import model.Account;
import model.Category;

/**
 *
 * @author Quang Huy
 */
public class AccountDAO extends DBContext {

    public Account login(String user, String pass) {
        String sql = "select * from Account where [username] = ? and [password] = ?";

        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, user);
            ps.setString(2, pass);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getBoolean(4), rs.getBoolean(5));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return null;
    }

    public void addAccount(String user, String pass) {
        String sql = "insert into Account values(?,?,0,1)";

        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, user);
            ps.setString(2, pass);
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public Account searchAccountByUser(String user) {
        String sql = "select * from Account where [username] like ?";

        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, "%" + user + '%');
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getBoolean(4), rs.getBoolean(5));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return null;
    }

    public List<Account> getAllAccount() {
        List<Account> list = new ArrayList<>();
        String sql = "select * from Account";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                list.add(new Account(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getBoolean(4), rs.getBoolean(5)));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }
    
    public void updateAccount(boolean isA, boolean isC, String accId){
        String sql = "update Account set [isAdmin] = ?, [isCustomer] = ? where [accId] = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setBoolean(1, isA);
            st.setBoolean(2, isC);
            st.setString(3, accId);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
    public void updateCustomer(boolean isC, String accId){
        String sql = "update Account set [isCustomer] = ? where [accId] = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setBoolean(1, isC);
            st.setString(2, accId);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
    public void updateAdmin(boolean isA, String accId){
        String sql = "update Account set [isAdmin] = ? where [accId] = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setBoolean(1, isA);
            st.setString(2, accId);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
    public static void main(String[] args) {
        AccountDAO da = new AccountDAO();
//        da.addAccount("huy", "sa");
//        for (Category list1 : list) {
//            System.out.println(list1);
//        }
        List<Account> list = da.getAllAccount();
        System.out.println(list);

    }
}
