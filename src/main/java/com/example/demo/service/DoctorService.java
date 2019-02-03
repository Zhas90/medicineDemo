package com.example.demo.service;

import com.example.demo.repository.DoctorRepositry;
import com.example.demo.model.Doctor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Component;

/**
 * Created by ZBaimanov on 01.02.2019.
 */

@Scope(value = "session")
@Component(value = "doctorService")
public class DoctorService {

    @Autowired
    private DoctorRepositry doctorRepositry;

    private Doctor doctor = new Doctor();

    private String username = SecurityContextHolder.getContext().getAuthentication().getName();

    public Doctor getDoctor() {
        return doctorRepositry.findByUsername(username);
    }

    public void setDoctor(Doctor doctor) {
        this.doctor = doctor;
    }

    public String showGreeting() {
        return "Здравствуйте, " + getDoctor().getFirstname() + "!";
    }
}
