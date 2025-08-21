# 📝 **HealthNexus - Hospital Management System**

### 📌 **Project Description**

HealthNexus is a web-based Hospital Management System built using Spring MVC, Hibernate, JSP, and MySQL.  
It provides an efficient way to manage doctors, patients, appointments, and hospital workflows with CRUD operations, validation, and secure database integration.  
The system is designed to simplify hospital administration tasks such as patient registration, doctor management, appointment scheduling, billing, and generating reports.

________________________________________

### 🚀 **Features**  

• 👨‍⚕️ Doctor CRUD operations (Add, View, Update, Delete)  

• 🧑‍🤝‍🧑 Patient registration & management  

• 📅 Appointment scheduling & cancellation  

• 🏥 Department management  

• 💵 Billing & invoice generation    

• ✅ Form validation & error handling  

• 🔍 Search & filter patients/doctors  

• 🎨 User-friendly JSP-based interface  

• 💾 Database integration with Hibernate ORM  

________________________________________

### 🛠 **Technologies Used**

• Backend: Spring MVC, Hibernate, Java  

• Frontend: JSP, HTML, CSS, Bootstrap  

• Database: MySQL  

• Build Tool: Maven  

• Server: Apache Tomcat  

________________________________________

### 📂 **Project Structure**


HealthNexus/  
│── src/main/java/com/healthnexus/  
│   ├── controller/                     # Spring MVC Controllers  
│   │     ├── AppointmentController.java  
│   │     ├── BillingController.java  
│   │     ├── DoctorController.java  
│   │     ├── HomeController.java  
│   │     └── PatientController.java  
│   │  
│   ├── dao/                            # Data Access Layer (DAO)  
│   │     ├── AppointmentDao.java  
│   │     ├── BillDao.java  
│   │     ├── DoctorDao.java  
│   │     └── PatientDao.java  
│   │  
│   ├── model/                          # Entity Classes (Hibernate Mapping)  
│   │     ├── Appointment.java  
│   │     ├── Bill.java  
│   │     ├── Doctor.java  
│   │     └── Patient.java  
│   │  
│   ├── service/                        # Business Logic Layer  
│   │     ├── AppointmentService.java  
│   │     ├── BillService.java  
│   │     ├── DoctorService.java  
│   │     └── PatientService.java  
│  
│── src/main/webapp/  
│   ├── WEB-INF/  
│   │     ├── web.xml                      # Deployment Descriptor  
│   │     ├── dispatcher-servlet.xml       # Spring MVC Dispatcher config  
│   │     └── views/                       # JSP Views  
│   │           ├── 🏠 index.jsp                # Home Page  
│   │           ├── 👨‍⚕️ doctor_form.jsp          # Add Doctor Form  
│   │           ├── 👨‍⚕️ doctors.jsp              # Doctor List Page  
│   │           ├── 🧑‍🤝‍🧑 patient_form.jsp        # Add Patient Form  
│   │           ├── 🧑‍🤝‍🧑 patients.jsp            # Patient List Page  
│   │           ├── 📅 appointment_form.jsp       # Appointment Booking Form  
│   │           ├── 📅 appointments.jsp           # Appointments List Page  
│   │           ├── 💵 bill_form.jsp              # Generate Bill Form  
│   │           └── 💵 bills.jsp                  # Bills List Page  
│  
│── pom.xml                               # Maven dependencies & build settings  
 

________________________________________

### 🏆 **Challenges Faced** 

• ⚙️ Configuration Issues – Initial setup of Spring MVC & Hibernate integration. 

• 🗓 Appointment Handling – Implementing date/time with `LocalDateTime`.  

• 🔄 Session & Transaction Management – Ensured proper commit/rollback in Hibernate.  

• 🔑 Role-based Access – Managing Admin/Doctor/Staff login with different privileges.

• 🎨 Frontend & Backend Integration – Debugging JSP + Controller mapping.  

• 🚀 Deployment – Fixed Apache Tomcat errors (URL mappings, missing libs).  

________________________________________

### 🔮 **Future Enhancements** 

• ⏱ Patient medical history tracking  

• 📊 Dashboard with analytics & hospital reports  

• 🌐 REST API integration for third-party systems  

• 🔔 SMS & Email notifications for appointments  

• 💳 Online payment gateway integration  

• 🔒 JWT authentication & enhanced security  

________________________________________

### 📸 **Screenshots**

#### 🏠 **Home Page / Dashboard** 

<img width="1879" height="890" alt="Home Page" src="https://github.com/user-attachments/assets/595e5f43-8d5c-448b-94f2-07f07367d85e" />


#### 👨‍⚕️ **Doctor Form** 

<img width="1854" height="876" alt="Doctor Form" src="https://github.com/user-attachments/assets/8faadde0-c736-4c9d-b01b-678db359c4d0" />


#### 👨‍⚕️ **Doctor List** 

<img width="1909" height="877" alt="Doctor List" src="https://github.com/user-attachments/assets/66f211a2-8b52-45a4-ae23-b5bc482d76b9" />


#### 🧑‍🤝‍🧑 **Patient Form**  

<img width="1885" height="885" alt="Patient Form" src="https://github.com/user-attachments/assets/1e96dba2-3789-4c3b-8512-4918e871a6eb" />


#### 🧑‍🤝‍🧑 **Patient List**  

<img width="1888" height="871" alt="Patient List" src="https://github.com/user-attachments/assets/3f75cc44-25d9-4070-a1f0-b28e2b277351" />


#### 📅 **Appointment Form**

<img width="1847" height="862" alt="Appoinment Form" src="https://github.com/user-attachments/assets/8a16c64a-b8ab-4a08-b377-adf70419d725" />


#### 📅 **Appointment List**

<img width="1888" height="887" alt="Appointment List" src="https://github.com/user-attachments/assets/62af11d3-94e1-4925-b935-fed5536ce7a2" />


#### 💵 **Bill Form**  

<img width="1889" height="881" alt="Bill Form" src="https://github.com/user-attachments/assets/10aa98d0-8f36-403a-99ae-8d94738d714d" />


#### 💵 **Bill List**  
  
 <img width="1884" height="861" alt="Bill List" src="https://github.com/user-attachments/assets/9996910c-271b-41cc-b5ae-262f9d855a39" />

 

