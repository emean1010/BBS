package kybmig.ssm.model;

import kybmig.ssm.Utility;

public class UserModel extends BaseModel {
    private Integer id;
    private String username;
    private String password;
    private String avatar;
    private String signature;
    private String mail;
    private UserRole role;
    private Integer createdTime;
    private Integer updatedTime;

    public String getAvatar() {
        if (avatar == null) {
            return Utility.imagePath("default.jpg");
        }
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public Integer getCreatedTime() {
        return createdTime;
    }

    public void setCreatedTime(Integer createdTime) {
        this.createdTime = createdTime;
    }

    public String getCreatedTimeFormat() {
        return Utility.timeFromUnix(createdTime);
    }

    public Integer getUpdatedTime() {
        return updatedTime;
    }

    public void setUpdatedTime(Integer updatedTime) {
        this.updatedTime = updatedTime;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getSignature() {
        if (signature == null) {
            return "这家伙很懒，什么个性签名都没有留下。";
        }
        return signature;
    }

    public void setSignature(String signature) {
        this.signature = signature;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public UserRole getRole() {
        return role;
    }

    public void setRole(UserRole role) {
        this.role = role;
    }
}
