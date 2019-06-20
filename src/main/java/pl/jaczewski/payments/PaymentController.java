package pl.jaczewski.payments;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.jaczewski.project.Project;
import pl.jaczewski.project.ProjectService;

import javax.validation.Valid;
import java.math.BigDecimal;
import java.util.List;

@Controller
@RequestMapping("/payments")
public class PaymentController {

    private PaymentService payService;
    private ProjectService projService;

    @Autowired
    public PaymentController(PaymentService payService, ProjectService projService) {
        this.payService = payService;
        this.projService = projService;
    }

    @GetMapping(value = "/add", produces = "text/html; charset=UTF-8")
    public String addPayment(Model model){
        model.addAttribute("payment", new Payment());
        return "payment";
    }

    @PostMapping(value = "/add", produces = "text/html; charset=UTF-8")
    public String addPayment(@ModelAttribute @Valid Payment payment, BindingResult result){
        if(result.hasErrors()){
            return "payment";
        }
        payService.savePayment(payment);
        return "redirect:list";
    }

    @GetMapping(value = "/list", produces = "text/html; charset=UTF-8")
    public String paymentsList(Model model){
        List<Payment> payments = payService.findAllPayments();
        BigDecimal sumOfAllPayments = payService.sumOfAllPayments();
        model.addAttribute("payments", payments);
        model.addAttribute("allPayments", sumOfAllPayments);
        return "allPaymentsList";
    }

    @GetMapping(value = "/update/{id}", produces = "text/html; charset=UTF-8")
    public String updatePayment(@PathVariable Long id, Model model){
        Payment payment = payService.findPayment(id);
        model.addAttribute("payment", payment);
        return "payment";
    }

    @PostMapping(value = "/update/{id}", produces = "text/html; charset=UTF-8")
    public String updatePayment(@ModelAttribute @Valid Payment payment, BindingResult result){
        if(result.hasErrors()){
            return "payment";
        }
        payService.updatePayment(payment);
        return "redirect:../list";
    }

    @ModelAttribute("projects")
    public List<Project> getProjects(){
        List<Project> projects = projService.findAllProjects();
        return projects;
    }

    @GetMapping(value = "/list/{id}", produces = "text/html; charset=UTF-8")
    public String projectPaymentsList(@PathVariable Long id, Model model){
        List<Payment> payments = payService.findByProjectId(id);
        BigDecimal sumOfAllPaymentsInProject = payService.sumPaymentsByProjectId(id);
        Project project = projService.findProject(id);
        model.addAttribute("payments", payments);
        model.addAttribute("project", project);
        model.addAttribute("allPaymentsInProject", sumOfAllPaymentsInProject);
        return "projectPaymentsList";
    }

    @PostMapping(value = "/list/{id}", produces = "text/html; charset=UTF-8")
    public String projectPaymentsList(@ModelAttribute @Valid Payment payment, BindingResult result){
        if(result.hasErrors()){
            return "projectPaymentsList";
        }
        payService.updatePayment(payment);
        return "projectPaymentsList";
    }
}
