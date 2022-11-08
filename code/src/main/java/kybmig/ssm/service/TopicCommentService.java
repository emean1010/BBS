package kybmig.ssm.service;

import kybmig.ssm.mapper.CommentMapper;
import kybmig.ssm.model.TopicCommentModel;
import org.springframework.stereotype.Service;


@Service
public class TopicCommentService {
    CommentMapper mapper;

    public TopicCommentService(CommentMapper mapper) {
        this.mapper = mapper;
    }

    public TopicCommentModel add(String content, Integer userId, Integer topicId) {
        TopicCommentModel m = new TopicCommentModel();
        m.setContent(content);
        m.setUserId(userId);
        m.setTopicId(topicId);

//        在 TopicService add 函数里, 给 TopicModel 实例 设置 createdTime 和 updatedTime 的值
        Long unixTime = System.currentTimeMillis() / 1000L;
        int t = unixTime.intValue();
        m.setCreatedTime(t);
        m.setUpdatedTime(t);

        mapper.insert(m);
        return m;

    }

    public TopicCommentModel findById(Integer id) {
        return mapper.selectOne(id);
    }

    public void update(Integer id, String content) {
        TopicCommentModel m = new TopicCommentModel();
        m.setContent(content);
        m.setId(id);

//        在 TopicService update 函数里, 给 TopicModel 实例设置 updatedTime 的值
        Long unixTime = System.currentTimeMillis() / 1000L;
        int t = unixTime.intValue();
        m.setUpdatedTime(t);

        mapper.update(m);
    }

    public void deleteById(Integer id) {
        mapper.delete(id);
    }

}