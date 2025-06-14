<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
  <title>Patients</title>
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
      overflow-y: auto;
    }

    h2 {
      color: #004080;
      margin-bottom: 20px;
    }

    a.button {
      display: inline-block;
      margin-bottom: 20px;
      padding: 10px 20px;
      background-color: #004080;
      color: white;
      text-decoration: none;
      border-radius: 6px;
      transition: background-color 0.3s ease;
    }

    a.button:hover {
      background-color: #003366;
    }

    table {
      width: 100%;
      border-collapse: collapse;
      background-color: #fff;
      box-shadow: 0 4px 20px rgba(0, 0, 0, 0.05);
    }

    th, td {
      padding: 12px 15px;
      border: 1px solid #ddd;
      text-align: left;
    }

    th {
      background-color: #f0f4f8;
      color: #004080;
    }

    tr:hover {
      background-color: #f9f9f9;
    }

    td a {
      color: #004080;
      text-decoration: none;
      margin: 0 5px;
    }

    td a:hover {
      text-decoration: underline;
    }
    
    .edit-link {
	  color: #007bff; 
	}
	
	.edit-link:hover {
	  text-decoration: underline;
	  color: #0056b3;
	}
	
	.delete-link {
	  color: #dc3545; 
	}
	
	.delete-link:hover {
	  text-decoration: underline;
	  color: #a71d2a;
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
      <h2>Patient List</h2>
      <a href="patients/new" class="button">Add New Patient</a>
      <table>
        <tr>
          <th>ID</th>
          <th>Name</th>
          <th>Age</th>
          <th>Gender</th>
          <th>Address</th>
          <th>Actions</th>
        </tr>
        <c:forEach var="patient" items="${patients}">
          <tr>
            <td>${patient.id}</td>
            <td>${patient.name}</td>
            <td>${patient.age}</td>
            <td>${patient.gender}</td>
            <td>${patient.address}</td>
            <td>
              <a href="patients/edit/${patient.id}" class="edit-link">Edit</a> |
              <a href="patients/delete/${patient.id}" class="delete-link" onclick="return confirm('Are you sure you want to delete this patient?');">Delete</a>

            </td>
          </tr>
        </c:forEach>
        
        <a href="index" class="button">Dashboard</a>
      </table>
    </div>
  </div>
</body>
</html>
