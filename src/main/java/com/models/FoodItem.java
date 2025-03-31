package com.models;
import java.io.*;
import java.util.*;

class FoodItem {
    int id;
    String name;
    double price;

    public FoodItem(int id, String name, double price) {
        this.id = id;
        this.name = name;
        this.price = price;
    }

    @Override
    public String toString() {
        return id + "," + name + "," + price;
    }
}
