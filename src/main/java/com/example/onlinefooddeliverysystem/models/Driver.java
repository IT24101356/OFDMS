package com.example.onlinefooddeliverysystem.models;

public class Driver {
    protected int ID;
    protected String name;
    protected int age;

    //default constructer
    public Driver() {
    }
//    parmaeterized constrcuter

    public Driver(int ID, String name, int age) {
        this.ID = ID;
        this.name = name;
        this.age = age;
    }

//    implmenting the getters

    public int getID() {
        return ID;
    }

    public String getName() {
        return name;
    }

    public int getAge() {
        return age;
    }

//    implemnting the setters


    public void setID(int ID) {
        this.ID = ID;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setAge(int age) {
        this.age = age;
    }
//    implementing get details method
    public String getDetails(){
        return ID+","+name+","+age;
    }
}
