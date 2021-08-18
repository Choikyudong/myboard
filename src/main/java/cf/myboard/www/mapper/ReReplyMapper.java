package cf.myboard.www.mapper;

import cf.myboard.www.domain.ReReply;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface ReReplyMapper {

    List<ReReply> getReReplyList(long board_id);

    int countReRepy(long id);

    void saveReReply(ReReply reReply);

    List<ReReply> test(long id);


}
