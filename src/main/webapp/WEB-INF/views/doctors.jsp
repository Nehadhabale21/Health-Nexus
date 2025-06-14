<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
  <title>Doctors</title>
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
      padding: 10px 20px;
      margin-bottom: 20px;
      background-color: #004080;
      color: white;
      text-decoration: none;
      border-radius: 5px;
      transition: background 0.3s;
    }

    a.button:hover {
      background-color: #003366;
    }

    table {
      width: 100%;
      border-collapse: collapse;
      background: white;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.05);
    }

    th, td {
      padding: 12px 15px;
      text-align: left;
      border-bottom: 1px solid #ddd;
    }

    th {
      background-color: #e0e7f0;
      color: #004080;
    }

    td a {
      color: #004080;
      text-decoration: none;
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
      <h2>Doctor List</h2>
      <a href="doctors/new" class="button">Add New Doctor</a>
      <table>
        <tr>
          <th>ID</th>
          <th>Name</th>
          <th>Specialization</th>
          <th>Contact</th>
          <th>Actions</th>
        </tr>
        <c:forEach var="doctor" items="${doctors}">
          <tr>
            <td>${doctor.id}</td>
            <td>${doctor.name}</td>
            <td>${doctor.specialization}</td>
            <td>${doctor.contact}</td>
            <td>
              <a href="doctors/edit/${doctor.id}" class="edit-link">Edit</a> |
              <a href="doctors/delete/${doctor.id}" class="delete-link" onclick="return confirm('Are you sure you want to delete this doctor?');">Delete</a>
              
            </td>
          </tr>
        </c:forEach>
        <a href="index" class="button">Dashboard</a>
      </table>
    </div>
  </div>
</body>
</html>
