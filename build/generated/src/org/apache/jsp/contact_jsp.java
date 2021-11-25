package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class contact_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html;charset=UTF-8");
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
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <meta name=\"description\" content=\"\">\n");
      out.write("        <meta name=\"author\" content=\"\">\n");
      out.write("        <title>Liên hệ | QuangHài-giá</title>\n");
      out.write("        <link href=\"css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"css/font-awesome.min.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"css/prettyPhoto.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"css/price-range.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"css/animate.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"css/main.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"css/responsive.css\" rel=\"stylesheet\">\n");
      out.write("        <!--[if lt IE 9]>\n");
      out.write("        <script src=\"js/html5shiv.js\"></script>\n");
      out.write("        <script src=\"js/respond.min.js\"></script>\n");
      out.write("        <![endif]-->       \n");
      out.write("        <link rel=\"shortcut icon\" href=\"images/ico/favicon.ico\">\n");
      out.write("        <link rel=\"apple-touch-icon-precomposed\" sizes=\"144x144\" href=\"images/ico/apple-touch-icon-144-precomposed.png\">\n");
      out.write("        <link rel=\"apple-touch-icon-precomposed\" sizes=\"114x114\" href=\"images/ico/apple-touch-icon-114-precomposed.png\">\n");
      out.write("        <link rel=\"apple-touch-icon-precomposed\" sizes=\"72x72\" href=\"images/ico/apple-touch-icon-72-precomposed.png\">\n");
      out.write("        <link rel=\"apple-touch-icon-precomposed\" href=\"images/ico/apple-touch-icon-57-precomposed.png\">\n");
      out.write("        <link rel=\"icon\" href=\"images/home/favicon.ico\" type=\"image/icon type\">\n");
      out.write("    </head><!--/head-->\n");
      out.write("\n");
      out.write("    <body onload=\"loadMap()\">\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
      out.write("\n");
      out.write("\n");
      out.write("            <div id=\"contact-page\" class=\"container\">\n");
      out.write("                <div class=\"bg\">\n");
      out.write("                    <div class=\"row\">    \t\t\n");
      out.write("                        <div class=\"col-sm-12\">    \t\t\t   \t\t\t\n");
      out.write("                            <h2 class=\"title text-center\">Liên hệ <strong>với chúng tôi</strong></h2>    \t\t\t    \t\t\t\t    \t\t\t\t\n");
      out.write("                            <div id=\"map_container\"  style=\"height:385px; width:100%; margin-bottom: 70px;\"></div>\n");
      out.write("                        </div>\t\t\t \t\t\n");
      out.write("                    </div>    \t\n");
      out.write("                    <div class=\"row\">  \t\n");
      out.write("                        <div class=\"col-sm-8\">\n");
      out.write("                            <div class=\"contact-form\">\n");
      out.write("                                <h2 class=\"title text-center\">Liên lạc</h2>\n");
      out.write("                                <div class=\"status alert alert-success\" style=\"display: none\"></div>\n");
      out.write("                                <form id=\"main-contact-form\" class=\"contact-form row\" name=\"contact-form\" method=\"post\">\n");
      out.write("                                    <div class=\"form-group col-md-6\">\n");
      out.write("                                        <input type=\"text\" name=\"name\" class=\"form-control\" required=\"required\" placeholder=\"Họ và tên\">\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"form-group col-md-6\">\n");
      out.write("                                        <input type=\"email\" name=\"email\" class=\"form-control\" required=\"required\" placeholder=\"Email\">\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"form-group col-md-12\">\n");
      out.write("                                        <input type=\"text\" name=\"subject\" class=\"form-control\" required=\"required\" placeholder=\"Chủ đề\">\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"form-group col-md-12\">\n");
      out.write("                                        <textarea name=\"message\" id=\"message\" required=\"required\" class=\"form-control\" rows=\"8\" placeholder=\"Lời nhắn của bạn\"></textarea>\n");
      out.write("                                    </div>                        \n");
      out.write("                                    <div class=\"form-group col-md-12\">\n");
      out.write("                                        <input type=\"submit\" name=\"submit\" class=\"btn btn-primary pull-right\" value=\"Liên hệ\">\n");
      out.write("                                    </div>\n");
      out.write("                                </form>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-sm-4\">\n");
      out.write("                            <div class=\"contact-info\">\n");
      out.write("                                <h2 class=\"title text-center\">Thông tin liên lạc</h2>\n");
      out.write("                                <address>\n");
      out.write("                                    <p>Quang Hài giá</p>\n");
      out.write("                                    <p>Đội 6, thôn Đào Xuyên, xã Đa Tốn, Gia Lâm, Hà Nội</p>\n");
      out.write("                                    <p>Việt Nam</p>\n");
      out.write("                                    <p>Số điện thoại: 0862424010</p>\n");
      out.write("                                    <p>Email: nquanghuy162001@gmail.com</p>\n");
      out.write("                                </address>\n");
      out.write("                                <div class=\"social-networks\">\n");
      out.write("                                    <h2 class=\"title text-center\">Mạng xã hội</h2>\n");
      out.write("                                    <ul>\n");
      out.write("                                        <li>\n");
      out.write("                                            <a href=\"#\"><i class=\"fa fa-facebook\"></i></a>\n");
      out.write("                                        </li>\n");
      out.write("                                        <li>\n");
      out.write("                                            <a href=\"#\"><i class=\"fa fa-twitter\"></i></a>\n");
      out.write("                                        </li>\n");
      out.write("                                        <li>\n");
      out.write("                                            <a href=\"#\"><i class=\"fa fa-google-plus\"></i></a>\n");
      out.write("                                        </li>\n");
      out.write("                                        <li>\n");
      out.write("                                            <a href=\"#\"><i class=\"fa fa-youtube\"></i></a>\n");
      out.write("                                        </li>\n");
      out.write("                                    </ul>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>    \t\t\t\n");
      out.write("                    </div>  \n");
      out.write("                </div>\t\n");
      out.write("            </div><!--/#contact-page-->\n");
      out.write("\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer.jsp", out, false);
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        <script src=\"js/jquery.js\"></script>\n");
      out.write("        <script src=\"js/bootstrap.min.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"http://maps.google.com/maps/api/js?sensor=true\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/gmaps.js\"></script>\n");
      out.write("        <script src=\"js/contact.js\"></script>\n");
      out.write("        <script src=\"js/price-range.js\"></script>\n");
      out.write("        <script src=\"js/jquery.scrollUp.min.js\"></script>\n");
      out.write("        <script src=\"js/jquery.prettyPhoto.js\"></script>\n");
      out.write("        <script src=\"js/main.js\"></script>\n");
      out.write("        <script\n");
      out.write("        <script type=\"text/javascript\" \n");
      out.write("            src=\"http://maps.googleapis.com/maps/api/js?sensor=false\"></script>\n");
      out.write("\n");
      out.write("            <script type=\"text/javascript\">\n");
      out.write("                                function loadMap() {\n");
      out.write("                                    var latlng = new google.maps.LatLng(20.989826, 105.933950);\n");
      out.write("                                    var myOptions = {\n");
      out.write("                                        zoom: 15,\n");
      out.write("                                        center: latlng,\n");
      out.write("                                        mapTypeId: google.maps.MapTypeId.ROADMAP\n");
      out.write("                                    };\n");
      out.write("                                    var map = new google.maps.Map(document.getElementById(\"map_container\"), myOptions);\n");
      out.write("\n");
      out.write("                                    var marker = new google.maps.Marker({\n");
      out.write("                                        position: latlng,\n");
      out.write("                                        map: map,\n");
      out.write("                                        title: \"Quang Hài Giá\"\n");
      out.write("                                    });\n");
      out.write("\n");
      out.write("                                }\n");
      out.write("            </script>\n");
      out.write("        </body>\n");
      out.write("    </html>\n");
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
