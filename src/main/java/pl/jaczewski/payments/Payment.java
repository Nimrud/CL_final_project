package pl.jaczewski.payments;

import org.springframework.format.annotation.DateTimeFormat;
import pl.jaczewski.project.Project;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Past;
import java.math.BigDecimal;
import java.time.LocalDate;

@Entity
@Table(name = "payments")
public class Payment {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    private Project project;

    @Past(message = "Musi być datą z przeszłości")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate paymentDate;

    @NotNull
    private BigDecimal amount;

    public Payment() {
    }

    public Long getId() {
        return id;
    }

    public Payment setId(Long id) {
        this.id = id;
        return this;
    }

    public Project getProject() {
        return project;
    }

    public Payment setProject(Project project) {
        this.project = project;
        return this;
    }

    public LocalDate getPaymentDate() {
        return paymentDate;
    }

    public Payment setPaymentDate(LocalDate paymentDate) {
        this.paymentDate = paymentDate;
        return this;
    }

    public BigDecimal getAmount() {
        return amount;
    }

    public Payment setAmount(BigDecimal amount) {
        this.amount = amount;
        return this;
    }
}
