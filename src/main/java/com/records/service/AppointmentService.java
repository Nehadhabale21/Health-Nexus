package com.records.service;

import com.records.dao.AppointmentDao;
import com.records.model.Appointment;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

@Service
public class AppointmentService {

    @Autowired
    private AppointmentDao appointmentDao;

    @Transactional
    public void saveAppointment(Appointment appointment) {
        appointmentDao.saveAppointment(appointment);
    }

    @Transactional
    public List<Appointment> getAllAppointments() {
        return appointmentDao.getAllAppointments();
    }

    @Transactional
    public Appointment getAppointmentById(int id) {
        return appointmentDao.getAppointmentById(id);
    }

    @Transactional
    public void deleteAppointment(int id) {
        appointmentDao.deleteAppointment(id);
    }
}
