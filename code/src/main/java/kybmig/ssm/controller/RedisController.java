package kybmig.ssm.controller;


import kybmig.ssm.model.TodoModel;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;

@Controller
public class RedisController {
    private RedisTemplate<String, String> templateNormal;
    private HashMap<Integer, String> localRedis = new HashMap<>();

    private RedisTemplate<Integer, TodoModel> templateTodo;

    public RedisController(RedisTemplate<String, String> template, RedisTemplate<Integer, TodoModel> templateTodo) {
        this.templateNormal = template;
        this.templateTodo = templateTodo;
    }

    @GetMapping("/redis/index")
    public ModelAndView index() {
//        TodoModel m = new TodoModel();
//        m.setId(1);
//        m.setContent("testredis");
//        templateTodo.opsForValue().set(1, m);
//
//        TodoModel todoFromRedis = templateTodo.opsForValue().get(1);
//        Utility.log("todo redis: %s", todoFromRedis);

        var value = templateNormal.opsForValue().get("testkey");
        // String value = localredis.get("testkey");
        if (value == null) {
            value = "redis 中没有 testkey 的值";
        }
        var mv = new ModelAndView("redis/index");
        mv.addObject("key", value);
        return mv;
    }

    @GetMapping("/redis/set")
    public ModelAndView set(String value) {
        templateNormal.opsForValue().set("testkey", value);

        templateNormal.convertAndSend("messageQueue", value);

        return new ModelAndView("redirect:/redis/index");
    }

}
