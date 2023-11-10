/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DTO;

/**
 *
 * @author user
 */
public class ProductDTO {
    private int id;
    private int quantity;
    private int sold;
    private double price;
    private String description;
    private String image;
    private String name;
    private boolean gender;
    private boolean season;
    private int category_id;
    private String category_name;
    private String description_summary;

    public ProductDTO() {
    }

    
    public ProductDTO(int id, int quantity, int sold, double price, String description, String image, String name, boolean gender, boolean season, int category_id, String category_name, String description_summary) {
        this.id = id;
        this.quantity = quantity;
        this.sold = sold;
        this.price = price;
        this.description = description;
        this.image = image;
        this.name = name;
        this.gender = gender;
        this.season = season;
        this.category_id = category_id;
        this.category_name = category_name;
        this.description_summary = description_summary;
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

    public int getSold() {
        return sold;
    }

    public void setSold(int sold) {
        this.sold = sold;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
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

    public boolean isGender() {
        return gender;
    }

    public void setGender(boolean gender) {
        this.gender = gender;
    }

    public boolean isSeason() {
        return season;
    }

    public void setSeason(boolean season) {
        this.season = season;
    }

    public int getCategory_id() {
        return category_id;
    }

    public void setCategory_id(int category_id) {
        this.category_id = category_id;
    }

    public String getCategory_name() {
        return category_name;
    }

    public void setCategory_name(String category_name) {
        this.category_name = category_name;
    }

    public String getDescription_summary() {
        return description_summary;
    }

    public void setDescription_summary(String description_summary) {
        this.description_summary = description_summary;
    }

    @Override
    public String toString() {
        return "ProductDTO{" + "id=" + id + ", quantity=" + quantity + ", sold=" + sold + ", price=" + price + ", image=" + image + ", name=" + name + ", gender=" + gender + ", season=" + season + ", category_id=" + category_id + ", category_name=" + category_name  + '}';
    }
    
    
}
