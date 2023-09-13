/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author ADMIN
 */
public class ProductDTO {

 

    public int idP;
    private String nameProduct;
    private String imgProduct;
    private double priceProduct;
    private String tiltleProduct;
    private String descriptionProduct;
    private int idC;
    private int quantity ;

    public ProductDTO(int idP, String nameProduct, double priceProduct) {
        this.idP = idP;
        this.nameProduct = nameProduct;
        this.priceProduct = priceProduct;
    }

    public ProductDTO(int idP, String nameProduct, String imgProduct, double priceProduct, String tiltleProduct, String descriptionProduct, int idC, int quantity) {
        this.idP = idP;
        this.nameProduct = nameProduct;
        this.imgProduct = imgProduct;
        this.priceProduct = priceProduct;
        this.tiltleProduct = tiltleProduct;
        this.descriptionProduct = descriptionProduct;
        this.idC = idC;
        this.quantity = quantity;
    }

    public ProductDTO() {
    }

    public int getIdP() {
        return idP;
    }

    public void setIdP(int idP) {
        this.idP = idP;
    }

    public String getNameProduct() {
        return nameProduct;
    }

    public void setNameProduct(String nameProduct) {
        this.nameProduct = nameProduct;
    }

    public String getImgProduct() {
        return imgProduct;
    }

    public void setImgProduct(String imgProduct) {
        this.imgProduct = imgProduct;
    }

    public double getPriceProduct() {
        return priceProduct;
    }

    public void setPriceProduct(double priceProduct) {
        this.priceProduct = priceProduct;
    }

    public String getTiltleProduct() {
        return tiltleProduct;
    }

    public void setTiltleProduct(String tiltleProduct) {
        this.tiltleProduct = tiltleProduct;
    }

    public String getDescriptionProduct() {
        return descriptionProduct;
    }

    public void setDescriptionProduct(String descriptionProduct) {
        this.descriptionProduct = descriptionProduct;
    }

    public int getIdC() {
        return idC;
    }

    public void setIdC(int idC) {
        this.idC = idC;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

}
