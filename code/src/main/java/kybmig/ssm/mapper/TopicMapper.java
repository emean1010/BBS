package kybmig.ssm.mapper;

import kybmig.ssm.model.TopicModel;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;

// 这个是 spring 用来在 controller 进行依赖注入的。
@Repository
// 这个是 mybaits spring boot 用来自动跟 xml 联系起来，并注入到 spring 的 session 里面。
@Mapper
public interface TopicMapper {
    void insert(TopicModel m);

    ArrayList<TopicModel> selectAll();

    TopicModel selectOne(int id);

    ArrayList<TopicModel> selectAllByBoardId(int boardId);

    void update(TopicModel m);

    void delete(int id);

    TopicModel selectOneWithComments(int id);

    TopicModel selectOneWithCommentsAndUser(int id);

    ArrayList<TopicModel> selectAllByCreator(int userId);
    
    ArrayList<TopicModel> selectAllByCommentCreator(int userId);
}
