package com.hellokoding.springboot.controller;

import com.hellokoding.springboot.model.User;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;


@RestController
public class UserController {

    @GetMapping("/users")
    public List<User> index() {
        return User.store;
    }

    @GetMapping("/user/{id}")
    public User show(@PathVariable String id) {
        int userID = Integer.parseInt(id);
        return User.findOne(userID);
    }

    @PostMapping("/user")
    public User create(@RequestBody Map<String, String> body) {
        String login = body.get("login");
        String pass = body.get("password");

        User user = User.isExist(login, pass);
        if (user != null) {
            return user;
        }
        user = new User();
        user.login = login;
        user.password = pass;
        user.pointSum = 0;
        user.role = Integer.parseInt(body.get("role"));

        return User.save(user);
    }

    @PostMapping(value = "/login", consumes = "application/json")
    public User login(@RequestBody Map<String, String> body) {
        String login = body.get("login");
        String pass = body.get("password");
        User user = User.isExist(login, pass);
        if (user != null) {
            return user;
        }
        user = new User();
        user.login = login;
        user.password = pass;
        user.pointSum = 0;

        return User.save(user);
    }

    @PutMapping("/user/{id}")
    public User update(@PathVariable String id, @RequestBody Map<String, String> body) {
        int userID = Integer.parseInt(id);
        // getting blog
        User user = User.findOne(userID);
        user.categoryID = Integer.parseInt(body.get("categoryID"));
        user.classID = Integer.parseInt(body.get("classID"));
        user.classLevel = Integer.parseInt(body.get("classLevel"));
        return User.save(user);
    }
}