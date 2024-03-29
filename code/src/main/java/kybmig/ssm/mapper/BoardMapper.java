package kybmig.ssm.mapper;

import kybmig.ssm.model.BoardModel;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;

// 这个是 spring 用来在 controller 进行依赖注入的。
@Repository
// 这个是 mybaits spring boot 用来自动跟 xml 联系起来，并注入到 spring 的 session 里面。
@Mapper
public interface BoardMapper {
    ArrayList<BoardModel> selectAll();

    void insert(BoardModel m);
}
