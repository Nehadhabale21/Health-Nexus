<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
  <title>Bill Form</title>
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
      max-width: 600px;
      background: #fff;
      padding: 30px;
      border-radius: 10px;
      box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
    }

    label {
      display: block;
      margin-bottom: 6px;
      font-weight: bold;
    }

    input[type="text"] {
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
      padding: 10px 20px;
      border-radius: 6px;
      font-size: 1rem;
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
      <h2>Bill Form</h2>
      <form action="<c:url value='/bills' />" method="post">
        <input type="hidden" name="id" value="${bill.id}" />

        <label for="patientName">Patient Name:</label>
        <input type="text" name="patientName" id="patientName" value="${bill.patientName}" required />

        <label for="amount">Amount:</label>
        <input type="text" name="amount" id="amount" value="${bill.amount}" required />

        <label for="details">Details:</label>
        <input type="text" name="details" id="details" value="${bill.details}" required />

        <input type="submit" value="Submit" />
      </form>
    </div>
  </div>
</body>
</html>
