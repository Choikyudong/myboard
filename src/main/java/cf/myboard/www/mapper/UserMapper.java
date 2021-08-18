package cf.myboard.www.mapper;

import cf.myboard.www.domain.User;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface UserMapper {

    void saveUser(User user);
    User loginUser(User user);
    void updateUser(User user);

}
