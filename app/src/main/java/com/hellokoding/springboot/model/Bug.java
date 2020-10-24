package com.hellokoding.springboot.model;

import java.util.ArrayList;
import java.util.List;

public class Bug {

    public static List<Bug> store = new ArrayList<Bug>();

    public int id;
    public int userID;
    public int bagTypeID;
    public String date;
    public String OS;
    public String steps;
    public String screenshot;
    public String status;
    public int points;
    public String imageBase;

}
