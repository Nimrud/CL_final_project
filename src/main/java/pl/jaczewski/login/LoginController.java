package pl.jaczewski.login;


import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import pl.jaczewski.users.User;
import pl.jaczewski.users.UserService;

@Controller
@SessionAttributes("userSession")
public class LoginController {

    private UserService userService;

    @Autowired
    public LoginController(UserService userService) {
        this.userService = userService;
    }

    @GetMapping("/login")
    public String login(){
        return "home";
    }

    @PostMapping("/login")
    public String login(@RequestParam String email, @RequestParam String password, Model model){
        User user = userService.findByEmail(email);
        model.addAttribute("isLogged", false);
        if (user == null){
            return "home";
        }
        if(BCrypt.checkpw(password, user.getPassword())){
            model.addAttribute("userSession", user);
            model.addAttribute("isLogged", true);
            return "redirect:projects/list";
        }
        return "home";
    }
}
