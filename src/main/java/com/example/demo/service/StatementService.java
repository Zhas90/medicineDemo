package com.example.demo.service;

import com.example.demo.model.Patient;
import com.example.demo.model.Statement;
import com.example.demo.repository.StatementRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

/**
 * Created by ZBaimanov on 01.02.2019.
 */

@Scope(value = "session")
@Component(value = "statementService")
public class StatementService {

    @Autowired
    private StatementRepository statementRepository;
    @Autowired
    private PatientService patientService;
    @Autowired
    private DoctorService doctorService;

    private Statement statement = new Statement();

    public String save() {
        statement.setDoctor(doctorService.getDoctor());
        statement.setPatient(patientService.getPatient());
        statement = statementRepository.save(statement);
        //statement = new Statement();
        //patientService.setPatient(new Patient());
        return "/statement.xhtml?faces-redirect=true";
    }

    public String reset() {
        statement = new Statement();
        patientService.setPatient(new Patient());
        return "/homepage.xhtml?faces-redirect=true";
    }

    public Statement getStatement() {
        return statement;
    }

}
