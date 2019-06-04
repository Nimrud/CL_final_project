package pl.jaczewski.beneficiaries;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping("/beneficiaries")
public class BeneficiaryController {

    private BeneficiaryService benService;

    @Autowired
    public BeneficiaryController(BeneficiaryService benService) {
        this.benService = benService;
    }

    @GetMapping(value = "/add", produces = "text/html; charset=UTF-8")
    public String addBeneficiary(Model model){
        model.addAttribute("beneficiary", new Beneficiary());
        return "beneficiary";
    }

    @PostMapping(value = "/add", produces = "text/html; charset=UTF-8")
    public String addBeneficiary(@ModelAttribute @Valid Beneficiary beneficiary, BindingResult result){
        if(result.hasErrors()){
            return "beneficiary";
        }
        benService.saveBeneficiary(beneficiary);
        return "redirect:list";
    }

    @GetMapping(value = "/list", produces = "text/html; charset=UTF-8")
    public String beneficiariesList(Model model){
        List<Beneficiary> beneficiaries = benService.findAllBeneficiaries();
        model.addAttribute("beneficiaries", beneficiaries);
        return "beneficiariesList";
    }

    @GetMapping(value = "/update/{id}", produces = "text/html; charset=UTF-8")
    public String updateBeneficiary(@PathVariable Long id, Model model){
        Beneficiary beneficiary = benService.findBeneficiary(id);
        model.addAttribute("beneficiary", beneficiary);
        return "beneficiary";
    }

    @PostMapping(value = "/update/{id}", produces = "text/html; charset=UTF-8")
    public String updateBeneficiary(@ModelAttribute @Valid Beneficiary beneficiary, BindingResult result){
        if(result.hasErrors()){
            return "beneficiary";
        }
        benService.updateBeneficiary(beneficiary);
        return "redirect:../list";
    }
}
