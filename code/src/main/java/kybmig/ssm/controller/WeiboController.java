package kybmig.ssm.controller;

import kybmig.ssm.Utility;
import kybmig.ssm.model.TodoModel;
import kybmig.ssm.model.WeiboModel;
import kybmig.ssm.service.TodoService;
import kybmig.ssm.service.WeiboService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;

@Controller
public class WeiboController {

    private WeiboService weiboService;

    public WeiboController(WeiboService todoService) {
        this.weiboService = todoService;
    }


//    @PostMapping("/todo/add")
//    public String add(String content) {
//        TodoModel todo = todoService.add(content);
//        Utility.log("todo add id %s", todo.getId());
//        return "redirect:/todo";
//    }

    @PostMapping("/weibo/add")
    public ModelAndView add(String content) {
        WeiboModel weibo = weiboService.add(content);
        Utility.log("weibo %s", weibo);
        ModelAndView mv = new ModelAndView("redirect:/weibo");
        return mv;
    }

//    @GetMapping("/todo/delete")
//    public String deleteMapper(int id) {
//        todoService.deleteById(id);
//        return "redirect:/todo";
//    }
//
//
//    @GetMapping("/todo/edit")
//    public ModelAndView edit(int id) {
//        TodoModel todo = todoService.findById(id);
//
//        ModelAndView m = new ModelAndView("todo_edit");
//        m.addObject("todo", todo);
//        return m;
//    }
//
//    @PostMapping("/todo/update")
//    public String updateMapper(int id, String content) {
//        todoService.update(id, content);
//        return "redirect:/todo";
//    }

    @GetMapping("/weibo")
    public ModelAndView index() {
        ArrayList<WeiboModel> weibos = weiboService.all();
        ModelAndView m = new ModelAndView("weibo/index");
        m.addObject("weibos", weibos);
        return m;
    }
}
