package com.realaicy.product.jc.temp;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

/**
 * Created by realaicy on 16/8/28.
 */
public class Temp {
    public static void main(String[] args) {

        String ROOT = "smartadmin";
        Path start = Paths.get(ROOT);
        System.out.println(start.toAbsolutePath());
        System.out.println(start);

    }
}
