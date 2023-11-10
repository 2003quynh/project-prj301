/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author user
 */
public class Order {

    private int id;
    private int customer_id;
    private String order_date;
    private String shipped_date;
    private double total_money;
    private int status;
    private String name;
    private String address;
    private String phone;
    private String note;
    private int delivery_id;

    public Order() {
    }

    public Order(int id, int customer_id, String order_date, String shipped_date, double total_money, int status, String name, String address, String phone, String note, int delivery_id) {
        this.id = id;
        this.customer_id = customer_id;
        this.order_date = order_date;
        this.shipped_date = shipped_date;
        this.total_money = total_money;
        this.status = status;
        this.name = name;
        this.address = address;
        this.phone = phone;
        this.note = note;
        this.delivery_id = delivery_id;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getCustomer_id() {
        return customer_id;
    }

    public void setCustomer_id(int customer_id) {
        this.customer_id = customer_id;
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

    public String getStatusName(int status) {
        if (status == 0) {
            return "Đang xử lý";
        } else if (status == 2) {
            return "Đang giao hàng";
        } else {
            return "Đã nhận hàng";
        }
    }
}
