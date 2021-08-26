package cf.myboard.www.service;

import cf.myboard.www.domain.User;
import cf.myboard.www.mapper.UserMapper;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.PrintWriter;

@Service
public class UserService {

    private final UserMapper userMapper;
    private final HttpServletRequest request;
    private final HttpServletResponse response;

    public UserService(UserMapper userMapper, HttpServletRequest request, HttpServletResponse response) {
        this.userMapper = userMapper;
        this.request = request;
        this.response = response;
    }

    public void saveUser(User user) {
        userMapper.saveUser(user);
    }

    public String loginUser(User user) throws Exception {
        User currentUser = userMapper.loginUser(user);
        if (currentUser == null) {
            response.setContentType("text/html; charset=UTF-8");
            PrintWriter out = response.getWriter();
            out.println("<script>alert('로그인 정보를 확인해주세요.'); history.go(-1);</script>");
            out.flush();
        }
        HttpSession session;
        if (currentUser != null) {
            session = request.getSession(true);
            session.setMaxInactiveInterval(10 * 60);
            session.setAttribute("currentUser", currentUser);
            return "redirect:/";
        }
        return "redirect:/login";
    }

    public void updateUser(User user) {
        userMapper.updateUser(user);
    }

    public void doLogout() {
        HttpSession session = request.getSession();
        session.invalidate();
    }
}
