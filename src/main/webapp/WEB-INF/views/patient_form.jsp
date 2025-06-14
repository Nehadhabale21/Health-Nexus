<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
  <title>Patient Form</title>
  <style>
    body {
      margin: 0;
      font-family: Arial, sans-serif;
      background-color: #f9f9f9;
      color: #333;
    }

    header {
      background-color: #004080;
      color: white;
      padding: 20px;
      text-align: center;
      font-size: 1.8rem;
    }

    .container {
      display: flex;
      height: calc(100vh - 80px);
      background-color: #ffffff;
    }

    nav {
      width: 250px;
      background-color: #e0e7f0;
      padding-top: 40px;
      box-shadow: 2px 0 5px rgba(0, 0, 0, 0.05);
    }

    nav ul {
      list-style: none;
      padding: 0;
    }

    nav li {
      margin: 0;
    }

    nav a {
      display: block;
      padding: 15px 30px;
      text-decoration: none;
      color: #003366;
      font-size: 1.1rem;
      border-left: 4px solid transparent;
      transition: all 0.2s ease;
    }

    nav a:hover {
      background-color: #d0deed;
      border-left: 4px solid #004080;
    }

    .content {
      flex: 1;
      padding: 40px;
    }

    h2 {
      color: #004080;
      margin-bottom: 20px;
    }

    form {
      max-width: 500px;
      background: #fff;
      padding: 30px;
      border-radius: 10px;
      box-shadow: 0 6px 20px rgba(0, 0, 0, 0.08);
    }

    label {
      display: block;
      margin-bottom: 8px;
      font-weight: bold;
      color: #004080;
    }

    input[type="text"],
    input[type="date"] {
      width: 100%;
      padding: 10px;
      margin-bottom: 20px;
      border: 1px solid #ccc;
      border-radius: 6px;
      font-size: 1rem;
    }

    input[type="submit"] {
      background-color: #004080;
      color: white;
      border: none;
      padding: 12px 25px;
      font-size: 1rem;
      border-radius: 6px;
      cursor: pointer;
      transition: background-color 0.3s ease;
    }

    input[type="submit"]:hover {
      background-color: #003366;
    }
  </style>
</head>
<body>
  <header>Health Nexus</header>
  <div class="container">
    <nav>
       <ul>
        <li><a href="${pageContext.request.contextPath}/patients">Patients</a></li>
        <li><a href="${pageContext.request.contextPath}/doctors">Doctors</a></li>
        <li><a href="${pageContext.request.contextPath}/appointments">Appointments</a></li>
        <li><a href="${pageContext.request.contextPath}/bills">Bills</a></li>
      </ul>
    </nav>
    <div class="content">
      <h2>Patient Form</h2>
      <form action="<c:url value='/patients' />" method="post">
        <input type="hidden" name="id" value="${patient.id}" />

        <label for="name">Name</label>
        <input type="text" id="name" name="name" value="${patient.name}" required />

        <label for="age">Age</label>
        <input type="text" id="age" name="age" value="${patient.age}" required />

        <label for="gender">Gender</label>
        <input type="text" id="gender" name="gender" value="${patient.gender}" required />

        <label for="address">Address</label>
        <input type="text" id="address" name="address" value="${patient.address}" required />

        <input type="submit" value="Submit" />
      </form>
    </div>
  </div>
</body>
</html>
