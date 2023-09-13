/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author ADMIN
 */
public class CategoryDTO {

    private int idC;
    private String nameC;

    public int getIdC() {
        return idC;
    }

    public void setIdC(int idC) {
        this.idC = idC;
    }

    public String getNameC() {
        return nameC;
    }

    public void setNameC(String nameC) {
        this.nameC = nameC;
    }

  
    @Override
    public String toString() {
        return "CategoryDTO{" + "idC=" + idC + ", nameC=" + nameC + '}';
    }

    public CategoryDTO(int idC, String nameC) {
        this.idC = idC;
        this.nameC = nameC;
    }

    public CategoryDTO() {
    }

}
