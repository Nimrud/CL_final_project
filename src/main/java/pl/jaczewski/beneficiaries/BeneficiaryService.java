package pl.jaczewski.beneficiaries;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class BeneficiaryService {

    private BeneficiaryRepo benRepo;

    @Autowired
    public BeneficiaryService(BeneficiaryRepo beneficiaryRepo) {
        this.benRepo = beneficiaryRepo;
    }

    public void saveBeneficiary(Beneficiary beneficiary){
        benRepo.save(beneficiary);
    }

    public void updateBeneficiary(Beneficiary beneficiary){
        benRepo.save(beneficiary);
    }

    public Beneficiary findBeneficiary(Long id){
        return benRepo.findById(id).orElse(null);
    }

    public List<Beneficiary> findAllBeneficiaries(){
        return benRepo.findAll();
    }

}
