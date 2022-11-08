package kybmig.ssm.controller;

import kybmig.ssm.Utility;
import kybmig.ssm.model.BoardModel;
import kybmig.ssm.model.TopicModel;
import kybmig.ssm.model.UserModel;
import kybmig.ssm.service.BoardService;
import kybmig.ssm.service.TopicService;
import kybmig.ssm.service.UserService;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.UUID;
import java.util.concurrent.TimeUnit;


@Controller
public class PublicController {
    UserService userService;
    TopicService topicService;
    BoardService boardService;
    private AsyncTask mailer;
    private RedisTemplate<String, String> template;

    public PublicController(UserService userService, BoardService boardService, TopicService topicService, AsyncTask mailer, RedisTemplate<String, String> template) {
        this.userService = userService;
        this.topicService = topicService;
        this.boardService = boardService;
        this.mailer = mailer;
        this.template = template;
    }

    @GetMapping("/")
    public ModelAndView index(HttpServletRequest request) {
        UserModel current = userService.currentUser(request);

        Integer boardId = (Integer) request.getAttribute("boardId");
        ArrayList<TopicModel> topics;
        if (boardId == 0) {
            topics = topicService.all();
        } else {
            topics = topicService.findByBoardId(boardId);
        }
        ArrayList<BoardModel> boards = boardService.all();

        // model 说的是给模板引擎的 model
        // view 说的是模板名字，没有后缀
        // view 可以自动补全，也可以直接跳转
        ModelAndView mv = new ModelAndView("index");
        mv.addObject("boardId", boardId);
        mv.addObject("topics", topics);
        mv.addObject("boards", boards);
        mv.addObject("current", current);
        return mv;
    }

    @GetMapping("/register")
    public ModelAndView registerView() {
        ModelAndView m = new ModelAndView("user/register");
        return m;
    }

    @GetMapping("/login")
    public ModelAndView loginView() {
        ModelAndView mv = new ModelAndView("user/login");
        return mv;
    }

    @PostMapping("/user/login")
    public ModelAndView login(String username, String password, HttpServletRequest request) {
        if (userService.validateLogin(username, password)) {
            HttpSession session = request.getSession();
            UserModel current = userService.findByUsername(username);
            session.setAttribute("user_id", current.getId());

            ModelAndView mv = new ModelAndView("redirect:/");
            return mv;
        } else {
            ModelAndView mv = new ModelAndView("redirect:/login");
            return mv;
        }

    }

    @GetMapping("/reset")
    public ModelAndView resetPasswordView() {
        ModelAndView mv = new ModelAndView("user/reset");
        return mv;
    }

    @PostMapping("/reset/send")
    @ResponseBody
    public String sendResetMail(String address) {
        Utility.log("异步发送重置密码邮件:%s", address);

        if (address != null) {
            UserModel user = userService.findByMail(address);
            if (user == null) {
                return "邮箱未注册";
            }
            String title = "[Java 社区] 重置密码邮件";
            String token = UUID.randomUUID().toString();
            Utility.log("异步发送之前 userid: %s, token: %s", user.getId().toString(), token);
            template.opsForValue().set(user.getId().toString(), token, 60, TimeUnit.SECONDS);
            String content = String.format("点击链接重置密码，有效期60秒。\n http://119.91.150.17/reset/edit?userId=%s&token=%s", user.getId(), token);
            this.mailer.sendMail(address, title, content);
            Utility.log("异步发送结束 token:%s", token);
            return "发送成功";
        }

        return "发送失败";
    }

    @GetMapping("/reset/edit")
    public ModelAndView editPasswordView(Integer userId, String token) {
        Utility.log("重置密码 userId:%s token:%s", userId, token);
        UserModel user = userService.findById(userId);
        String t = template.opsForValue().get(user.getId().toString());

        if (t != null && t.equals(token)) {
            String newToken = UUID.randomUUID().toString();
            template.opsForValue().set(user.getId().toString(), newToken, 60, TimeUnit.SECONDS);
            ModelAndView mv = new ModelAndView("user/reset_pw");
            mv.addObject("userId", user.getId());
            mv.addObject("token", newToken);
            return mv;
        } else {
            ModelAndView mv = new ModelAndView("redirect:/");
            return mv;
        }
    }

    @PostMapping("/reset/update")
    public ModelAndView updatePasswordView(Integer userId, String token, String password) {
        UserModel user = userService.findById(userId);
        String t = template.opsForValue().get(user.getId().toString());

        if (t != null && t.equals(token)) {
            userService.updatePassWord(user, password);
        }
        Utility.log("密码修改失败 t:%s, token:%s, user: %s", t, token, user);

        ModelAndView mv = new ModelAndView("redirect:/");
        return mv;
    }

    @PostMapping("/user/add")
    public ModelAndView add(String username, String password, HttpServletRequest request) {
        userService.add(username, password);

        HttpSession session = request.getSession();
        UserModel current = userService.findByUsername(username);
        session.setAttribute("user_id", current.getId());

        ModelAndView mv = new ModelAndView("redirect:/");
        return mv;
    }

    @GetMapping("/sz")
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
        ModelAndView m = new ModelAndView("health/checkin");
        return m;
    }

    @GetMapping("/trip-card")
    public ModelAndView tripView() {
        ModelAndView m = new ModelAndView("health/trip-card");
        return m;
    }
}
