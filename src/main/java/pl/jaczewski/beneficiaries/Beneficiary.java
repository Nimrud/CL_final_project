package pl.jaczewski.beneficiaries;

import javax.persistence.*;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;

@Entity
@Table(name = "beneficiaries")
public class Beneficiary {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotBlank
    @Column(unique = true)
    private String name;

    @Email
    @Column(unique = true)
    private String email;

    @NotBlank
    private String city;

    private String code;

    private String street;

    @Transient
    private String benAddressAndContact;

    // koordynator 1

    private String benCoord1;

    private String benCoord1JobPosition;

    private String benCoord1Email;

    private String benCoord1phone1;

    private String benCoord1phone2;

    private String fax1;

    @Transient
    private String benCoord1Info;

    // koordynator 2 (opcja)

    private String benCoord2;

    private String benCoord2JobPosition;

    private String benCoord2Email;

    private String benCoord2phone1;

    private String benCoord2phone2;

    private String fax2;

    @Transient
    private String benCoord2Info;

    public Beneficiary() {
    }

    public Long getId() {
        return id;
    }

    public Beneficiary setId(Long id) {
        this.id = id;
        return this;
    }

    public String getName() {
        return name;
    }

    public Beneficiary setName(String name) {
        this.name = name;
        return this;
    }

    public String getEmail() {
        return email;
    }

    public Beneficiary setEmail(String email) {
        this.email = email;
        return this;
    }

    public String getCity() {
        return city;
    }

    public Beneficiary setCity(String city) {
        this.city = city;
        return this;
    }

    public String getCode() {
        return code;
    }

    public Beneficiary setCode(String code) {
        this.code = code;
        return this;
    }

    public String getStreet() {
        return street;
    }

    public Beneficiary setStreet(String street) {
        this.street = street;
        return this;
    }

    public String getBenCoord1() {
        return benCoord1;
    }

    public Beneficiary setBenCoord1(String benCoord1) {
        this.benCoord1 = benCoord1;
        return this;
    }

    public String getBenCoord1JobPosition() {
        return benCoord1JobPosition;
    }

    public Beneficiary setBenCoord1JobPosition(String benCoord1JobPosition) {
        this.benCoord1JobPosition = benCoord1JobPosition;
        return this;
    }

    public String getBenCoord1Email() {
        return benCoord1Email;
    }

    public Beneficiary setBenCoord1Email(String benCoord1Email) {
        this.benCoord1Email = benCoord1Email;
        return this;
    }

    public String getBenCoord1phone1() {
        return benCoord1phone1;
    }

    public Beneficiary setBenCoord1phone1(String benCoord1phone1) {
        this.benCoord1phone1 = benCoord1phone1;
        return this;
    }

    public String getBenCoord1phone2() {
        return benCoord1phone2;
    }

    public Beneficiary setBenCoord1phone2(String benCoord1phone2) {
        this.benCoord1phone2 = benCoord1phone2;
        return this;
    }

    public String getFax1() {
        return fax1;
    }

    public Beneficiary setFax1(String fax1) {
        this.fax1 = fax1;
        return this;
    }

    public String getBenCoord2() {
        return benCoord2;
    }

    public Beneficiary setBenCoord2(String benCoord2) {
        this.benCoord2 = benCoord2;
        return this;
    }

    public String getBenCoord2JobPosition() {
        return benCoord2JobPosition;
    }

    public Beneficiary setBenCoord2JobPosition(String benCoord2JobPosition) {
        this.benCoord2JobPosition = benCoord2JobPosition;
        return this;
    }

    public String getBenCoord2Email() {
        return benCoord2Email;
    }

    public Beneficiary setBenCoord2Email(String benCoord2Email) {
        this.benCoord2Email = benCoord2Email;
        return this;
    }

    public String getBenCoord2phone1() {
        return benCoord2phone1;
    }

    public Beneficiary setBenCoord2phone1(String benCoord2phone1) {
        this.benCoord2phone1 = benCoord2phone1;
        return this;
    }

    public String getBenCoord2phone2() {
        return benCoord2phone2;
    }

    public Beneficiary setBenCoord2phone2(String benCoord2phone2) {
        this.benCoord2phone2 = benCoord2phone2;
        return this;
    }

    public String getFax2() {
        return fax2;
    }

    public Beneficiary setFax2(String fax2) {
        this.fax2 = fax2;
        return this;
    }

    public String getBenAddressAndContact() {
        return street + "\n" + code + " " + city + "\n" + email;
    }

    public Beneficiary setBenAddressAndContact(String benAddressAndContact) {
        this.benAddressAndContact = benAddressAndContact;
        return this;
    }

    public String getBenCoord1Info() {
        return benCoord1 + "\n" + benCoord1JobPosition + "\n" + benCoord1Email + "\n" + benCoord1phone1 + "\n" + benCoord1phone2;
    }

    public Beneficiary setBenCoord1Info(String benCoord1Info) {
        this.benCoord1Info = benCoord1Info;
        return this;
    }

    public String getBenCoord2Info() {
        return benCoord2 + "\n" + benCoord2JobPosition + "\n" + benCoord2Email + "\n" + benCoord2phone1 + "\n" + benCoord2phone2;
    }

    public Beneficiary setBenCoord2Info(String benCoord2Info) {
        this.benCoord2Info = benCoord2Info;
        return this;
    }
}
