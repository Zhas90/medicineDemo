package com.example.demo.model;

import lombok.Data;

import javax.persistence.*;

/**
 * Created by ZBaimanov on 01.02.2019.
 */

@Data
@Entity
@Table(name = "patient", schema = "medicine")
public class Patient {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column
    private String iin;
    @Column
    private String lastname;
    @Column
    private String firstname;

    public Patient() {}

    public Patient(String iin, String lastname, String firstname) {
        this.iin = iin;
        this.firstname = firstname;
        this.lastname = lastname;
    }

    public String getFullData() {
        return iin != null ? lastname + " " + firstname + ", ИИН: " + iin : "";
    }

}
