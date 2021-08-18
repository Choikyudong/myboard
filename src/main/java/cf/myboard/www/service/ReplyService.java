package cf.myboard.www.service;

import cf.myboard.www.domain.ReReply;
import cf.myboard.www.domain.Reply;
import cf.myboard.www.mapper.ReReplyMapper;
import cf.myboard.www.mapper.ReplyMapper;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ReplyService {

    // 댓글과 대댓글은 하나의 서비스에서 운영한다.

    private final ReplyMapper replyMapper;
    private final ReReplyMapper reReplyMapper;

    public ReplyService(ReplyMapper replyMapper, ReReplyMapper reReplyMapper) {
        this.replyMapper = replyMapper;
        this.reReplyMapper = reReplyMapper;
    }

    public List<Reply> getReplyList(long board_id) {
        List<Reply> result = replyMapper.getReplyList(board_id);
        return result;
    }

    public List<ReReply> getReReplyList(long board_id) {
        List<ReReply> result = reReplyMapper.getReReplyList(board_id);
        return result;
    }

    public void saveReply(Reply reply) {
        replyMapper.saveReply(reply);
    }

    public void saveReReply(ReReply reReply) {
        reReplyMapper.saveReReply(reReply);
    }

}
