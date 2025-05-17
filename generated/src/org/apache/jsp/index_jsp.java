package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.Connection;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
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

      out.write('\n');
      out.write('\n');

    String userName = (String) session.getAttribute("userName");

      out.write("\n");
      out.write(" \n");
      out.write(" \n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"UTF-8\">\n");
      out.write("    <link rel=\"icon\" href=\"novalifefavi.png\" type=\"image/png\">\n");
      out.write("    <link rel=\"icon\" type=\"image/x-icon\" href=\"https://fontawesome.com/icons/hospital?f=classic&s=solid&pc=%23034934&sc=%23034934\">\n");
      out.write("    <title>Nova Hospital</title>\n");
      out.write("    \n");
      out.write("    <link rel=\"stylesheet\" href=\"css/style.css\">\n");
      out.write("    <style>\n");
      out.write("        /* Make the page fill the screen and allow proper spacing */\n");
      out.write("        html, body {\n");
      out.write("            height: 100%;\n");
      out.write("            margin: 0;\n");
      out.write("            padding: 0;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        /* Use flexbox to keep footer at bottom */\n");
      out.write("        .wrapper {\n");
      out.write("            display: flex;\n");
      out.write("            flex-direction: column;\n");
      out.write("            min-height: 100vh;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .content {\n");
      out.write("            flex: 1;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        /* Optional: Ensure carousel takes good space */\n");
      out.write("        .carousel-container {\n");
      out.write("            height: 80vh; /* Adjust for hero effect */\n");
      out.write("            overflow: hidden;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        /* Ensure footer stays at bottom */\n");
      out.write("        footer {\n");
      out.write("            background-color: #f1f1f1;\n");
      out.write("            padding: 10px 0;\n");
      out.write("            text-align: center;\n");
      out.write("        }\n");
      out.write("    </style>\n");
      out.write("    \n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\n");
      out.write("<div class=\"wrapper\">\n");
      out.write("    <!-- Navbar -->\n");
      out.write("    \n");
      out.write("   ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "component/navbar.jsp", out, false);
      out.write("\n");
      out.write("    \n");
      out.write("    \n");
      out.write("     \n");
      out.write("     \n");
      out.write("    \n");
      out.write("    \n");
      out.write("\n");
      out.write("    <!-- Hero Carousel Section -->\n");
      out.write("    <div class=\"carousel-container\">\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "component/carousal.jsp", out, false);
      out.write("\n");
      out.write("    </div>\n");
      out.write("     \n");
      out.write("    <hr>\n");
      out.write("    \n");
      out.write(" <!-- about us -->\n");
      out.write("    <div class=\"\">\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "component/aboutus.jsp", out, false);
      out.write("\n");
      out.write("    </div>\n");
      out.write("    <br>\n");
      out.write("    <hr>\n");
      out.write("    <br>\n");
      out.write("    \n");
      out.write("    <!-- Our Team Of Doctors -->\n");
      out.write("    <div class=\"\">\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "component/ourteam.jsp", out, false);
      out.write("\n");
      out.write("    </div>\n");
      out.write("    \n");
      out.write("    <br>\n");
      out.write("    <hr>\n");
      out.write("    <br>\n");
      out.write("    \n");
      out.write("    <!-- Expandable Questions -->\n");
      out.write("    <div class=\"content\">\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "component/expandableq.jsp", out, false);
      out.write("\n");
      out.write("    </div>\n");
      out.write("    \n");
      out.write("      <br>\n");
      out.write("    <hr>\n");
      out.write("    <br>\n");
      out.write("    \n");
      out.write("    <!-- Footer -->\n");
      out.write("    <footer>\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "component/footer.jsp", out, false);
      out.write("\n");
      out.write("    </footer>\n");
      out.write("</div>\n");
      out.write("</body>\n");
      out.write("</html>\n");
      out.write("\n");
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
}
