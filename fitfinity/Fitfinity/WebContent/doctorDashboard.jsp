<%@page import="EditHistory.HistoryDAO"%>
<%@page import="ViewPatientList.PListServlet"%>
<%@page import="ViewPatientList.PatientListDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="ViewPatientList.PatientInfo" %>
<%@ page import="java.util.List" %>
<%@ page import="ViewHistory.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Doctor's Dashboard</title>
  <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
  <style>
    <%-- Custom CSS --%>
    body {
      background-color: #f8f9fa;
    }
    a{
    text-decoration: none;
    }
    .navbar {
      background-color: #0bb288;
      box-shadow: 0 4px 6px -1px rgba(0,0,0,0.1);
      padding: 10px 20px;
    }
    .navbar-brand {
      color: white !important;
      font-size: 2.25rem;
      margin-right: auto;
      padding-right: 33%;
    }
    .nav-link{
      color: white !important;
    }
    
    .navbar-toggler {
      position: absolute;
      top: 21px; /* Adjust top position as needed */
      right: 20px; /* Adjust right position as needed */
      z-index: 1000; /* Ensure it's above other elements */
    }
    
    .container {
      margin-top: 20px;
    }
    .dashboard-section {
      padding: 20px;
      margin-bottom: 20px;
      background-color: #fff;
      border-radius: 10px;
      box-shadow: 0 0 10px rgba(0,0,0,0.1);
    }
    .btn-primary {
      background-color: #0bb288 !important;
      border-color: #0bb288 !important;
      width: 100%;
    }
    .btn-primary:hover {
      background-color: #0f886a !important;
      border-color: #0f886a !important;
      text-decoration: none;
    }
    .btn-primary:active, .btn-primary:focus {
      background-color: #0f886a !important;
      border-color: #0f886a !important;
      box-shadow: none !important;
    }
    
    .btn-success {
      background-color: #0bb288;
      border-color: #0bb288;
      width: 100%;
    }
    .patient-container {
      max-height: 570px;
      overflow-y: auto;
    }
    .search-icon:hover {
      background-color: #0bb288 !important;
      border-color: #0bb288 !important;
      cursor: pointer;
    }
    .search-icon {
      transition: transform 0.3s ease;
    }
    .search-icon:hover {
      transform: scale(1.2);
    }
    .search-icon:active {
      transform: scale(0.9);
    }
    .form-control:focus {
      outline: none;
      box-shadow: 0 0 5px 0 #0bb288;
      border-color: #0bb288;
    }
    .back-to-top {
      position: fixed;
      bottom: 40px;
      right: 40px;
      display: none;
      width: 40px;
      height: 40px;
      background-color: #0bb288;
      color: #fff;
      border-radius: 50%;
      text-align: center;
      line-height: 40px;
      cursor: pointer;
      z-index: 9999;
    }
    
    @media (max-width: 767.98px) {
    /* Adjust position for smaller screens */
    .back-to-top {
    bottom: 120px; /* Adjust as needed */
    }
    }
    
    .back-to-top i {
      font-size: 20px;
    }
    
    .back-to-top:hover {
      background-color: #0f886a;
      color: #fff;
    }
    
    .patient-container .row {
	    margin-right: -15px;
	    margin-left: -15px;
	}
	
	.patient-container .col-md-4 {
	    padding-right: 15px;
	    padding-left: 15px;
	}
	
	table {
        width: 100%;
        margin-top: 20px;
        border-collapse: collapse;
        overflow: hidden;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    th, td {
        padding: 12px;
        text-align: center;
        border-bottom: 1px solid #ddd; /* Add a subtle border between rows */
    }

    th {
        background-color: #0bb288;
        color: white;
    }

    tr:nth-child(even) {
        background-color: #f8f9fa; /* Use a light background color for even rows */
    }

    tr:hover {
        background-color: #e0f7fa; /* Highlight the row on hover */
    }
    
    .error-message {
            background-color: #ffcccc;
            color: #ff0000;
            padding: 10px;
            margin-top: 10px;
            border: 1px solid #ff0000;
            border-radius: 5px;
        }
        
        
  </style>
</head>
<body>
<% String userid = (String) request.getAttribute("userId"); %>
  <nav class="navbar navbar-expand-lg navbar-light">
    <a class="navbar-brand" href="#">Dashboard</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav ml-auto">
        <li class="nav-item">
          <a class="nav-link" href="#appointment">Appointment</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#income">Income</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#medical-history">Medical History</a>
        </li>
      </ul>
    </div>
  </nav>
  
  <div class="container">
  <form action="${pageContext.request.contextPath}/ViewHistoryServlet" method="post">
  	<div class="row">
      <%-- 3rd Row: View and Edit Patients' Medical History --%>
      <div class="col-md-12" id="medical-history">
          
          <div class="row">
            <div class="col-md-12">
              <div class="input-group mb-3">
              	<input type="hidden" name="userid" value="<%= userid %>">
                <input type="text" class="form-control" name="id" placeholder="Search Patient Medical History">
                <button style="border: none;" type="submit">
	                <div class="input-group-append">
	                
	                  <span class="input-group-text" style="background-color: #0bb288; border-color: #0bb288;">
	                    <i class="fas fa-search search-icon" style="color: white;"></i>
	                  </span>
	                </div>
                </button>
              </div>
            </div>
          </div>
      </div>
    </div>
    </form>
    
    <% ViewDAO daoo = new ViewDAO();
        String pid = (String) request.getAttribute("pid");
    	List<History> historyList = daoo.viewHistory(pid);
    	
    	if (pid!=null && !pid.isEmpty()) { 
          	if (historyList != null && !historyList.isEmpty()) { %>
            <table>
            <tr>
                <th>Patient Name</th>
                <th>Doctor Name</th>
                <th>Date</th>
                <th>Allergies</th>
                <th>Surgical Procedures</th>
                <th>Past History</th>
                <th>Family History</th>
                <th>Medicine</th>
            </tr>
            
            <% for (History h : historyList) { %>
                <tr>
                    <td><%= h.getPatientName() %></td>
                    <td><%= h.getDoctorName() %></td>
                    <td><%= h.getDate() %></td>
                    <td><%= h.getAllergies() %></td>
                    <td><%= h.getSurgical() %></td>
                    <% String past = h.getPast();
                    	if(past.equals("None")){ %>
                    		<td><%= h.getCurrent() %></td>
                    	<% } else { %>
                    		<td><%= h.getPast() %>, <%=h.getCurrent() %></td>
                    	<% } %>
                    <td><%= h.getFamily() %></td>
                    <td><%= h.getMedicine() %></td>
                </tr>
            <% } %>
        </table>
        <% } else { %>
            <div class="error-message">
                No medical history available for this patient.
            </div>
        <% } %>
    <% } %>
        
    <br>
        
    
    <div class="row">
      <div class="col-md-12" id="appointment">
            <div class="dashboard-section">
            <h2>Appointment</h2>
            <!-- Add your content here for viewing appointments -->
            <div class="patient-container">
			<% 
			   PatientListDAO dao = new PatientListDAO();
			   List<PatientInfo> list = dao.getPatientList(userid); 
			   
			   if (list != null && !list.isEmpty()) {
			       int count = 0; // Counter to keep track of patients
			       for (PatientInfo l : list) {
			           if (count % 3 == 0) {
			%>
			               <div class="row">
			<%
			           }
			%>
			               <div class="col-md-4">
			                   <div class="card">
			                       <div class="card-body">
			                           <h5 class="card-title">Patient Profile</h5>
			                           <p class="card-text">ID: <%= l.getPatientID() %></p>
			                           <p class="card-text">Name: <%= l.getPatientName() %></p>
			                           <p class="card-text">Age: <%= l.getAge() %></p>
			                           <p class="card-text">Gender: <%= l.getGender() %></p>
			                           
			                           
			                           <% String patientID = l.getPatientID();
			                           	  HistoryDAO hdao = new HistoryDAO();
			                           	  
			                           	  boolean isCompleted = hdao.checkCompleted(patientID);
			                           	  
			                           %>
										    
										<a href="<%= isCompleted ? "#" : "./AddHistory.jsp?userid=" + userid %>&patientID=<%= patientID %>">
										   <button type="button" class="btn btn-primary" <%= isCompleted ? "disabled" : "" %>>
										      <%= isCompleted ? "Completed" : "Edit Medical History" %>
										   </button>
										</a>
										
										
			                           
			                       </div>
			                   </div>
			               </div>
			<%
			           count++;
			           if (count % 3 == 0 || count == list.size()) {
			%>
			               </div>
			<%
			           }
			       }
			   } else {
			%>
			       <p>No patients today.</p>
			<%
			   }
			%>
			</div>

      </div>
    </div>
  	</div>
      
    <div class="row">
      <%-- 2nd Row: View Salary --%>
      <div class="col-md-12" id="income">
        <div class="dashboard-section">
          <h2>Income</h2>
          <div class="row">
            <div class="col-md-6">
             <a href="./dailySalary.jsp?userid=<%= userid %>">
              <button type="button" class="btn btn-primary btn-block btn-income">Daily Income</button>
             </a>
            </div>
            <div class="col-md-6">
            <a href="./monthlySalary.jsp?userid=<%= userid %>&hash">
              <button type="button" class="btn btn-primary btn-block btn-income">Monthly Income</button>
              </a>
            </div>
          </div>
        </div>
      </div>
    </div>
    
  </div>
  <a href="#" class="back-to-top" id="backToTop"><i class="fas fa-arrow-up"></i></a>
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <script>
    // Smooth scrolling
    document.querySelectorAll('a[href^="#"]').forEach(anchor => {
      anchor.addEventListener('click', function (e) {
        e.preventDefault();
        document.querySelector(this.getAttribute('href')).scrollIntoView({
          behavior: 'smooth'
        });
      });
    });

    // Show back to top button when scrolling down
    window.addEventListener('scroll', function() {
      var backToTopButton = document.getElementById('backToTop');
      if (window.pageYOffset > 100) {
        backToTopButton.style.display = 'block';
      } else {
        backToTopButton.style.display = 'none';
      }
    });

    // Scroll to top when back to top button is clicked
    document.getElementById('backToTop').addEventListener('click', function(e) {
      e.preventDefault();
      window.scrollTo({
        top: 0,
        behavior: 'smooth'
      });
    });
  </script>
</body>
</html>