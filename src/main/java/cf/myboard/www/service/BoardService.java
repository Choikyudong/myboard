package cf.myboard.www.service;

import cf.myboard.www.domain.Board;
import cf.myboard.www.mapper.BoardMapper;
import cf.myboard.www.paging.Pagination;
import org.springframework.stereotype.Service;

import java.util.Collections;
import java.util.List;

@Service
public class BoardService {

    private final BoardMapper boardMapper;

    public BoardService(BoardMapper boardMapper) {
        this.boardMapper = boardMapper;
    }

    public List<Board> getBoardList(Board board) {
        List<Board> boardList = Collections.emptyList();
        long countBoard = boardMapper.countBoard(board);
        Pagination pagination = new Pagination(board);
        pagination.setTotalPage((int) countBoard);
        board.setPagination(pagination);
        if (countBoard > 0) {
            boardList = boardMapper.getBoardList(board);
        }
        return boardList;
    }

    public long saveBoard(Board board) {
        boardMapper.saveBoard(board);
        return board.getId();
    }

    public Board getBoard(long id) {
        if (id <= 0) {
            return null;
        }
        return boardMapper.getBoard(id);
    }

}
