/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Quang Huy
 */
public class Account {

    private int userId;
    private String username;
    private String password;
    private boolean isAdmin; // 
    private boolean isCustomer; //

    public Account() {
    }

    public Account(int userId, String username, String password, boolean isAdmin, boolean isCustomer) {
        this.userId = userId;
        this.username = username;
        this.password = password;
        this.isAdmin = isAdmin;
        this.isCustomer = isCustomer;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public boolean isIsAdmin() {
        return isAdmin;
    }

    public void setIsAdmin(boolean isAdmin) {
        this.isAdmin = isAdmin;
    }

    public boolean isIsCustomer() {
        return isCustomer;
    }

    public void setIsCustomer(boolean isCustomer) {
        this.isCustomer = isCustomer;
    }

    @Override
    public String toString() {
        return "Account{" + "userId=" + userId + ", username=" + username + ", password=" + password + ", isAdmin=" + isAdmin + ", isCustomer=" + isCustomer + '}';
    }

    

}
