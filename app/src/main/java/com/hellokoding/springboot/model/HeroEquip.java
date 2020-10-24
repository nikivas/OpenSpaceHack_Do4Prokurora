package com.hellokoding.springboot.model;

import java.util.ArrayList;
import java.util.List;

public class HeroEquip {
    public static List<HeroEquip> store = new ArrayList<HeroEquip>();

    public int id;
    public int heroID;
    public String name;

}
