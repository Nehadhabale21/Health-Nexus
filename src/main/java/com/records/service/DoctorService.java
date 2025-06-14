package com.records.service;

import com.records.dao.DoctorDao;
import com.records.model.Doctor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

@Service
public class DoctorService {

    @Autowired
    private DoctorDao doctorDao;

    @Transactional
    public void saveDoctor(Doctor doctor) {
        doctorDao.saveDoctor(doctor);
    }

    @Transactional
    public List<Doctor> getAllDoctors() {
        return doctorDao.getAllDoctors();
    }

    @Transactional
    public Doctor getDoctorById(int id) {
        return doctorDao.getDoctorById(id);
    }

    @Transactional
    public void deleteDoctor(int id) {
        doctorDao.deleteDoctor(id);
    }
}
