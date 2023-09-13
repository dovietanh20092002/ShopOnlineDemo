/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author ADMIN
 */
public class RegistrationDTO {

    private int uID;
    private String account;
    private String password;
    private String fullname;
    private String phone;
    private String address;
    private boolean roleID;
    private String id;
    private String email;
    private String name;

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public RegistrationDTO(int uID, String account, String password, String phone, 
            String address, boolean roleID, String id, String email, String name) {
        this.uID = uID;
        this.account = account;
        this.password = password;
        this.phone = phone;
        this.address = address;
        this.roleID = roleID;
        this.id = id;
        this.email = email;
        this.name = name;
    }



    public RegistrationDTO(String account, String password, String fullname, String phone, String address) {
        this.account = account;
        this.password = password;
        this.fullname = fullname;
        this.phone = phone;
        this.address = address;
    }

    public RegistrationDTO(String account, String password) {
        this.account = account;
        this.password = password;
    }

    public int getuID() {
        return uID;
    }

    public void setuID(int uID) {
        this.uID = uID;
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public boolean isRoleID() {
        return roleID;
    }

    public void setRoleID(boolean roleID) {
        this.roleID = roleID;
    }

    public RegistrationDTO(int uID, String account, String password, String fullname,
            String phone, String address, boolean roleID) {
        this.uID = uID;
        this.account = account;
        this.password = password;
        this.fullname = fullname;
        this.phone = phone;
        this.address = address;
        this.roleID = roleID;
    }

    public RegistrationDTO() {
    }

    @Override
    public String toString() {
        return "RegistrationDTO{" + "uID=" + uID + ", account=" + account + ", password=" + password + ", fullname=" + fullname + ", phone=" + phone + ", address=" + address + ", roleID=" + roleID + ", id=" + id + ", email=" + email + ", name=" + name + '}';
    }



}
