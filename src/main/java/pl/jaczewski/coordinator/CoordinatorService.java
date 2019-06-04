package pl.jaczewski.coordinator;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class CoordinatorService {

    private CoordinatorRepo coordRepo;

    @Autowired
    public CoordinatorService(CoordinatorRepo coordRepo) {
        this.coordRepo = coordRepo;
    }

    public void saveCoordinator(Coordinator coordinator){
        coordRepo.save(coordinator);
    }

    public void updateCoordinator(Coordinator coordinator){
        coordRepo.save(coordinator);
    }

    public Coordinator findCoordinator(Long id){
        return coordRepo.findById(id).orElse(null);
    }

    public List<Coordinator> findAllCoordinators(){
        return coordRepo.findAll();
    }

    //TODO: kasowanie koord. razem z relacją

}
