package com.records.controller;

import com.records.model.Appointment;
import com.records.service.AppointmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;

import java.beans.PropertyEditorSupport;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/appointments")
public class AppointmentController {

    @Autowired
    private AppointmentService appointmentService;

    @GetMapping
    public String listAppointments(Model model) {
        List<Appointment> appointments = appointmentService.getAllAppointments();
        model.addAttribute("appointments", appointments);
        return "appointments";
    }

    @GetMapping("/new")
    public String showForm(Model model) {
        model.addAttribute("appointment", new Appointment());
        return "appointment_form";
    }

   
    @PostMapping
    public String saveAppointment(
        @RequestParam("id") Integer id,
        @RequestParam("patientName") String patientName,
        @RequestParam("doctorName") String doctorName,
        @RequestParam("datePart") String datePart,
        @RequestParam("timePart") String timePart
    ) {
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd'T'HH:mm");
        LocalDateTime appointmentDateTime = LocalDateTime.parse(datePart + "T" + timePart, formatter);

        Appointment appointment = new Appointment();
        appointment.setId(id);
        appointment.setPatientName(patientName);
        appointment.setDoctorName(doctorName);
        appointment.setAppointmentDate(appointmentDateTime);

        appointmentService.saveAppointment(appointment);
        return "redirect:/appointments";
    }


    @GetMapping("/edit/{id}")
    public String editAppointment(@PathVariable int id, Model model) {
        Appointment appointment = appointmentService.getAppointmentById(id);
        model.addAttribute("appointment", appointment);
        return "appointment_form";
    }

    @GetMapping("/delete/{id}")
    public String deleteAppointment(@PathVariable int id) {
        appointmentService.deleteAppointment(id);
        return "redirect:/appointments";
    }
    
   
   
}
