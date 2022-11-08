package kybmig.ssm.service;


import kybmig.ssm.Utility;
import kybmig.ssm.mapper.TopicMapper;
import kybmig.ssm.model.TopicModel;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

@Service
public class TopicService {
    TopicMapper mapper;

    public TopicService(TopicMapper mapper) {
        this.mapper = mapper;
    }

    public TopicModel add(String title, String content, Integer userId, Integer boardId) {
        TopicModel m = new TopicModel();
        m.setContent(content);
        m.setUserId(userId);
        m.setTitle(title);
        m.setBoardId(boardId);

        Integer curTime = Utility.currentTime();
        m.setCreatedTime(curTime);
        m.setUpdatedTime(curTime);

        mapper.insert(m);
        return m;

    }

    public void update(TopicModel m, String title, String content) {
        m.setContent(content);
        m.setTitle(title);

        Integer curTime = Utility.currentTime();
        m.setUpdatedTime(curTime);

        mapper.update(m);
    }

    public void deleteById(Integer id) {
        mapper.delete(id);
    }
    
    public  TopicModel findById(Integer id) {
        return mapper.selectOne(id);
    }

    public ArrayList<TopicModel> findByBoardId(Integer boardId) {
        return mapper.selectAllByBoardId(boardId);
    }

    public  TopicModel findByIdWithComments(Integer id) {
        return mapper.selectOneWithComments(id);
    }

    public  TopicModel findByIdWithCommentsAndUser(Integer id) {
        return mapper.selectOneWithCommentsAndUser(id);
    }
    
    public  ArrayList<TopicModel> all() {
        return mapper.selectAll();
    }

    public  ArrayList<TopicModel> allByCreator(Integer userId) {
        return mapper.selectAllByCreator(userId);
    }

    public  ArrayList<TopicModel> allByCommentCreator(Integer userId) {
        return mapper.selectAllByCommentCreator(userId);
    }

}
