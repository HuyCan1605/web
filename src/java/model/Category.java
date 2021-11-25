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
public class Category {
    private int idCategory;
    private String title;
    private String descrip;
    private String priceRange;

    public Category() {
    }

    public Category(int idCategory, String title, String descrip, String priceRange) {
        this.idCategory = idCategory;
        this.title = title;
        this.descrip = descrip;
        this.priceRange = priceRange;
    }

    public int getIdCategory() {
        return idCategory;
    }

    public void setIdCategory(int idCategory) {
        this.idCategory = idCategory;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescrip() {
        return descrip;
    }

    public void setDescrip(String descrip) {
        this.descrip = descrip;
    }

    public String getPriceRange() {
        return priceRange;
    }

    public void setPriceRange(String priceRange) {
        this.priceRange = priceRange;
    }
    
}
