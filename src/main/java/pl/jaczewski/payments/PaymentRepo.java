package pl.jaczewski.payments;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.math.BigDecimal;
import java.util.List;

public interface PaymentRepo extends JpaRepository<Payment, Long> {

    List<Payment> findByProjectId(Long id);

    @Query(value = "select sum(amount) from payments where payments.project_id =:project_id", nativeQuery = true)
    BigDecimal sumPaymentsByProjectId(@Param("project_id") Long id);

    @Query(value = "select sum(amount) from payments", nativeQuery = true)
    BigDecimal sumOfAllPayments();

}
