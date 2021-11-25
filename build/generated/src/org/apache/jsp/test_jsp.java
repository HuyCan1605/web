package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class test_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<title>Google Map Hello World Example</title>\n");
      out.write("<style type=\"text/css\">\n");
      out.write("div#map_container{\n");
      out.write("    width:100%;\n");
      out.write("    height:350px;\n");
      out.write("}\n");
      out.write("</style>\n");
      out.write("<script type=\"text/javascript\" \n");
      out.write("   src=\"http://maps.googleapis.com/maps/api/js?sensor=false\"></script>\n");
      out.write("\n");
      out.write("<script type=\"text/javascript\">\n");
      out.write("  function loadMap() {\n");
      out.write("    var latlng = new google.maps.LatLng(20.989826, 105.933950);\n");
      out.write("    var myOptions = {\n");
      out.write("      zoom: 8,\n");
      out.write("      center: latlng,\n");
      out.write("      mapTypeId: google.maps.MapTypeId.ROADMAP\n");
      out.write("    };\n");
      out.write("    var map = new google.maps.Map(document.getElementById(\"map_container\"),myOptions);\n");
      out.write("    \n");
      out.write("    var marker = new google.maps.Marker({\n");
      out.write("      position: latlng, \n");
      out.write("      map: map, \n");
      out.write("      title:\"Quang Hài Giá\"\n");
      out.write("    }); \n");
      out.write("  \n");
      out.write("  }\n");
      out.write("</script>\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body onload=\"loadMap()\">\n");
      out.write("                            <div id=\"map_container\" onload=\"loadMap()\" style=\"height:385px; width:100%; margin-bottom: 70px;\"></div>\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("\n");
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
}
