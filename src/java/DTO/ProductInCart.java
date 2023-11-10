/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DTO;

/**
 *
 * @author user
 */
public class ProductInCart {

    private int cartID;
    private int quantity;
    private double price;
    private int product_id;
    private String image;
    private String name;
    private String size;
    private String color;

    private int profile_id;

    public ProductInCart() {
    }

    public ProductInCart(int cartID, int quantity, double price, int product_id, String image, String name, String size, String color, int profile_id) {
        this.cartID = cartID;
        this.quantity = quantity;
        this.price = price;
        this.product_id = product_id;
        this.image = image;
        this.name = name;
        this.size = size;
        this.color = color;
        this.profile_id = profile_id;
    }

    public int getCartID() {
        return cartID;
    }

    public void setCartID(int cartID) {
        this.cartID = cartID;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getProduct_id() {
        return product_id;
    }

    public void setProduct_id(int product_id) {
        this.product_id = product_id;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public int getProfile_id() {
        return profile_id;
    }

    public void setProfile_id(int profile_id) {
        this.profile_id = profile_id;
    }

   
    
    
}
