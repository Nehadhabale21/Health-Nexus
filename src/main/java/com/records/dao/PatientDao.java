package com.records.dao;

import com.records.model.Patient;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class PatientDao {

    @Autowired
    private SessionFactory sessionFactory;

    public void savePatient(Patient patient) {
        sessionFactory.getCurrentSession().saveOrUpdate(patient);
    }

    public List<Patient> getAllPatients() {
        return sessionFactory.getCurrentSession()
                .createQuery("from Patient", Patient.class)
                .list();
    }

    public Patient getPatientById(int id) {
        return sessionFactory.getCurrentSession().get(Patient.class, id);
    }

    public void deletePatient(int id) {
        Patient patient = getPatientById(id);
        if (patient != null) {
            sessionFactory.getCurrentSession().delete(patient);
        }
    }
}
