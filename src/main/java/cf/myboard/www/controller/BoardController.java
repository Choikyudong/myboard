package cf.myboard.www.controller;

import cf.myboard.www.domain.Board;
import cf.myboard.www.domain.ReReply;
import cf.myboard.www.domain.Reply;
import cf.myboard.www.service.BoardService;
import cf.myboard.www.service.ReplyService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class BoardController {

    private final BoardService boardService;
    private final ReplyService replyService;

    public BoardController(BoardService boardService, ReplyService replyService) {
        this.boardService = boardService;
        this.replyService = replyService;
    }

    @RequestMapping(value = "/boardList", method = RequestMethod.GET)
    public String boardList(@ModelAttribute("board") Board board, Model model) {
        List<Board> boardList = boardService.getBoardList(board);
        model.addAttribute("board", boardList);
        model.addAttribute("paging", board.getPagination());
        return "board/boardList";
    }

    @RequestMapping(value = "/boardWrite", method = RequestMethod.GET)
    public String boardWrite() {
        return "board/boardWrite";
    }

    @RequestMapping(value = "/doWrite", method = RequestMethod.POST)
    public String doWrite(@ModelAttribute("board") Board board) {
        long id = boardService.saveBoard(board);
        return "redirect:/boardList";
    }

    @RequestMapping(value = "/boardDetail", method = RequestMethod.GET)
    public String boardDetail(@RequestParam(name = "id") long id, Model model) {
        Board detail = boardService.getBoard(id);
        List<Reply> reply = replyService.getReplyList(id);
        List<ReReply> reReply = replyService.getReReplyList(id);
        model.addAttribute("detail", detail);
        model.addAttribute("reply", reply);
        model.addAttribute("rereply", reReply);
        return "board/boardDetail";
    }

    @RequestMapping(value = "/saveReply", method = RequestMethod.POST)
    public String saveReplay(@ModelAttribute("reply")Reply reply) {
        replyService.saveReply(reply);
        return "redirect:/boardList";
    }

    @RequestMapping(value = "/saveReReply", method = RequestMethod.POST)
    public String saveReplay(@ModelAttribute("reReply")ReReply reReply) {
        replyService.saveReReply(reReply);
        return "redirect:/boardList";
    }

}
