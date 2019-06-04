package pl.jaczewski.coordinator;

import javax.persistence.*;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;

@Entity
@Table(name = "coordinators")
public class Coordinator {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotBlank
    @Column(unique = true)
    private String fullName;

    @Email
    @NotBlank
    @Column(unique = true)
    private String email;

    @NotBlank
    private String phone1;

    private String phone2;


    public Coordinator() {
    }

    public Long getId() {
        return id;
    }

    public Coordinator setId(Long id) {
        this.id = id;
        return this;
    }

    public String getFullName() {
        return fullName;
    }

    public Coordinator setFullName(String fullName) {
        this.fullName = fullName;
        return this;
    }

    public String getEmail() {
        return email;
    }

    public Coordinator setEmail(String email) {
        this.email = email;
        return this;
    }

    public String getPhone1() {
        return phone1;
    }

    public Coordinator setPhone1(String phone1) {
        this.phone1 = phone1;
        return this;
    }

    public String getPhone2() {
        return phone2;
    }

    public Coordinator setPhone2(String phone2) {
        this.phone2 = phone2;
        return this;
    }

}
