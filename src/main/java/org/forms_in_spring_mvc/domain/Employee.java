package org.forms_in_spring_mvc.domain;

import org.hibernate.validator.constraints.NotEmpty;

import javax.validation.constraints.Digits;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

public class Employee {

    @NotEmpty
//    @Pattern(regexp = "[\\p{Alpha}|\\p{Space}]+", message = "letters or spaces are only allowed")
    private String name;
    private long id;
    @NotEmpty
    @Pattern(regexp = "\\p{Digit}+", message = "only digits are allowed")
    @Size(min = 9, max = 9, message = "must contain exactly 9 digits")
    private String contactNumber;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getContactNumber() {
        return contactNumber;
    }

    public void setContactNumber(String contactNumber) {
        this.contactNumber = contactNumber;
    }
}
