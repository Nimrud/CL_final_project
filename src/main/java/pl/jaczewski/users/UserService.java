package pl.jaczewski.users;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class UserService {

    private UserRepo userRepo;

    @Autowired
    public UserService(UserRepo userRepo) {
        this.userRepo = userRepo;
    }

    public void saveUser(User user){
        userRepo.save(user);
    }

    public void updateUser(User user){
        userRepo.save(user);
    }

    public User findUser(Long id){
        return userRepo.findById(id).orElse(null);
    }

    public User findByEmail(String email){
        return userRepo.findByEmail(email);
    }

    public List<User> findAllUsers(){
        return userRepo.findAll();
    }
}
