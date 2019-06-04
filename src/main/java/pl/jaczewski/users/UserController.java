package pl.jaczewski.users;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping("/users")
public class UserController {

    private UserService userService;

    @Autowired
    public UserController(UserService userService) {
        this.userService = userService;
    }

    @GetMapping("/add")
    public String addUser(Model model) {
        model.addAttribute("user", new User());
        return "user";
    }

    @PostMapping("/add")
    public String addUser(@ModelAttribute @Valid User user, BindingResult result) {
        if (result.hasErrors()) {
            return "user";
        }
        user.setPassword(BCrypt.hashpw(user.getPassword(), BCrypt.gensalt()));
        userService.saveUser(user);
        return "redirect:list";
    }

    // dodać obsługę powtórzenia wprowadzania hasła i sprawdzania ich zgodności?

    @GetMapping(value = "/list", produces = "text/html; charset=UTF-8")
    public String usersList(Model model){
        List<User> users = userService.findAllUsers();
        model.addAttribute("users", users);
        return "usersList";
    }

    @GetMapping(value = "/update/{id}", produces = "text/html; charset=UTF-8")
    public String updateUser(@PathVariable Long id, Model model){
        User user = userService.findUser(id);
        model.addAttribute("user", user);
        return "user";
    }

    @PostMapping(value = "/update/{id}", produces = "text/html; charset=UTF-8")
    public String updateUser(@ModelAttribute @Valid User user, BindingResult result){
        if(result.hasErrors()){
            return "user";
        }
        user.setPassword(BCrypt.hashpw(user.getPassword(), BCrypt.gensalt()));
        userService.updateUser(user);
        return "redirect:../list";
    }

    // dodać obsługę powtórzenia wprowadzania hasła i sprawdzania ich zgodności?


}
