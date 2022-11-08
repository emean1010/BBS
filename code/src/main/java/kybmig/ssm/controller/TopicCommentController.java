package kybmig.ssm.controller;

import kybmig.ssm.Utility;
import kybmig.ssm.model.TopicCommentModel;
import kybmig.ssm.model.UserModel;
import kybmig.ssm.service.TopicCommentService;
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
@RequestMapping("/topic/comment")
public class TopicCommentController {
    static HashMap<Integer, String> tokenMap = new HashMap<>();

    private TopicCommentService service;
    private TopicService topicService;
    private UserService userService;

    public TopicCommentController(TopicCommentService service, TopicService topicService, UserService userService) {
        this.service = service;
        this.topicService = topicService;
        this.userService = userService;
    }

    @PostMapping("/add")
    public ModelAndView add(int topicId, String content, HttpServletRequest request) {
        UserModel current = userService.currentUser(request);
        TopicCommentModel comment = service.add(content, current.getId(), topicId);
        ModelAndView mv = new ModelAndView(String.format("redirect:/topic/detail/%s", topicId));
        return mv;
    }

    @GetMapping("/edit")
    public ModelAndView edit(int id, HttpServletRequest request) {
        UserModel current = userService.currentUser(request);
        TopicCommentModel comment = service.findById(id);
        ModelAndView m = new ModelAndView("topic/comment_edit");
        m.addObject("current", current);
        m.addObject("comment", comment);
        return m;
    }

    @PostMapping("/update")
    public ModelAndView update(int id, String content) {
        service.update(id, content);
        TopicCommentModel comment = service.findById(id);
        ModelAndView mv = new ModelAndView(String.format("redirect:/topic/detail/%s", comment.getTopicId()));
        return mv;
    }

    @GetMapping("/delete")
    public ModelAndView delete(int id) {
        TopicCommentModel comment = service.findById(id);
        int topicId = comment.getTopicId();

        service.deleteById(id);
        ModelAndView mv = new ModelAndView(String.format("redirect:/topic/detail/%s", topicId));
        return mv;
    }
}