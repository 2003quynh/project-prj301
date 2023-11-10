/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author user
 */
public class OrderDetail {
    private int id;
    private int quantity;
    private int order_id;
    private int product_variant_id;

    public OrderDetail() {
    }    

    public OrderDetail(int id, int quantity, int order_id, int product_variant_id) {
        this.id = id;
        this.quantity = quantity;
        this.order_id = order_id;
        this.product_variant_id = product_variant_id;
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

    public int getOrder_id() {
        return order_id;
    }

    public void setOrder_id(int order_id) {
        this.order_id = order_id;
    }

    public int getProduct_variant_id() {
        return product_variant_id;
    }

    public void setProduct_variant_id(int product_variant_id) {
        this.product_variant_id = product_variant_id;
    }
    
    
    
    
}
