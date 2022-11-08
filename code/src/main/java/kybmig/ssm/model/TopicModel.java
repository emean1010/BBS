package kybmig.ssm.model;

import java.util.ArrayList;

import kybmig.ssm.Utility;
import kybmig.ssm.model.TopicCommentModel;

public class TopicModel extends BaseModel {
    private Integer id;
    private String content;
    private String title;
    private Integer userId;
    private Integer boardId;
    private Integer createdTime;
    private Integer updatedTime;

    public Integer getBoardId() {
        return boardId;
    }

    public void setBoardId(Integer boardId) {
        this.boardId = boardId;
    }

    public Integer getCreatedTime() {
        return createdTime;
    }

    public String getCreatedTimeFormat() {
        return Utility.timeFromUnix(createdTime);
    }

    public void setCreatedTime(Integer createdTime) {
        this.createdTime = createdTime;
    }

    public Integer getUpdatedTime() {
        return updatedTime;
    }

    public void setUpdatedTime(Integer updatedTime) {
        this.updatedTime = updatedTime;
    }

    private ArrayList<TopicCommentModel> comments;

    public ArrayList<TopicCommentModel> getComments() {
        return comments;
    }

    public void setComments(ArrayList<TopicCommentModel> comments) {
        this.comments = comments;
    }

    private TopicCommentModel lastComment;

    public TopicCommentModel getLastComment() {
        return lastComment;
    }

    public void setLastComment(TopicCommentModel lastComment) {
        this.lastComment = lastComment;
    }

    private Integer commentCount;

    public Integer getCommentCount() {
        return commentCount;
    }

    public void setCommentCount(Integer commentCount) {
        this.commentCount = commentCount;
    }

    private UserModel user;

    public UserModel getUser() {
        return user;
    }

    public void setUser(UserModel user) {
        this.user = user;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }
}
