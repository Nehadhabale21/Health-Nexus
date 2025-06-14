<html>
<head>
  <title>Health Nexus</title>
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
    background-color: #ffffff;
      display: flex;
      height: calc(100vh - 80px);
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
  position: relative;
  background: url('https://images.unsplash.com/photo-1588776814546-ec7e3eeb7810?auto=format&fit=crop&w=1200&q=80') no-repeat center center;
  background-size: cover;
  display: flex;
  align-items: center;
  justify-content: center;
  overflow: hidden;
}

.content::before {
  content: "";
  position: absolute;
  inset: 0;
  background: linear-gradient(135deg, rgba(0, 64, 128, 0.4), rgba(255, 255, 255, 0.2));
  backdrop-filter: blur(4px);
  z-index: 1;
}

.content-inner {
  position: relative;
  z-index: 2;
  background: rgba(255, 255, 255, 0.9);
  padding: 50px;
  border-radius: 15px;
  max-width: 600px;
  text-align: center;
  box-shadow: 0 6px 30px rgba(0, 0, 0, 0.15);
  transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.content-inner:hover {
  transform: translateY(-5px);
  box-shadow: 0 10px 40px rgba(0, 0, 0, 0.2);
}

.content h2 {
  font-size: 2rem;
  margin-bottom: 20px;
  color: #004080;
  font-weight: bold;
}

.content p {
  font-size: 1.1rem;
  color: #444;
  line-height: 1.6;
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
  <div class="content-inner">
    <h2>Welcome to the Dashboard</h2>
    <p>Use the menu on the left to access and manage hospital records.</p>
  </div>
</div>

  </div>
</body>

</html>
