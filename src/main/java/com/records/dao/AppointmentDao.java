package com.records.dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.records.model.Appointment;

import java.util.List;

@Repository
public class AppointmentDao {

    @Autowired
    private SessionFactory sessionFactory;

    public void saveAppointment(Appointment appointment) {
        sessionFactory.getCurrentSession().saveOrUpdate(appointment);
    }

    public List<Appointment> getAllAppointments() {
        return sessionFactory.getCurrentSession()
                .createQuery("from Appointment", Appointment.class)
                .list();
    }

    public Appointment getAppointmentById(int id) {
        return sessionFactory.getCurrentSession().get(Appointment.class, id);
    }

    public void deleteAppointment(int id) {
        Appointment appointment = getAppointmentById(id);
        if (appointment != null) {
            sessionFactory.getCurrentSession().delete(appointment);
        }
    }
}
