package com.records.service;

import com.records.dao.PatientDao;
import com.records.model.Patient;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

@Service
public class PatientService {

    @Autowired
    private PatientDao patientDao;

    @Transactional
    public void savePatient(Patient patient) {
        patientDao.savePatient(patient);
    }

    @Transactional
    public List<Patient> getAllPatients() {
        return patientDao.getAllPatients();
    }

    @Transactional
    public Patient getPatientById(int id) {
        return patientDao.getPatientById(id);
    }

    @Transactional
    public void deletePatient(int id) {
        patientDao.deletePatient(id);
    }
}
