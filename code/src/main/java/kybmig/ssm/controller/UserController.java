package kybmig.ssm.controller;

import kybmig.ssm.Utility;
import kybmig.ssm.model.TopicModel;
import kybmig.ssm.model.UserModel;
import kybmig.ssm.service.TopicService;
import kybmig.ssm.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;

@Controller
public class UserController {

    private UserService userService;
    private TopicService topicService;

    public UserController(UserService service, TopicService topicService) {
        this.userService = service;
        this.topicService = topicService;
    }

    @GetMapping("/logout")
    public ModelAndView logout(HttpServletRequest request) {
        HttpSession session = request.getSession();
        session.removeAttribute("user_id");
        ModelAndView mv = new ModelAndView("redirect:/");
        return mv;
    }

    @GetMapping("/user/setting")
    public ModelAndView setting(HttpServletRequest request) {
        UserModel current = userService.currentUser(request);
        ModelAndView m = new ModelAndView("user/setting");
        m.addObject("current", current);
        return m;
    }

    @PostMapping("/user/update")
    public ModelAndView update(String username, String signature, String mail, HttpServletRequest request) {
        UserModel current = userService.currentUser(request);

        if (username == null) {
            username = current.getUsername();
        }
        userService.update(current, username, signature, mail);

        ModelAndView mv = new ModelAndView("redirect:/user/setting");
        return mv;
    }

    @PostMapping("/user/updatePW")
    public ModelAndView updatePW(String old, String password, HttpServletRequest request) {
        UserModel current = userService.currentUser(request);

        ModelAndView m = new ModelAndView("user/setting");
        m.addObject("current", current);
        if (password == null) {
            m.addObject("msgError", "密码不能为空");
        } else if (!current.getPassword().equals(old)) {
            m.addObject("msgError", "旧密码错误");
        } else {
            m.addObject("msgOk", "修改成功");
            userService.updatePassWord(current, password);
        }

        return m;
    }

    @PostMapping("/user/avatar/upload")
    @ResponseBody
    public ModelAndView avatarUpload(@RequestParam("file") MultipartFile file, HttpServletRequest request) {
        UserModel current = userService.currentUser(request);

        ModelAndView m = new ModelAndView("user/setting");
        m.addObject("current", current);
        if (file.isEmpty()) {
            m.addObject("resultError", "文件为空");
            return m;
        } else {
            String dir = "/var/lib/tomcat9/webapps/static/images";
            String filename = file.getOriginalFilename();
            String path = String.format("%s/%s", dir, filename);
            String filepath = Utility.imagePath(filename);
            Utility.log("path %s", path);
            try(FileOutputStream os = new FileOutputStream(path)) {
                // Get the file and save it somewhere
                byte[] bytes = file.getBytes();
                os.write(bytes);;
                userService.updateAvatar(current, filepath);
                m.addObject("resultOk", "上传成功");
                return m;
            } catch (IOException e) {
                e.printStackTrace();
                String result = String.format("上传失败 path:[%s] filepath[%s]", path, filepath);
                m.addObject("resultError", result);
                return m;
            }
        }
    }

    @GetMapping("/user/index/{username}")
    public ModelAndView userIndex(@PathVariable String username) {
        UserModel user = userService.findByUsername(username);
        Utility.log("topic index username %s", username);

        Integer userId = user.getId();
        ArrayList<TopicModel> topics = topicService.allByCreator(userId);
        ArrayList<TopicModel> topicComments = topicService.allByCommentCreator(userId);
        Utility.log("topics create: %s", topics);
        Utility.log("topics comment: %s", topicComments);
        ModelAndView m = new ModelAndView("topic/index");
        m.addObject("user", user);
        m.addObject("topics", topics);
        m.addObject("topicComments", topicComments);
        return m;
    }
}
