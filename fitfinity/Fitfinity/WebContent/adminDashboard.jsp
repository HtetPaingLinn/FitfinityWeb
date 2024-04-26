<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Healthcare Hospital Admin Dashboard</title>
  <link rel="icon" href="./assets/image/logo/logo.svg" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
  <link
    href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
    rel="stylesheet"
    integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
    crossorigin="anonymous"
  />
    <script
    src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
    crossorigin="anonymous"
  ></script>
  <link
    rel="stylesheet"
    href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
  />
	<link rel="stylesheet" href="assets/css/bootstrap-5.0.5-alpha.min.css" />
  <link rel="stylesheet" href="assets/css/LineIcons.2.0.css" />
  <link rel="stylesheet" href="assets/css/animate.css" />
  <link rel="stylesheet" href="assets/css/tiny-slider.css" />
  <link rel="stylesheet" href="assets/css/main.css" />
    <link
    href="https://fonts.googleapis.com/css2?family=Nunito:wght@500&display=swap"
    rel="stylesheet"
  />
  <link
    href="https://fonts.googleapis.com/css2?family=Pacifico&display=swap"
    rel="stylesheet"
  />
  <!-- Custom CSS -->
  <style>
    /* Add custom styles here */
    body {
      font-family: Arial, sans-serif;
    }
    .container {
      margin-top: 50px;
    }
    .btn-custom {
      background-color: #ffaf24;
      border-color: #ffaf24;
      color: #fff;
    }
    .btn-custom:hover {
      color: #fff;
      background-color: #e59500;
      border-color: #e59500;
    }
  </style>
</head>
<body>
<nav class="navbar navbar-expand-lg">
                <a style="margin-left: 20px" class="navbar-brand" href="./main.jsp">
                  <img
                    style="width: 70px"
                    src="assets/image/logo/MainLogosvg.svg"
                    alt="Logo"
                  />
                  <h4 style="display: inline">
                    <span
                      style="
                        color: #0bb288;
                        margin-left: 0px;
                        font-family: 'Nunito', sans-serif;
                        font-weight: 700;
                      "
                      >FitFinity</span
                    >
                    <span
                      style="
                        color: #af976d;
                        margin-left: 0px;
                        font-family: 'Nunito', sans-serif;
                        font-weight: 700;
                      "
                      >Healthcare</span
                    >
                  </h4>
                  <h6
                    style="margin-left: 26%; margin-top: -5%"
                    class="navDiv"
                  >
                    <span
                      style="color: #af976d; font-family: 'Pacifico', cursive"
                      >Health For</span
                    >
                    <span
                      style="color: #0bb288; font-family: 'Pacifico', cursive"
                      >Everyone</span
                    >
                  </h6>
                </a>
                <button
                  class="navbar-toggler"
                  type="button"
                  data-toggle="collapse"
                  data-target="#navbarSupportedContent"
                  aria-controls="navbarSupportedContent"
                  aria-expanded="false"
                  aria-label="Toggle navigation"
                >
                  <span class="toggler-icon"></span>
                  <span class="toggler-icon"></span>
                  <span class="toggler-icon"></span>
                </button>

                <div style="margin-left: 60%"
                  class="collapse navbar-collapse sub-menu-bar"
                  id="navbarSupportedContent"
                >
                  <ul  id="nav" class="navbar-nav">
                    <li class="nav-item active mt-3">

                    <li class="nav-item mt-1">
                      <div class="dropdown-center me-5">
                        <button class="btn p-1 pe-2 ps-2 rounded-3" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                          <i style="color: #E8BD70; font-size: 30px;" class="fa-solid fa-user"></i>
                        </button>
                        <ul class="dropdown-menu">
                          <li><a style="font-size: 17px;" class="dropdown-item" href="#"> Admin <img style="margin-left: 30px;" class=" rounded-circle" width="50px" src="/image/profile1.jpg" alt=""></a></li>
                          <li><hr class="dropdown-divider"></li>
                          <li><a style="font-size: 17px;" class="dropdown-item" href="./main.jsp">LogOut</a></li>
                        </ul>
                    </li>
                  </ul>
                </div>
                <!-- navbar collapse -->
              </nav>
<div class="container">
  <h1>Admin Dashboard</h1>
  <hr />
  <div class="row">
    <div class="col-md-4">
      <div class="card">
        <div class="card-body">
          <h5 class="card-title">Create Doctor Profile</h5>
          <p class="card-text">
            Click below to create a new doctor profile.
          </p>
          <a href="./drSignUp.jsp" class="btn btn-success"
            >Create Profile</a
          >
        </div>
      </div>
    </div>
    <div class="col-md-4">
      <div class="card">
        <div class="card-body">
          <h5 class="card-title">Set Doctor's Schedule</h5>
          <p class="card-text">
            Click below to set the schedule for doctors.
          </p>
          <a href="./DrSchedule.jsp" class="btn btn-success"
            >Set Schedule</a
          >
        </div>
      </div>
    </div>
        <div class="col-md-4">
      <div class="card">
        <div class="card-body">
          <h5 class="card-title">Set Doctor's Salary</h5>
          <p class="card-text">
            Click below to set the income for doctors.
          </p>
          <a href="./salaryList.jsp" class="btn btn-success"
            >View Income</a
          >
        </div>
      </div>
    </div>
  </div>
</div>

<div class="container mt-5">
  <div class="row">
    <div class="">
      <h2 class="mb-4">Delete Doctor</h2>
      <form action="./DeleteDoctorRecordsServlet" method="POST">
        <div style="display: inline;" class="form-group">
          <input placeholder="Doctor ID" style="width: 20%; display: inline;" type="text" class="form-control" id="doctorID" name="doctorID" required>
        </div>
        <button type="submit" onclick="confirmDelete()" class="btn btn-custom">Delete</button>
      </form>
    </div>
  </div>
</div>

<!-- Bootstrap JS (Optional) -->
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<!-- JavaScript for confirmation -->
<script>
function confirmDelete() {
    // Get the value of the Doctor ID input field
    var doctorID = document.getElementById("doctorID").value.trim();
    
    // Check if the Doctor ID is empty
    if (doctorID === "") {
      // If Doctor ID is empty, don't show confirmation message
      return;
    }
    
    // If Doctor ID is not empty, show confirmation message
    var confirmation = confirm("Are you sure you want to delete this doctor?");
    if (confirmation) {
      // If user confirms, submit the form
      document.getElementById("deleteForm").submit();
    }
  }
</script>
</body>
</html>