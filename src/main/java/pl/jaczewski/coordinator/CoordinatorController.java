package pl.jaczewski.coordinator;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping("/coordinators")
public class CoordinatorController {

    private CoordinatorService coordService;

    @Autowired
    public CoordinatorController(CoordinatorService coordService) {
        this.coordService = coordService;
    }

    @GetMapping(value = "/add", produces = "text/html; charset=UTF-8")
    public String addCoordinator(Model model){
        model.addAttribute("coordinator", new Coordinator());
        return "coordinator";
    }

    @PostMapping(value = "/add", produces = "text/html; charset=UTF-8")
    public String addCoordinator(@ModelAttribute @Valid Coordinator coordinator, BindingResult result){
        if(result.hasErrors()){
            return "coordinator";
        }
        coordService.saveCoordinator(coordinator);
        return "redirect:list";
    }

    @GetMapping(value = "/list", produces = "text/html; charset=UTF-8")
    public String coordinatorsList(Model model){
        List<Coordinator> coordinators = coordService.findAllCoordinators();
        model.addAttribute("coordinators", coordinators);
        return "coordinatorsList";
    }

    @GetMapping(value = "/update/{id}", produces = "text/html; charset=UTF-8")
    public String updateCoordinator(@PathVariable Long id, Model model){
        Coordinator coordinator = coordService.findCoordinator(id);
        model.addAttribute("coordinator", coordinator);
        return "coordinator";
    }

    @PostMapping(value = "/update/{id}", produces = "text/html; charset=UTF-8")
    public String updateCoordinator(@ModelAttribute @Valid Coordinator coordinator, BindingResult result){
        if(result.hasErrors()){
            return "coordinator";
        }
        coordService.updateCoordinator(coordinator);
        return "redirect:../list";
    }



    /*
    @GetMapping(value = "/delete/{id}", produces = "text/html; charset=UTF-8")
    public String deleteCoordinator(@PathVariable Long id){
        coordService.deleteCoordinator(id);
        return "redirect:../list";
    }
    */

}
