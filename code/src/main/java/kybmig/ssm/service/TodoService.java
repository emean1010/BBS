package kybmig.ssm.service;


import com.mysql.cj.jdbc.MysqlDataSource;
import kybmig.ssm.Utility;
import kybmig.ssm.mapper.TodoMapper;
import kybmig.ssm.model.ModelFactory;
import kybmig.ssm.model.TodoModel;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

@Service
public class TodoService {
    TodoMapper mapper;

    public TodoService(TodoMapper mapper) {
        this.mapper = mapper;
    }

    public TodoModel add(String content) {
        TodoModel m = new TodoModel();
        m.setContent(content);
        Utility.log("m before insert id %s", m.getId());
        mapper.insertTodo(m);
        Utility.log("m after insert id %s", m.getId());
        return m;

    }

    public  void update(Integer id, String content) {
        TodoModel m = new TodoModel();
        m.setContent(content);
        m.setId(id);
        mapper.updateTodo(m);
    }

    
    public void deleteById(Integer id) {
        mapper.deleteTodo(id);
    }
    
    public  TodoModel findById(Integer id) {
        return mapper.selectTodo(id);
    }
    
    public  ArrayList<TodoModel> all() {
        return mapper.selectAllTodo();
    }

}
