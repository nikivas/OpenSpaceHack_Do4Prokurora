package com.hellokoding.springboot.model;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

public class User {

    public static List<User> store = new ArrayList<>();

    public static int USER_ROLE = 1;
    public static int ADMIN_ROLE = 2;

    public int id;

    public String login;
    public String password;
    public int role;
    public int categoryID;
    public int classID;
    public int classLevel;
    public int pointSum;

    public static User findOne(int id) {
        for (User user : User.store) {
            if (user.id == id) {
                return user;
            }
        }
        return null;
    }

    public static User save(User user) {
        User.store.add(user);
        return user;
    }

    private boolean isExist(int id) {
        for (User u : User.store) {
            if (u.id == id) {
                return true;
            }
        }
        return false;
    }

    public static User isExist(String login, String pass) {
        List<User> users = User.store;
        for (User u : users) {
            if (u.login.equals(login) && u.password.equals(pass)) {
                return u;
            }
        }
        return null;
    }


}
