package com.hellokoding.springboot.controller;

import com.hellokoding.springboot.model.Bug;
import com.hellokoding.springboot.model.User;
import org.apache.tomcat.jni.Time;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

public class BugController {
    @GetMapping("/bugs")
    public List<Bug> index() {
        return Bug.store;
    }

    @PostMapping("/bug")
    public Bug create(@RequestBody Map<String, String> body) {
        Bug bug = new Bug();
        bug.userID = Integer.parseInt(body.get("userID"));
        bug.bagTypeID = Integer.parseInt(body.get("bugTypeID"));
        bug.date = (new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS").format(new Date()));;
        bug.OS = body.get("OS");
        bug.steps = body.get("steps");
        bug.screenshot = body.get("screenshot");
        bug.status = body.get("status");
        bug.points = Integer.parseInt(body.get("points"));
        bug.imageBase = body.get("imageBase");
        Bug.store.add(bug);
        return bug;
    }
}
