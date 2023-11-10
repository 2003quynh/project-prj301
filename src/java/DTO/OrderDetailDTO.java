/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DTO;

/**
 *
 * @author user
 */
public class OrderDetailDTO {
    private int order_id;
    private String order_date;
    private String shipped_date;
    private double total_money;
    private int status;
    private int customer_id;
    private String name;
    private String address;
    private String phone;
    private String note;
    private int delivery_id;
    private int order_detail_id;
    private int order_detail_quantity;
    private double price;
    private int product_variant_id;
    private String size;
    private int product_id;
    private String color;
    private String image;

    public OrderDetailDTO(int order_id, String order_date, String shipped_date, double total_money, int status, int customer_id, String name, String address, String phone, String note, int delivery_id, int order_detail_id, int order_detail_quantity, double price, int product_variant_id, String size, int product_id, String color, String image) {
        this.order_id = order_id;
        this.order_date = order_date;
        this.shipped_date = shipped_date;
        this.total_money = total_money;
        this.status = status;
        this.customer_id = customer_id;
        this.name = name;
        this.address = address;
        this.phone = phone;
        this.note = note;
        this.delivery_id = delivery_id;
        this.order_detail_id = order_detail_id;
        this.order_detail_quantity = order_detail_quantity;
        this.price = price;
        this.product_variant_id = product_variant_id;
        this.size = size;
        this.product_id = product_id;
        this.color = color;
        this.image = image;
    }

    public int getOrder_id() {
        return order_id;
    }

    public void setOrder_id(int order_id) {
        this.order_id = order_id;
    }

    public String getOrder_date() {
        return order_date;
    }

    public void setOrder_date(String order_date) {
        this.order_date = order_date;
    }

    public String getShipped_date() {
        return shipped_date;
    }

    public void setShipped_date(String shipped_date) {
        this.shipped_date = shipped_date;
    }

    public double getTotal_money() {
        return total_money;
    }

    public void setTotal_money(double total_money) {
        this.total_money = total_money;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public int getCustomer_id() {
        return customer_id;
    }

    public void setCustomer_id(int customer_id) {
        this.customer_id = customer_id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public int getDelivery_id() {
        return delivery_id;
    }

    public void setDelivery_id(int delivery_id) {
        this.delivery_id = delivery_id;
    }

    public int getOrder_detail_id() {
        return order_detail_id;
    }

    public void setOrder_detail_id(int order_detail_id) {
        this.order_detail_id = order_detail_id;
    }

    public int getOrder_detail_quantity() {
        return order_detail_quantity;
    }

    public void setOrder_detail_quantity(int order_detail_quantity) {
        this.order_detail_quantity = order_detail_quantity;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getProduct_variant_id() {
        return product_variant_id;
    }

    public void setProduct_variant_id(int product_variant_id) {
        this.product_variant_id = product_variant_id;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public int getProduct_id() {
        return product_id;
    }

    public void setProduct_id(int product_id) {
        this.product_id = product_id;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public OrderDetailDTO() {
    }

    
    
    
    
   
    
}
