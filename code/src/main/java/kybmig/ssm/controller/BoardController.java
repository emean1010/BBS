package kybmig.ssm.controller;

import kybmig.ssm.Utility;
import kybmig.ssm.model.BoardModel;
import kybmig.ssm.service.BoardService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;

@Controller
@RequestMapping("/board")
public class BoardController {
    private BoardService service;

    public BoardController(BoardService service) {
        this.service = service;
    }

    @GetMapping("/")
    public ModelAndView boardView() {
        ArrayList<BoardModel> boards = service.all();
        ModelAndView m = new ModelAndView("topic/board");
        m.addObject("boards", boards);
        return m;
    }

    @PostMapping("/add")
    public ModelAndView addBoard(String name) {
        service.add(name);
        ModelAndView mv = new ModelAndView("redirect:/board/");
        return mv;
    }

}
