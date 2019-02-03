package com.example.demo.repository;

import com.example.demo.model.Doctor;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
;

/**
 * Created by ZBaimanov on 02.02.2019.
 */

@Repository
public interface DoctorRepositry extends JpaRepository<Doctor, Long> {

    Doctor findByUsername(String username);
}
