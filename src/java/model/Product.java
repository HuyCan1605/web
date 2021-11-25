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
public class Product {
    private int id;
    private String name;
    private boolean avai;
    private String description;
    private int price;
    private String imgLink;
    private String quantity;
    private int idCategory;
    public Product() {
    }

    public Product(int id, String name, boolean avai, String description, int price, String imgLink, String quantity) {
        this.id = id;
        this.name = name;
        this.avai = avai;
        this.description = description;
        this.price = price;
        this.imgLink = imgLink;
        this.quantity = quantity;
    }

    public Product(int id, String name, boolean avai, String description, int price, String imgLink, int idCategory, String quantity) {
        this.id = id;
        this.name = name;
        this.avai = avai;
        this.description = description;
        this.price = price;
        this.imgLink = imgLink;
        this.quantity = quantity;
        this.idCategory = idCategory;
    }
    

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public boolean isAvai() {
        return avai;
    }

    public void setAvai(boolean avai) {
        this.avai = avai;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getImgLink() {
        return imgLink;
    }

    public void setImgLink(String imgLink) {
        this.imgLink = imgLink;
    }

    public String getQuantity() {
        return quantity;
    }

    public void setQuantity(String quantity) {
        this.quantity = quantity;
    }

    public int getIdCategory() {
        return idCategory;
    }

    public void setIdCategory(int idCategory) {
        this.idCategory = idCategory;
    }

    @Override
    public String toString() {
        return "Product{" + "id=" + id + ", name=" + name + ", avai=" + avai + ", description=" + description + ", price=" + price + ", imgLink=" + imgLink + '}';
    }
    
    
}
