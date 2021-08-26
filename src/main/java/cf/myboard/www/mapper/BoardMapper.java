package cf.myboard.www.mapper;

import cf.myboard.www.domain.Board;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface BoardMapper {

    List<Board> getBoardList(Board board);

    long countBoard(Board board);

    Board getBoard(long id);

    void saveBoard(Board board);

    void deleteBoard(long id);

    Board updateBoard(Board board);

}
