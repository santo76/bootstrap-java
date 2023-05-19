package com.kata;

import com.kata.Element;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;

public class GiveProperName {
    public static void main(String[] args) {
        System.out.println("Execute test!!");

        if (args.length > 0) {
          System.out.println("Received param is: "+args[0]);
        }


        Element[] elements = new Element[] { new Element("1 test item"),  new Element("2 test item") };
        for (Element element : elements) {
           System.out.println("Element: "+element);
        }

        String foo = "foo";
        assertEquals("bar", foo);
    }

}
