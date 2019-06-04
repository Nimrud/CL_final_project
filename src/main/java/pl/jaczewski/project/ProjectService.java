package pl.jaczewski.project;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import java.util.List;

@Service
@Transactional
public class ProjectService {

    private ProjectRepo projectRepo;

    @Autowired
    public ProjectService(ProjectRepo projectRepo) {
        this.projectRepo = projectRepo;
    }

    public void saveProject(Project project){
        projectRepo.save(project);
    }

    public void updateProject(Project project){
        projectRepo.save(project);
    }

    public Project findProject(Long id){
        return projectRepo.findById(id).orElse(null);
    }

    public List<Project> findAllProjects(){
        return projectRepo.findAll();
    }

}
