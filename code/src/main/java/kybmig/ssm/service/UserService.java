package kybmig.ssm.service;


import kybmig.ssm.Utility;
import kybmig.ssm.mapper.UserMapper;
import kybmig.ssm.model.UserModel;
import kybmig.ssm.model.UserRole;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;

@Service
public class UserService {
    UserMapper mapper;

    public UserService(UserMapper mapper) {
        this.mapper = mapper;
    }

    public UserModel add(String username, String password) {
        UserModel m = new UserModel();
        m.setUsername(username);
        m.setPassword(password);
        m.setRole(UserRole.normal);

        Integer curTime = Utility.currentTime();
        m.setCreatedTime(curTime);
        m.setUpdatedTime(curTime);

        mapper.insert(m);
        return m;

    }

    public void update(UserModel user, String username, String signature, String mail) {
        user.setUsername(username);
        user.setSignature(signature);
        user.setMail(mail);

        Integer curTime = Utility.currentTime();
        user.setUpdatedTime(curTime);

        mapper.update(user);
    }

    public void updatePassWord(UserModel user, String password) {
        user.setPassword(password);

        Integer curTime = Utility.currentTime();
        user.setUpdatedTime(curTime);

        mapper.update(user);
    }

    public void updateAvatar(UserModel user, String avatar) {
        user.setAvatar(avatar);

        Integer curTime = Utility.currentTime();
        user.setUpdatedTime(curTime);

        mapper.update(user);
    }

    public void deleteById(Integer id) {
        mapper.delete(id);
    }
    
    public  UserModel findById(Integer id) {
        return mapper.selectOne(id);
    }

    public  UserModel findByUsername(String username) {
        return mapper.selectOneByUsername(username);
    }

    public  UserModel findByMail(String mail) {
        return mapper.selectOneByMail(mail);
    }
    
    public  ArrayList<UserModel> all() {
        return mapper.selectAll();
    }

    public boolean validateLogin(String username, String password) {
        UserModel user = mapper.selectOneByUsername(username);
        if (user != null && user.getPassword().equals(password)) {
            return true;
        } else {
            return false;
        }
    }

    public UserModel guest() {
        UserModel user = new UserModel();
        user.setRole(UserRole.guest);
        user.setId(-1);
        user.setUsername("游客");
        user.setPassword("游客");
        return user;
    }

    public UserModel currentUser(HttpServletRequest request){
        HttpSession session = request.getSession();
        Integer id =  (Integer) session.getAttribute("user_id");
        if (id == null) {
            return this.guest();
        } else {
            UserModel user = mapper.selectOne(id);
            if (user == null) {
                return this.guest();
            }
            return user;
        }

    }

}
