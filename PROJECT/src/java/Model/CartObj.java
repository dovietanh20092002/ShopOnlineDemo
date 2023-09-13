/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author ADMIN
 */
public class CartObj implements Serializable {

    private String CustomerId;
    private Map<String, Integer> items;

    public CartObj(String CustomerId, Map<String, Integer> items) {
        this.CustomerId = CustomerId;
        this.items = items;
    }

    public CartObj() {
    }

    public String getCustomerId() {
        return CustomerId;
    }

    public void setCustomerId(String CustomerId) {
        this.CustomerId = CustomerId;
    }

    public Map<String, Integer> getItems() {
        return items;
    }

    public void setItems(Map<String, Integer> items) {
        this.items = items;
    }

    public void addItemToCart(String title) {
        if (items == null) {
            items = new HashMap<String, Integer>();
        }
        int quantity = 1;
        if (items.containsKey(title)) {
            quantity = items.get(title) + 1;
        }
        items.put(title, quantity);
    }

    public void removeItemFromCart(String title) {
        if (items.containsKey(title)) {
            items.remove(title);
        }
        if (items.size() == 0) {
            items = null;
        }
    }
}
