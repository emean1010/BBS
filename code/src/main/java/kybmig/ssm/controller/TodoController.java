package kybmig.ssm.controller;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import kybmig.ssm.Utility;
import kybmig.ssm.mapper.TodoMapper;
import kybmig.ssm.model.TodoModel;
import kybmig.ssm.service.TodoService;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;

@Controller
public class TodoController {

    private TodoService todoService;

    public TodoController(TodoService todoService) {
        this.todoService = todoService;
    }


//    @PostMapping("/todo/add")
//    public String add(String content) {
//        TodoModel todo = todoService.add(content);
//        Utility.log("todo add id %s", todo.getId());
//        return "redirect:/todo";
//    }

    @PostMapping("/todo/add")
    public ModelAndView add(String content) {
        TodoModel todo = todoService.add(content);
//        TodoModel todo = todoService.addBySQL(content);
        Utility.log("todo add id %s", todo.getId());
        ModelAndView mv = new ModelAndView("redirect:/todo");
        return mv;
    }

    @GetMapping("/todo/delete")
    public String deleteMapper(int id) {
        todoService.deleteById(id);
//        todoService.deleteByIdBySQL(id);
        return "redirect:/todo";
    }


    @GetMapping("/todo/edit")
    public ModelAndView edit(int id) {
        TodoModel todo = todoService.findById(id);
//        TodoModel todo = todoService.findByIdBySQL(id);
        ModelAndView m = new ModelAndView("todo_edit");
        m.addObject("todo", todo);
        return m;
    }

    @PostMapping("/todo/update")
    public String updateMapper(int id, String content) {
        todoService.update(id, content);
//        todoService.updateBySQL(id, content);
        return "redirect:/todo";
    }

    @GetMapping("/todo")
    public ModelAndView index() {
        Utility.log("index start");
        ArrayList<TodoModel> todos = todoService.all();
//        ArrayList<TodoModel> todos = todoService.allBySQL();
        ModelAndView m = new ModelAndView("todo_index");
        m.addObject("todos", todos);
        Utility.log("index end");
        return m;
    }

    @GetMapping("/ajax/todo")
    public ModelAndView ajaxTodoView() {
        ModelAndView m = new ModelAndView("ajax_todo");
        return m;
    }

    @PostMapping("/ajax/todo/all")
    @ResponseBody
    public String ajaxTodoAll(@RequestBody String jsonString) {
        Utility.log("jsonString %s", jsonString);
        Utility.log("jsonString %s", jsonString.getClass());

        JSONObject object = JSON.parseObject(jsonString);
        String content = object.getString("data");
        Utility.log("json: %s", content);

        ArrayList<TodoModel> all = todoService.all();
        String json = JSON.toJSONString(all);

       return json;
    }

    @GetMapping("/trans")
    @Transactional
    public ModelAndView trans() {
        TodoModel t = todoService.add("1111");
        TodoModel t2 = todoService.add("1111");
        if (!t.getId().equals(1)) {
            throw new RuntimeException("eee");
        }
        ModelAndView mv = new ModelAndView("redirect:/todo");
        return mv;
    }
}
