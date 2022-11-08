package kybmig.ssm.mapper;

import kybmig.ssm.model.UserModel;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;

// 这个是 spring 用来在 controller 进行依赖注入的。
@Repository
// 这个是 mybaits spring boot 用来自动跟 xml 联系起来，并注入到 spring 的 session 里面。
@Mapper
public interface UserMapper {
    void insert(UserModel m);

    ArrayList<UserModel> selectAll();

    UserModel selectOne(int id);

    void update(UserModel m);

    void delete(int id);

    UserModel selectOneByUsername(String username);

    UserModel selectOneByMail(String mail);
}
