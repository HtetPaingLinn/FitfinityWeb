/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.85
 * Generated at: 2024-03-03 11:44:12 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class adminDashboard_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET, POST or HEAD. Jasper also permits OPTIONS");
        return;
      }
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("<head>\r\n");
      out.write("  <meta charset=\"UTF-8\" />\r\n");
      out.write("  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />\r\n");
      out.write("  <title>Healthcare Hospital Admin Dashboard</title>\r\n");
      out.write("  <link rel=\"icon\" href=\"./assets/image/logo/logo.svg\" />\r\n");
      out.write("  <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css\" integrity=\"sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==\" crossorigin=\"anonymous\" referrerpolicy=\"no-referrer\" />\r\n");
      out.write("  <link\r\n");
      out.write("    href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css\"\r\n");
      out.write("    rel=\"stylesheet\"\r\n");
      out.write("    integrity=\"sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH\"\r\n");
      out.write("    crossorigin=\"anonymous\"\r\n");
      out.write("  />\r\n");
      out.write("    <script\r\n");
      out.write("    src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js\"\r\n");
      out.write("    integrity=\"sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz\"\r\n");
      out.write("    crossorigin=\"anonymous\"\r\n");
      out.write("  ></script>\r\n");
      out.write("  <link\r\n");
      out.write("    rel=\"stylesheet\"\r\n");
      out.write("    href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css\"\r\n");
      out.write("  />\r\n");
      out.write("	<link rel=\"stylesheet\" href=\"assets/css/bootstrap-5.0.5-alpha.min.css\" />\r\n");
      out.write("  <link rel=\"stylesheet\" href=\"assets/css/LineIcons.2.0.css\" />\r\n");
      out.write("  <link rel=\"stylesheet\" href=\"assets/css/animate.css\" />\r\n");
      out.write("  <link rel=\"stylesheet\" href=\"assets/css/tiny-slider.css\" />\r\n");
      out.write("  <link rel=\"stylesheet\" href=\"assets/css/main.css\" />\r\n");
      out.write("    <link\r\n");
      out.write("    href=\"https://fonts.googleapis.com/css2?family=Nunito:wght@500&display=swap\"\r\n");
      out.write("    rel=\"stylesheet\"\r\n");
      out.write("  />\r\n");
      out.write("  <link\r\n");
      out.write("    href=\"https://fonts.googleapis.com/css2?family=Pacifico&display=swap\"\r\n");
      out.write("    rel=\"stylesheet\"\r\n");
      out.write("  />\r\n");
      out.write("  <!-- Custom CSS -->\r\n");
      out.write("  <style>\r\n");
      out.write("    /* Add custom styles here */\r\n");
      out.write("    body {\r\n");
      out.write("      font-family: Arial, sans-serif;\r\n");
      out.write("    }\r\n");
      out.write("    .container {\r\n");
      out.write("      margin-top: 50px;\r\n");
      out.write("    }\r\n");
      out.write("    .btn-custom {\r\n");
      out.write("      background-color: #ffaf24;\r\n");
      out.write("      border-color: #ffaf24;\r\n");
      out.write("      color: #fff;\r\n");
      out.write("    }\r\n");
      out.write("    .btn-custom:hover {\r\n");
      out.write("      color: #fff;\r\n");
      out.write("      background-color: #e59500;\r\n");
      out.write("      border-color: #e59500;\r\n");
      out.write("    }\r\n");
      out.write("  </style>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("<nav class=\"navbar navbar-expand-lg\">\r\n");
      out.write("                <a style=\"margin-left: 20px\" class=\"navbar-brand\" href=\"./main.jsp\">\r\n");
      out.write("                  <img\r\n");
      out.write("                    style=\"width: 70px\"\r\n");
      out.write("                    src=\"assets/image/logo/MainLogosvg.svg\"\r\n");
      out.write("                    alt=\"Logo\"\r\n");
      out.write("                  />\r\n");
      out.write("                  <h4 style=\"display: inline\">\r\n");
      out.write("                    <span\r\n");
      out.write("                      style=\"\r\n");
      out.write("                        color: #0bb288;\r\n");
      out.write("                        margin-left: 0px;\r\n");
      out.write("                        font-family: 'Nunito', sans-serif;\r\n");
      out.write("                        font-weight: 700;\r\n");
      out.write("                      \"\r\n");
      out.write("                      >FitFinity</span\r\n");
      out.write("                    >\r\n");
      out.write("                    <span\r\n");
      out.write("                      style=\"\r\n");
      out.write("                        color: #af976d;\r\n");
      out.write("                        margin-left: 0px;\r\n");
      out.write("                        font-family: 'Nunito', sans-serif;\r\n");
      out.write("                        font-weight: 700;\r\n");
      out.write("                      \"\r\n");
      out.write("                      >Healthcare</span\r\n");
      out.write("                    >\r\n");
      out.write("                  </h4>\r\n");
      out.write("                  <h6\r\n");
      out.write("                    style=\"margin-left: 26%; margin-top: -5%\"\r\n");
      out.write("                    class=\"navDiv\"\r\n");
      out.write("                  >\r\n");
      out.write("                    <span\r\n");
      out.write("                      style=\"color: #af976d; font-family: 'Pacifico', cursive\"\r\n");
      out.write("                      >Health For</span\r\n");
      out.write("                    >\r\n");
      out.write("                    <span\r\n");
      out.write("                      style=\"color: #0bb288; font-family: 'Pacifico', cursive\"\r\n");
      out.write("                      >Everyone</span\r\n");
      out.write("                    >\r\n");
      out.write("                  </h6>\r\n");
      out.write("                </a>\r\n");
      out.write("                <button\r\n");
      out.write("                  class=\"navbar-toggler\"\r\n");
      out.write("                  type=\"button\"\r\n");
      out.write("                  data-toggle=\"collapse\"\r\n");
      out.write("                  data-target=\"#navbarSupportedContent\"\r\n");
      out.write("                  aria-controls=\"navbarSupportedContent\"\r\n");
      out.write("                  aria-expanded=\"false\"\r\n");
      out.write("                  aria-label=\"Toggle navigation\"\r\n");
      out.write("                >\r\n");
      out.write("                  <span class=\"toggler-icon\"></span>\r\n");
      out.write("                  <span class=\"toggler-icon\"></span>\r\n");
      out.write("                  <span class=\"toggler-icon\"></span>\r\n");
      out.write("                </button>\r\n");
      out.write("\r\n");
      out.write("                <div style=\"margin-left: 60%\"\r\n");
      out.write("                  class=\"collapse navbar-collapse sub-menu-bar\"\r\n");
      out.write("                  id=\"navbarSupportedContent\"\r\n");
      out.write("                >\r\n");
      out.write("                  <ul  id=\"nav\" class=\"navbar-nav\">\r\n");
      out.write("                    <li class=\"nav-item active mt-3\">\r\n");
      out.write("\r\n");
      out.write("                    <li class=\"nav-item mt-1\">\r\n");
      out.write("                      <div class=\"dropdown-center me-5\">\r\n");
      out.write("                        <button class=\"btn p-1 pe-2 ps-2 rounded-3\" type=\"button\" data-bs-toggle=\"dropdown\" aria-expanded=\"false\">\r\n");
      out.write("                          <i style=\"color: #E8BD70; font-size: 30px;\" class=\"fa-solid fa-user\"></i>\r\n");
      out.write("                        </button>\r\n");
      out.write("                        <ul class=\"dropdown-menu\">\r\n");
      out.write("                          <li><a style=\"font-size: 17px;\" class=\"dropdown-item\" href=\"#\"> Admin <img style=\"margin-left: 30px;\" class=\" rounded-circle\" width=\"50px\" src=\"/image/profile1.jpg\" alt=\"\"></a></li>\r\n");
      out.write("                          <li><hr class=\"dropdown-divider\"></li>\r\n");
      out.write("                          <li><a style=\"font-size: 17px;\" class=\"dropdown-item\" href=\"./main.jsp\">LogOut</a></li>\r\n");
      out.write("                        </ul>\r\n");
      out.write("                    </li>\r\n");
      out.write("                  </ul>\r\n");
      out.write("                </div>\r\n");
      out.write("                <!-- navbar collapse -->\r\n");
      out.write("              </nav>\r\n");
      out.write("<div class=\"container\">\r\n");
      out.write("  <h1>Admin Dashboard</h1>\r\n");
      out.write("  <hr />\r\n");
      out.write("  <div class=\"row\">\r\n");
      out.write("    <div class=\"col-md-4\">\r\n");
      out.write("      <div class=\"card\">\r\n");
      out.write("        <div class=\"card-body\">\r\n");
      out.write("          <h5 class=\"card-title\">Create Doctor Profile</h5>\r\n");
      out.write("          <p class=\"card-text\">\r\n");
      out.write("            Click below to create a new doctor profile.\r\n");
      out.write("          </p>\r\n");
      out.write("          <a href=\"./drSignUp.jsp\" class=\"btn btn-success\"\r\n");
      out.write("            >Create Profile</a\r\n");
      out.write("          >\r\n");
      out.write("        </div>\r\n");
      out.write("      </div>\r\n");
      out.write("    </div>\r\n");
      out.write("    <div class=\"col-md-4\">\r\n");
      out.write("      <div class=\"card\">\r\n");
      out.write("        <div class=\"card-body\">\r\n");
      out.write("          <h5 class=\"card-title\">Set Doctor's Schedule</h5>\r\n");
      out.write("          <p class=\"card-text\">\r\n");
      out.write("            Click below to set the schedule for doctors.\r\n");
      out.write("          </p>\r\n");
      out.write("          <a href=\"./DrSchedule.jsp\" class=\"btn btn-success\"\r\n");
      out.write("            >Set Schedule</a\r\n");
      out.write("          >\r\n");
      out.write("        </div>\r\n");
      out.write("      </div>\r\n");
      out.write("    </div>\r\n");
      out.write("        <div class=\"col-md-4\">\r\n");
      out.write("      <div class=\"card\">\r\n");
      out.write("        <div class=\"card-body\">\r\n");
      out.write("          <h5 class=\"card-title\">Set Doctor's Salary</h5>\r\n");
      out.write("          <p class=\"card-text\">\r\n");
      out.write("            Click below to set the income for doctors.\r\n");
      out.write("          </p>\r\n");
      out.write("          <a href=\"./salaryList.jsp\" class=\"btn btn-success\"\r\n");
      out.write("            >View Income</a\r\n");
      out.write("          >\r\n");
      out.write("        </div>\r\n");
      out.write("      </div>\r\n");
      out.write("    </div>\r\n");
      out.write("  </div>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("<div class=\"container mt-5\">\r\n");
      out.write("  <div class=\"row\">\r\n");
      out.write("    <div class=\"\">\r\n");
      out.write("      <h2 class=\"mb-4\">Delete Doctor</h2>\r\n");
      out.write("      <form action=\"./DeleteDoctorRecordsServlet\" method=\"POST\">\r\n");
      out.write("        <div style=\"display: inline;\" class=\"form-group\">\r\n");
      out.write("          <input placeholder=\"Doctor ID\" style=\"width: 20%; display: inline;\" type=\"text\" class=\"form-control\" id=\"doctorID\" name=\"doctorID\" required>\r\n");
      out.write("        </div>\r\n");
      out.write("        <button type=\"submit\" onclick=\"confirmDelete()\" class=\"btn btn-custom\">Delete</button>\r\n");
      out.write("      </form>\r\n");
      out.write("    </div>\r\n");
      out.write("  </div>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("<!-- Bootstrap JS (Optional) -->\r\n");
      out.write("<script src=\"https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js\"></script>\r\n");
      out.write("<!-- JavaScript for confirmation -->\r\n");
      out.write("<script>\r\n");
      out.write("function confirmDelete() {\r\n");
      out.write("    // Get the value of the Doctor ID input field\r\n");
      out.write("    var doctorID = document.getElementById(\"doctorID\").value.trim();\r\n");
      out.write("    \r\n");
      out.write("    // Check if the Doctor ID is empty\r\n");
      out.write("    if (doctorID === \"\") {\r\n");
      out.write("      // If Doctor ID is empty, don't show confirmation message\r\n");
      out.write("      return;\r\n");
      out.write("    }\r\n");
      out.write("    \r\n");
      out.write("    // If Doctor ID is not empty, show confirmation message\r\n");
      out.write("    var confirmation = confirm(\"Are you sure you want to delete this doctor?\");\r\n");
      out.write("    if (confirmation) {\r\n");
      out.write("      // If user confirms, submit the form\r\n");
      out.write("      document.getElementById(\"deleteForm\").submit();\r\n");
      out.write("    }\r\n");
      out.write("  }\r\n");
      out.write("</script>\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}