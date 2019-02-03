package com.example.demo.service;

import com.example.demo.repository.PatientRepository;
import com.example.demo.model.Patient;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

/**
 * Created by ZBaimanov on 01.02.2019.
 */

@Scope(value = "session")
@Component(value = "patientService")
public class PatientService {

    @Autowired
    private PatientRepository patientRepository;

    private Patient patient = new Patient();

    private String iinForSearch;

    public Patient findByIin() {
        patient = patientRepository.findPatientByIin(iinForSearch);
        iinForSearch = "";
        if (patient == null) patient = new Patient();
        return patient;
    }

    public Patient getPatient() {
        return patient;
    }

    public void setPatient(Patient patient) {
        this.patient = patient;
    }

    public String save() {
        patient = patientRepository.save(patient);
        //patient = new Patient();
        return "/homepage.xhtml?faces-redirect=true";
    }

    public String getIinForSearch() {
        return iinForSearch;
    }

    public void setIinForSearch(String iinForSearch) {
        this.iinForSearch = iinForSearch;
    }

    public String getPatientData() {
        return patient.getFullData();
    }

}
