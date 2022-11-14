package kybmig.ssm.controller;

import kybmig.ssm.model.TodoModel;
import kybmig.ssm.service.TodoService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;


@Controller
@RequestMapping("/sz")
public class SZController {
    TodoService todoService;

    public SZController(TodoService todoService) {
        this.todoService = todoService;
    }

    @GetMapping("")
    public ModelAndView szView() {
        ModelAndView m = new ModelAndView("health/index");
        return m;
    }

    @GetMapping("/de")
    public ModelAndView detailView() {
        ModelAndView m = new ModelAndView("health/detail");
        return m;
    }

    @GetMapping("/ch")
    public ModelAndView checkinView() {
        ArrayList<TodoModel> todos = todoService.all();
        ArrayList<String> contents = new ArrayList<String>();
        for (TodoModel todo : todos) {
            contents.add(todo.getContent());
        }
        ModelAndView m = new ModelAndView("health/checkin");
        m.addObject("places", contents);
        return m;
    }

    @GetMapping("/trip-card")
    public ModelAndView tripView() {
        ModelAndView m = new ModelAndView("health/trip-card");
        return m;
    }
}
