package pl.jaczewski.project;

import org.hibernate.validator.constraints.URL;
import pl.jaczewski.beneficiaries.Beneficiary;
import pl.jaczewski.coordinator.Coordinator;

import javax.persistence.*;
import javax.validation.constraints.Future;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.math.BigDecimal;
import java.util.Date;

@Entity
// @Table(name = "projects")
public class Project {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotBlank
    private String programme;

    @NotBlank
    @Column(unique = true)
    private String projNumber;

    @Column(unique = true)
    private String dorisNumber;

    private String outcome;

    @NotBlank
    private String name;

    private boolean predefined;

    private String region;

    private Date signedDate;

    private Date qualifiedFrom;

    private Date startDate;

    @Future
    private Date finishDate;

    private BigDecimal projectValue;

    private BigDecimal qualifiedCost;

    @NotNull
    private BigDecimal dotation;

    private BigDecimal dotationAdjusted;

    private BigDecimal currencyrateEUR;

    private BigDecimal dotationTransferred;

    @URL
    private String website;

    @ManyToOne
    private Beneficiary beneficiary;

    @ManyToOne
    private Coordinator coordinator;

    public Project() {
    }

    public Long getId() {
        return id;
    }

    public Project setId(Long id) {
        this.id = id;
        return this;
    }

    public String getProgramme() {
        return programme;
    }

    public Project setProgramme(String programme) {
        this.programme = programme;
        return this;
    }

    public String getProjNumber() {
        return projNumber;
    }

    public Project setProjNumber(String projNumber) {
        this.projNumber = projNumber;
        return this;
    }

    public String getDorisNumber() {
        return dorisNumber;
    }

    public Project setDorisNumber(String dorisNumber) {
        this.dorisNumber = dorisNumber;
        return this;
    }

    public String getOutcome() {
        return outcome;
    }

    public Project setOutcome(String outcome) {
        this.outcome = outcome;
        return this;
    }

    public String getName() {
        return name;
    }

    public Project setName(String name) {
        this.name = name;
        return this;
    }

    public boolean isPredefined() {
        return predefined;
    }

    public Project setPredefined(boolean predefined) {
        this.predefined = predefined;
        return this;
    }

    public String getRegion() {
        return region;
    }

    public Project setRegion(String region) {
        this.region = region;
        return this;
    }

    public Date getSignedDate() {
        return signedDate;
    }

    public Project setSignedDate(Date signedDate) {
        this.signedDate = signedDate;
        return this;
    }

    public Date getQualifiedFrom() {
        return qualifiedFrom;
    }

    public Project setQualifiedFrom(Date qualifiedFrom) {
        this.qualifiedFrom = qualifiedFrom;
        return this;
    }

    public Date getStartDate() {
        return startDate;
    }

    public Project setStartDate(Date startDate) {
        this.startDate = startDate;
        return this;
    }

    public Date getFinishDate() {
        return finishDate;
    }

    public Project setFinishDate(Date finishDate) {
        this.finishDate = finishDate;
        return this;
    }

    public BigDecimal getProjectValue() {
        return projectValue;
    }

    public Project setProjectValue(BigDecimal projectValue) {
        this.projectValue = projectValue;
        return this;
    }

    public BigDecimal getQualifiedCost() {
        return qualifiedCost;
    }

    public Project setQualifiedCost(BigDecimal qualifiedCost) {
        this.qualifiedCost = qualifiedCost;
        return this;
    }

    public BigDecimal getDotation() {
        return dotation;
    }

    public Project setDotation(BigDecimal dotation) {
        this.dotation = dotation;
        return this;
    }

    public BigDecimal getDotationAdjusted() {
        return dotationAdjusted;
    }

    public Project setDotationAdjusted(BigDecimal dotationAdjusted) {
        this.dotationAdjusted = dotationAdjusted;
        return this;
    }

    public BigDecimal getCurrencyrateEUR() {
        return currencyrateEUR;
    }

    public Project setCurrencyrateEUR(BigDecimal currencyrateEUR) {
        this.currencyrateEUR = currencyrateEUR;
        return this;
    }

    public BigDecimal getDotationTransferred() {
        return dotationTransferred;
    }

    public Project setDotationTransferred(BigDecimal dotationTransferred) {
        this.dotationTransferred = dotationTransferred;
        return this;
    }

    public String getWebsite() {
        return website;
    }

    public Project setWebsite(String website) {
        this.website = website;
        return this;
    }

    public Beneficiary getBeneficiary() {
        return beneficiary;
    }

    public Project setBeneficiary(Beneficiary beneficiary) {
        this.beneficiary = beneficiary;
        return this;
    }

    public Coordinator getCoordinator() {
        return coordinator;
    }

    public Project setCoordinator(Coordinator coordinator) {
        this.coordinator = coordinator;
        return this;
    }
}
