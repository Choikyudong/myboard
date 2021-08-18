package cf.myboard.www.controller;

import cf.myboard.www.domain.User;
import cf.myboard.www.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class UserController {

    private final UserService userService;

    public UserController(UserService userService) {
        this.userService = userService;
    }

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String index() {
        return "index";
    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login() {
        return "user/login";
    }

    @RequestMapping(value = "/doLogin", method = RequestMethod.POST)
    public String doLogin(@ModelAttribute("user") User user) {
        String result = userService.loginUser(user);
        System.out.println(result);
        return result;
    }

    @RequestMapping(value = "/doLogout", method = RequestMethod.GET)
    public String doLogout() {
        userService.doLogout();
        return "redirect:/";
    }

    @RequestMapping(value = "/sign", method = RequestMethod.GET)
    public String sign() {
        return "user/sign";
    }

    @RequestMapping(value = "/doSign", method = RequestMethod.POST)
    public String doSign(@ModelAttribute("user") User user) {
        userService.saveUser(user);
        return "redirect:/login";
    }

}
