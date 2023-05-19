package com.kata;

public class Element {

    public String name;

    public Element(String name) {
        this.name = name;
    }

   @Override
   public String toString() {
        return this.name ;
    }
}