package cf.myboard.www.mapper;

import cf.myboard.www.domain.Reply;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface ReplyMapper {

    List<Reply> getReplyList(long board_id);

    int countReply(long id);

    void saveReply(Reply reply);

}
