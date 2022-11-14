package kybmig.ssm.controller;

import kybmig.ssm.Utility;
import kybmig.ssm.model.BoardModel;
import kybmig.ssm.model.TopicModel;
import kybmig.ssm.model.UserModel;
import kybmig.ssm.service.BoardService;
import kybmig.ssm.service.TopicService;
import kybmig.ssm.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.HashMap;

@Controller
@RequestMapping("/topic")
public class TopicController {
    static HashMap<Integer, String> tokenMap = new HashMap<>();

    private TopicService service;
    private UserService userService;
    private BoardService boardService;

    public TopicController(TopicService service, UserService userService, BoardService boardService) {
        this.service = service;
        this.userService = userService;
        this.boardService = boardService;
    }

    @GetMapping("/new")
    public ModelAndView newTopic(HttpServletRequest request) {
        UserModel current = userService.currentUser(request);
        ArrayList<BoardModel> boards = boardService.allReal();
        ModelAndView mv = new ModelAndView("topic/add");
        mv.addObject("current", current);
        mv.addObject("boards", boards);
        return mv;
    }

    @PostMapping("/add")
    public ModelAndView add(String title, String content, Integer boardId, HttpServletRequest request) {
        UserModel current = userService.currentUser(request);
        TopicModel topic = service.add(title, content ,current.getId(), boardId);
        ModelAndView mv = new ModelAndView(String.format("redirect:/?boardId=%s", boardId));
        return mv;
    }

    @GetMapping("/edit")
    public ModelAndView edit(int id, HttpServletRequest request) {
        UserModel current = userService.currentUser(request);
        TopicModel topic = service.findById(id);
        ModelAndView m = new ModelAndView("topic/edit");
        m.addObject("current", current);
        m.addObject("topic", topic);
        return m;
    }

    @PostMapping("/update")
    public ModelAndView update(int id, String title, String content) {
        TopicModel topic = service.findById(id);
        service.update(topic, title, content);
        ModelAndView mv = new ModelAndView(String.format("redirect:/topic/detail/%s", id));
        return mv;
    }

    @GetMapping("/detail/{id}")
    public ModelAndView detailView(@PathVariable Integer id, HttpServletRequest request) {
        UserModel current = userService.currentUser(request);
        TopicModel topicModel = service.findByIdWithCommentsAndUser(id);
        UserModel user = userService.findById(topicModel.getUserId());
        Utility.log("topicModel: %s", topicModel);
        ModelAndView mv = new ModelAndView("topic/detail");
        Utility.log("comments: %s", topicModel.getComments());
        mv.addObject("current", current);
        mv.addObject("user", user);
        mv.addObject("topic", topicModel);
        return mv;
    }

    @GetMapping("/delete")
    public ModelAndView deleteMapper(int id, HttpServletRequest request) {
        UserModel current = userService.currentUser(request);

        service.deleteById(id);
        ModelAndView mv = new ModelAndView(String.format("redirect:/user/index/%s", current.getUsername()));
        return mv;
    }
}
