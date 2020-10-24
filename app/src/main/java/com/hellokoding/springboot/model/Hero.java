package com.hellokoding.springboot.model;

import java.util.ArrayList;
import java.util.List;

public class Hero {
    public static List<Hero> store = new ArrayList<Hero>();

    public int id;
    public int userID;
    public String name;

    public Hero findOne(int id) {
        for (Hero hero: Hero.store) {
            if (hero.id == id) {
                return hero;
            }
        }
        return null;
    }
}
