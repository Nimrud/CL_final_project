package pl.jaczewski.coordinator;

import org.springframework.data.jpa.repository.JpaRepository;

public interface CoordinatorRepo extends JpaRepository<Coordinator, Long> {

    // Coordinator findFirstById(Long id);

    // Coordinator findByEmail(String email);

    // List<Coordinator> findByFullName(String fullName);

    //TODO: usuwanie koord. wraz z kasowaniem relacji z tabeli coord_projects
}
