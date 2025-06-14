package com.records.dao;

import com.records.model.Doctor;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class DoctorDao {

    @Autowired
    private SessionFactory sessionFactory;

    public void saveDoctor(Doctor doctor) {
        sessionFactory.getCurrentSession().saveOrUpdate(doctor);
    }

    public List<Doctor> getAllDoctors() {
        return sessionFactory.getCurrentSession()
                .createQuery("from Doctor", Doctor.class)
                .list();
    }

    public Doctor getDoctorById(int id) {
        return sessionFactory.getCurrentSession().get(Doctor.class, id);
    }

    public void deleteDoctor(int id) {
        Doctor doctor = getDoctorById(id);
        if (doctor != null) {
            sessionFactory.getCurrentSession().delete(doctor);
        }
    }
}
