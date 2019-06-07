package pl.jaczewski.payments;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class PaymentService {

    private PaymentRepo payRepo;

    @Autowired
    public PaymentService(PaymentRepo payRepo) {
        this.payRepo = payRepo;
    }

    public void savePayment(Payment payment){
        payRepo.save(payment);
    }

    public void updatePayment(Payment payment){
        payRepo.save(payment);
    }

    public Payment findPayment(Long id){
        return payRepo.findById(id).orElse(null);
    }

    public List<Payment> findAllPayments(){
        return payRepo.findAll();
    }

    public List<Payment> findByProjectId(Long id){
        return payRepo.findByProjectId(id);
    }
}
