/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author user
 */
public class Cart {
    private int id;
    private int quantity;
    private int product_variant_id;
    private int profile_id;

    public Cart() {
    }

    public Cart(int id, int quantity, int product_variant_id, int profile_id) {
        this.id = id;
        this.quantity = quantity;
        this.product_variant_id = product_variant_id;
        this.profile_id = profile_id;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getProduct_variant_id() {
        return product_variant_id;
    }

    public void setProduct_variant_id(int product_variant_id) {
        this.product_variant_id = product_variant_id;
    }

    public int getProfile_id() {
        return profile_id;
    }

    public void setProfile_id(int profile_id) {
        this.profile_id = profile_id;
    }

    
    
    
}
