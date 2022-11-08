package kybmig.ssm.service;


import kybmig.ssm.mapper.BoardMapper;
import kybmig.ssm.model.BoardModel;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

@Service
public class BoardService {
    BoardMapper mapper;

    public BoardService(BoardMapper mapper) {
        this.mapper = mapper;
    }

    public void add(String name) {
        BoardModel m = new BoardModel();
        m.setName(name);
        mapper.insert(m);
    }

    public  ArrayList<BoardModel> all() {
        ArrayList<BoardModel> all = new ArrayList<>();
        all.add(this.total());
        all.addAll(mapper.selectAll());
        return all;
    }

    public  ArrayList<BoardModel> allReal() {
        return mapper.selectAll();
    }

    public BoardModel total() {
        BoardModel total = new BoardModel();
        total.setId(0);
        total.setName("全部");
        return total;
    }
}
