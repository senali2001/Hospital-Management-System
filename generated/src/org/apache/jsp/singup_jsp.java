package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class singup_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/component/allcss.jsp");
    _jspx_dependants.add("/component/navbar.jsp");
  }

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_remove_var_scope_nobody;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_if_test;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_remove_var_scope_nobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_if_test = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_remove_var_scope_nobody.release();
    _jspx_tagPool_c_if_test.release();
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

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
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("    \n");
      out.write("    \n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<meta charset=\"UTF-8\">\n");
      out.write("<title>NovaLife Hospital</title>\n");
      out.write("<style>\n");
      out.write("    :root {\n");
      out.write("        --midnight-green: #004d40;\n");
      out.write("       \n");
      out.write("    }\n");
      out.write("\n");
      out.write("    .point-card {\n");
      out.write("        box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);\n");
      out.write("    }\n");
      out.write("</style>\n");
      out.write("\n");
      out.write("<!-- Bootstrap CSS -->\n");
      out.write("<link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("<!-- Font Awesome -->\n");
      out.write("<link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css\">\n");
      out.write("\n");
      out.write("<style>\n");
      out.write("    :root {\n");
      out.write("        --midnight-green: #004d40;\n");
      out.write("\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    /* Card styling */\n");
      out.write("    .point-card {\n");
      out.write("        box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);\n");
      out.write("        border-radius: 10px;\n");
      out.write("        background-color: #ffffff;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    /* Login button */\n");
      out.write("    .btn.bg-success {\n");
      out.write("        background-color: #004953 !important;  /* Midnight Green */\n");
      out.write("        color: #ffffff !important;              /* White text */\n");
      out.write("\n");
      out.write("        font-weight: 500;\n");
      out.write("        border: none;\n");
      out.write("        transition: background-color 0.3s ease;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    .btn.bg-success:hover {\n");
      out.write("        background-color: #00695c !important;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    /* Create account link */\n");
      out.write("    .clink {\n");
      out.write("        color: #007bff;\n");
      out.write("        text-decoration: none;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    .clink:hover {\n");
      out.write("        text-decoration: underline;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("\n");
      out.write("    /* admin*/\n");
      out.write("\n");
      out.write("    .paint-card {\n");
      out.write("        box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);\n");
      out.write("        border-radius: 10px;\n");
      out.write("        transition: transform 0.3s ease-in-out;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    .paint-card:hover {\n");
      out.write("        transform: scale(1.02);\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    .admin-navbar {\n");
      out.write("        background-color: #004953;  /* This is a shade of midnight green */\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    .admin-navbar .navbar-brand,\n");
      out.write("    .admin-navbar .nav-link,\n");
      out.write("    .admin-navbar .dropdown-menu a {\n");
      out.write("        color: #fff !important;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    .admin-navbar .btn-light {\n");
      out.write("        background-color: #ffffff;\n");
      out.write("        color: #198754;\n");
      out.write("        border: none;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    /* Admin Navbar styles */\n");
      out.write("    .navbar {\n");
      out.write("        background-color: #004d40;\n");
      out.write("        color: white;\n");
      out.write("        position: fixed;\n");
      out.write("        top: 15px;\n");
      out.write("        left: 20px;\n");
      out.write("        right: 20px;\n");
      out.write("        z-index: 1000;\n");
      out.write("        border-radius: 12px;\n");
      out.write("        padding: 10px 20px;\n");
      out.write("        display: flex;\n");
      out.write("        align-items: center;\n");
      out.write("        justify-content: space-between;\n");
      out.write("        flex-wrap: wrap;\n");
      out.write("        box-shadow: 0 4px 10px rgba(0,0,0,0.1);\n");
      out.write("        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    .navbar-header {\n");
      out.write("        display: flex;\n");
      out.write("        align-items: center;\n");
      out.write("        justify-content: space-between;\n");
      out.write("        width: 100%;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    .logo {\n");
      out.write("        color: white;\n");
      out.write("        font-size: 22px;\n");
      out.write("        font-weight: 700;\n");
      out.write("        text-decoration: none;\n");
      out.write("        display: flex;\n");
      out.write("        align-items: center;\n");
      out.write("        gap: 8px;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    .logo i {\n");
      out.write("        font-size: 26px;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    .menu-icon {\n");
      out.write("        font-size: 28px;\n");
      out.write("        color: white;\n");
      out.write("        cursor: pointer;\n");
      out.write("        display: none;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    .nav-links {\n");
      out.write("        display: flex;\n");
      out.write("        justify-content: flex-end;\n");
      out.write("        align-items: center;\n");
      out.write("        gap: 20px;\n");
      out.write("        flex-grow: 1;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    .nav-links a, .nav-links .btn {\n");
      out.write("        color: white;\n");
      out.write("        padding: 8px 14px;\n");
      out.write("        text-decoration: none;\n");
      out.write("        font-size: 16px;\n");
      out.write("        border-radius: 8px;\n");
      out.write("        background: transparent;\n");
      out.write("        border: none;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    .nav-links a:hover, .nav-links .btn:hover {\n");
      out.write("        background-color: #26a69a;\n");
      out.write("        color: white;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    .dropdown {\n");
      out.write("        position: relative;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    .dropdown-menu {\n");
      out.write("        position: absolute;\n");
      out.write("        right: 0;\n");
      out.write("        background-color: white;\n");
      out.write("        color: black;\n");
      out.write("        border-radius: 8px;\n");
      out.write("        box-shadow: 0 4px 10px rgba(0,0,0,0.15);\n");
      out.write("        margin-top: 8px;\n");
      out.write("        display: none;\n");
      out.write("        min-width: 140px;\n");
      out.write("        z-index: 1100;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    .dropdown:hover .dropdown-menu {\n");
      out.write("        display: block;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    .dropdown-menu li a {\n");
      out.write("        color: black;\n");
      out.write("        padding: 10px 16px;\n");
      out.write("        display: block;\n");
      out.write("        text-decoration: none;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    .dropdown-menu li a:hover {\n");
      out.write("        background-color: #eee;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    @media screen and (max-width: 768px) {\n");
      out.write("        .menu-icon {\n");
      out.write("            display: block;\n");
      out.write("        }\n");
      out.write("        .nav-links {\n");
      out.write("            display: none;\n");
      out.write("            flex-direction: column;\n");
      out.write("            width: 100%;\n");
      out.write("            margin-top: 12px;\n");
      out.write("            background-color: #004d40;\n");
      out.write("            border-radius: 12px;\n");
      out.write("            padding: 10px 0;\n");
      out.write("            box-shadow: 0 4px 10px rgba(0,0,0,0.1);\n");
      out.write("        }\n");
      out.write("        .nav-links.show {\n");
      out.write("            display: flex;\n");
      out.write("        }\n");
      out.write("        .nav-links a, .nav-links .btn {\n");
      out.write("            text-align: center;\n");
      out.write("            padding: 12px 16px;\n");
      out.write("            width: 100%;\n");
      out.write("            border-radius: 0;\n");
      out.write("        }\n");
      out.write("        .dropdown:hover .dropdown-menu {\n");
      out.write("            display: none;\n");
      out.write("        }\n");
      out.write("        .dropdown .dropdown-menu {\n");
      out.write("            position: relative;\n");
      out.write("            box-shadow: none;\n");
      out.write("            background-color: transparent;\n");
      out.write("            margin-top: 0;\n");
      out.write("        }\n");
      out.write("    }\n");
      out.write("    /* admin navbar newly added dropdown*/\n");
      out.write("\n");
      out.write("    .admin-navbar {\n");
      out.write("        background-color: #004d40 !important; /* Midnight Green */\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    .admin-navbar .navbar-brand,\n");
      out.write("    .admin-navbar .nav-link,\n");
      out.write("    .admin-navbar .dropdown-menu a {\n");
      out.write("        color: #ffffff !important;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    .admin-navbar .dropdown-menu {\n");
      out.write("        background-color: #00695c; /* slightly lighter for contrast */\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    .admin-navbar .dropdown-menu a:hover {\n");
      out.write("        background-color: #00796b; /* hover effect */\n");
      out.write("        color: #ffffff !important;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    /* Navbar brand icon */\n");
      out.write(".navbar-brand-icon {\n");
      out.write("  display: inline-block;\n");
      out.write("  width: 35px;\n");
      out.write("  height: 35px;\n");
      out.write("  border-radius: 50%;\n");
      out.write("  background-color: white;\n");
      out.write("  color: #004d40; /* Midnight Green */\n");
      out.write("  font-weight: bold;\n");
      out.write("  font-size: 20px;\n");
      out.write("  line-height: 35px;\n");
      out.write("  text-align: center;\n");
      out.write("  border: 2px solid #004d40;\n");
      out.write("}\n");
      out.write("\n");
      out.write("</style>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\n");
      out.write("\n");
      out.write('\n');
      out.write('\n');

    String userName = (String) session.getAttribute("userName");

      out.write("\n");
      out.write("\n");
      out.write("<!-- Font Awesome for user icon -->\n");
      out.write("<link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css\" />\n");
      out.write("\n");
      out.write("<style>\n");
      out.write("    .navbar {\n");
      out.write("        background-color: #004d40;\n");
      out.write("        color: white;\n");
      out.write("\n");
      out.write("        position: fixed;\n");
      out.write("        top: 15px;\n");
      out.write("        left: 20px;\n");
      out.write("        right: 20px;\n");
      out.write("        z-index: 1000;\n");
      out.write("        border-radius: 10px;\n");
      out.write("        padding: 8px 16px;\n");
      out.write("        display: flex;\n");
      out.write("        align-items: center;\n");
      out.write("        justify-content: space-between;\n");
      out.write("        flex-wrap: wrap;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    .navbar-header {\n");
      out.write("        display: flex;\n");
      out.write("        align-items: center;\n");
      out.write("        justify-content: space-between;\n");
      out.write("        width: 100%;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    .logo {\n");
      out.write("        color: white;\n");
      out.write("        font-size: 20px;\n");
      out.write("        font-weight: bold;\n");
      out.write("        text-decoration: none;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    .menu-icon {\n");
      out.write("        font-size: 24px;\n");
      out.write("        color: white;\n");
      out.write("        cursor: pointer;\n");
      out.write("        display: none;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    .nav-links {\n");
      out.write("        display: flex;\n");
      out.write("        justify-content: center;\n");
      out.write("        flex-grow: 1;\n");
      out.write("        gap: 16px;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    .nav-links a {\n");
      out.write("        color: white;\n");
      out.write("        padding: 10px 16px;\n");
      out.write("        text-decoration: none;\n");
      out.write("        font-size: 16px;\n");
      out.write("        border-radius: 8px;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    .nav-links a:hover {\n");
      out.write("        background-color: #ddd;\n");
      out.write("        color: black;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    .dropdown {\n");
      out.write("        position: relative;\n");
      out.write("        display: inline-block;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    .dropdown-toggle {\n");
      out.write("        background: none;\n");
      out.write("        border: none;\n");
      out.write("        color: white;\n");
      out.write("        font-size: 16px;\n");
      out.write("        cursor: pointer;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    .dropdown-menu {\n");
      out.write("        display: none;\n");
      out.write("        position: absolute;\n");
      out.write("        background-color: white;\n");
      out.write("        min-width: 140px;\n");
      out.write("        box-shadow: 0px 8px 16px rgba(0,0,0,0.2);\n");
      out.write("        border-radius: 8px;\n");
      out.write("        z-index: 1;\n");
      out.write("        right: 0;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    .dropdown-menu li {\n");
      out.write("        list-style: none;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    .dropdown-menu li a {\n");
      out.write("        color: black;\n");
      out.write("        padding: 10px 16px;\n");
      out.write("        text-decoration: none;\n");
      out.write("        display: block;\n");
      out.write("        border-radius: 8px;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    .dropdown-menu li a:hover {\n");
      out.write("        background-color: #f1f1f1;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    .dropdown:hover .dropdown-menu {\n");
      out.write("        display: block;\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    @media screen and (max-width: 768px) {\n");
      out.write("        .navbar {\n");
      out.write("            flex-direction: column;\n");
      out.write("            align-items: stretch;\n");
      out.write("            padding: 8px 16px;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .menu-icon {\n");
      out.write("            display: block;\n");
      out.write("            margin-left: auto;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .nav-links {\n");
      out.write("            display: none;\n");
      out.write("            flex-direction: column;\n");
      out.write("            width: 100%;\n");
      out.write("            margin-top: 8px;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .nav-links.show {\n");
      out.write("            display: flex;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .nav-links a {\n");
      out.write("            text-align: left;\n");
      out.write("            padding: 10px 12px;\n");
      out.write("            margin: 2px 0;\n");
      out.write("        }\n");
      out.write("    }\n");
      out.write("</style>\n");
      out.write("\n");
      out.write("<div class=\"navbar\">\n");
      out.write("    <div class=\"navbar-header\">\n");
      out.write("        <a href=\"index.jsp\" class=\"logo\"><span class=\"navbar-brand-icon\">N</span>NovaLife</a>\n");
      out.write("        <span class=\"menu-icon\" id=\"menuIcon\" onclick=\"toggleMenu()\">&#9776;</span>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("    <div class=\"nav-links\" id=\"navLinks\">\n");
      out.write("        <a href=\"index.jsp\">Home</a>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        <a href=\"admin_login.jsp\">Admin</a>\n");
      out.write("        <a href=\"doctor_login.jsp\">Doctor</a>\n");
      out.write("        <a href=\"#\">View Appointment</a>\n");
      out.write("        <a href=\"user_login.jsp\">Login</a>\n");
      out.write("\n");
      out.write("\n");
      out.write("    </div>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<script>\n");
      out.write("    function toggleMenu() {\n");
      out.write("        var nav = document.getElementById(\"navLinks\");\n");
      out.write("        var icon = document.getElementById(\"menuIcon\");\n");
      out.write("        nav.classList.toggle(\"show\");\n");
      out.write("        icon.innerHTML = nav.classList.contains(\"show\") ? \"&#10005;\" : \"&#9776;\";\n");
      out.write("    }\n");
      out.write("</script>\n");
      out.write("\n");
      out.write("\n");
      out.write("<br>\n");
      out.write("<br>\n");
      out.write("<div class=\"container p-5 mt-4\">\n");
      out.write("\n");
      out.write("    <div class=\"row\">\n");
      out.write("        <div class=\"col-md-4 offset-md-4\">\n");
      out.write("            <div class=\"card point-card\">\n");
      out.write("                <div class=\"card-body\">\n");
      out.write("                    <p class=\"fs-4 text-center\">User Register</p>\n");
      out.write("\n");
      out.write("                   ");
      if (_jspx_meth_c_if_0(_jspx_page_context))
        return;
      out.write('\n');
      if (_jspx_meth_c_if_1(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                   \n");
      out.write("                    <form action=\"user_register\" method=\"post\">\n");
      out.write("                        <div class=\"mb-3\">\n");
      out.write("                            <label class=\"form-label\">Full Name</label>\n");
      out.write("                            <input required type=\"text\" name=\"fullname\" class=\"form-control\" />\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"mb-3\">\n");
      out.write("                            <label class=\"form-label\">Email</label>\n");
      out.write("                            <input required type=\"email\" name=\"email\" class=\"form-control\" />\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"mb-3\">\n");
      out.write("                            <label class=\"form-label\">Password</label>\n");
      out.write("                            <input required type=\"password\" name=\"password\" class=\"form-control\" />\n");
      out.write("                        </div>\n");
      out.write("                        \n");
      out.write("                        <button type=\"submit\" class=\"btn bg-success text-white col-md-12\">Register</button>\n");
      out.write("                    </form>\n");
      out.write("                    <br>\n");
      out.write("                   If You have already account?<a href=\"user_login.jsp\" class=\"clink\">Log In</a>\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("</div>\n");
      out.write("<footer>\n");
      out.write("    ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "component/footer.jsp", out, false);
      out.write("\n");
      out.write("</footer>\n");
      out.write("</body>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }

  private boolean _jspx_meth_c_if_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_0 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_0.setPageContext(_jspx_page_context);
    _jspx_th_c_if_0.setParent(null);
    _jspx_th_c_if_0.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${not empty sucMsg}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_0 = _jspx_th_c_if_0.doStartTag();
    if (_jspx_eval_c_if_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write("    <p class=\"text-center text-success fs-3\">");
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sucMsg}", java.lang.String.class, (PageContext)_jspx_page_context, null));
        out.write("</p>\n");
        out.write("      ");
        if (_jspx_meth_c_remove_0((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_if_0, _jspx_page_context))
          return true;
        out.write("\n");
        out.write("    \n");
        int evalDoAfterBody = _jspx_th_c_if_0.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_0);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_0);
    return false;
  }

  private boolean _jspx_meth_c_remove_0(javax.servlet.jsp.tagext.JspTag _jspx_th_c_if_0, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:remove
    org.apache.taglibs.standard.tag.common.core.RemoveTag _jspx_th_c_remove_0 = (org.apache.taglibs.standard.tag.common.core.RemoveTag) _jspx_tagPool_c_remove_var_scope_nobody.get(org.apache.taglibs.standard.tag.common.core.RemoveTag.class);
    _jspx_th_c_remove_0.setPageContext(_jspx_page_context);
    _jspx_th_c_remove_0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_if_0);
    _jspx_th_c_remove_0.setVar(" sucMsg");
    _jspx_th_c_remove_0.setScope("session");
    int _jspx_eval_c_remove_0 = _jspx_th_c_remove_0.doStartTag();
    if (_jspx_th_c_remove_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_remove_var_scope_nobody.reuse(_jspx_th_c_remove_0);
      return true;
    }
    _jspx_tagPool_c_remove_var_scope_nobody.reuse(_jspx_th_c_remove_0);
    return false;
  }

  private boolean _jspx_meth_c_if_1(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_1 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_1.setPageContext(_jspx_page_context);
    _jspx_th_c_if_1.setParent(null);
    _jspx_th_c_if_1.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${not empty errorMsg}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_1 = _jspx_th_c_if_1.doStartTag();
    if (_jspx_eval_c_if_1 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write("    <p class=\"text-center text-danger fs-3\">");
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${errorMsg}", java.lang.String.class, (PageContext)_jspx_page_context, null));
        out.write("</p>\n");
        out.write("      ");
        if (_jspx_meth_c_remove_1((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_if_1, _jspx_page_context))
          return true;
        out.write("\n");
        out.write("    \n");
        int evalDoAfterBody = _jspx_th_c_if_1.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_1);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_1);
    return false;
  }

  private boolean _jspx_meth_c_remove_1(javax.servlet.jsp.tagext.JspTag _jspx_th_c_if_1, PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:remove
    org.apache.taglibs.standard.tag.common.core.RemoveTag _jspx_th_c_remove_1 = (org.apache.taglibs.standard.tag.common.core.RemoveTag) _jspx_tagPool_c_remove_var_scope_nobody.get(org.apache.taglibs.standard.tag.common.core.RemoveTag.class);
    _jspx_th_c_remove_1.setPageContext(_jspx_page_context);
    _jspx_th_c_remove_1.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_if_1);
    _jspx_th_c_remove_1.setVar("errorMsg");
    _jspx_th_c_remove_1.setScope("session");
    int _jspx_eval_c_remove_1 = _jspx_th_c_remove_1.doStartTag();
    if (_jspx_th_c_remove_1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_remove_var_scope_nobody.reuse(_jspx_th_c_remove_1);
      return true;
    }
    _jspx_tagPool_c_remove_var_scope_nobody.reuse(_jspx_th_c_remove_1);
    return false;
  }
}
