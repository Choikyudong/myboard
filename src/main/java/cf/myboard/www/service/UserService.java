package cf.myboard.www.service;

import cf.myboard.www.domain.User;
import cf.myboard.www.mapper.UserMapper;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Service
public class UserService {

    private final UserMapper userMapper;
    private final HttpServletRequest request;

    public UserService(UserMapper userMapper, HttpServletRequest request) {
        this.userMapper = userMapper;
        this.request = request;
    }

    public void saveUser(User user) {
        userMapper.saveUser(user);
    }

    public String loginUser(User user) {
        User currentUser = userMapper.loginUser(user);
        HttpSession session;
        System.out.println("currentUser ==> " + currentUser);
        if (currentUser != null) {
            session = request.getSession(true);
            session.setMaxInactiveInterval(10 * 60);
            session.setAttribute("currentUser", currentUser);
            System.out.println("currentUser ==> " + currentUser);
            return "redirect:/";
        }
        return "redirect:/login";
    }

    public void doLogout() {
        HttpSession session = request.getSession();
        session.invalidate();
    }
}
