package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class favor_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <meta name=\"description\" content=\"\">\n");
      out.write("        <meta name=\"author\" content=\"\">\n");
      out.write("        <title>Yêu thích | QuangHài-giá</title>\n");
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
      out.write("    <body>\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
      out.write("\n");
      out.write("        <section id=\"cart_items\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"breadcrumbs\">\n");
      out.write("                    <ol class=\"breadcrumb\">\n");
      out.write("                        <li><a href=\"home\">Home</a></li>\n");
      out.write("                        <li class=\"active\">Giỏ hàng</li>\n");
      out.write("                    </ol>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("            <c:forEach items=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${listP}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" var=\"o\">\n");
      out.write("                                <div class=\"col-sm-4\">\n");
      out.write("                                    <div class=\"product-image-wrapper\">\n");
      out.write("                                        <div class=\"single-products\">\n");
      out.write("                                            <div class=\"productinfo text-center\">\n");
      out.write("                                                <img src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${o.imgLink}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" alt=\"\" />\n");
      out.write("                                                <h2>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${o.price}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write(".000₫</h2>\n");
      out.write("                                                <p>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${o.name}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write(' ');
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${o.quantity}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</p>\n");
      out.write("                                                <a href=\"detail?pid=");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${o.id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" class=\"btn btn-default add-to-cart\"><i class=\"fa fa-shopping-cart\"></i>Mua ngay</a>\n");
      out.write("                                            </div>\n");
      out.write("                                            <div class=\"product-overlay\">\n");
      out.write("                                                <div class=\"overlay-content\">\n");
      out.write("                                                    <h2>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${o.price}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write(".000₫</h2>\n");
      out.write("                                                    <p>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${o.description}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</p>\n");
      out.write("                                                    <a href=\"detail?pid=");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${o.id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" class=\"btn btn-default add-to-cart\"><i class=\"fa fa-shopping-cart\"></i>Mua ngay</a>\n");
      out.write("                                                </div>\n");
      out.write("                                            </div>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"choose\">\n");
      out.write("                                            <ul class=\"nav nav-pills nav-justified\">\n");
      out.write("                                                <form name=\"f\" method=\"post\">\n");
      out.write("                                                    <li><button onclick=\"\" style=\"float: left; background-color: white; border: none ; padding: 0; margin: 8px; color: #03A66A\"><i class=\"fa fa-plus-square\"></i>Thêm yêu thích    </button></li>\n");
      out.write("                                                    <li><button onclick=\"buy(");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${o.id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write(")\" style=\"float: right; background-color: white; border: none ; padding: 0; margin: 8px; color: #03A66A\"><i class=\"fa fa-plus-square\"></i>Thêm giỏ hàng</button></li>\n");
      out.write("                                                </form>\n");
      out.write("                                                \n");
      out.write("                                            </ul>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                                                \n");
      out.write("                                     <div class=\"col-sm-4\">\n");
      out.write("\t\t\t\t\t\t\t<div class=\"product-image-wrapper\">\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"single-products\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"productinfo text-center\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<img src=\"images/home/product2.jpg\" alt=\"\" />\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<h2>$56</h2>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<p>Easy Polo Black Edition</p>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<a href=\"#\" class=\"btn btn-default add-to-cart\"><i class=\"fa fa-shopping-cart\"></i>Add to cart</a>\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"product-overlay\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<div class=\"overlay-content\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<h2>$56</h2>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<p>Easy Polo Black Edition</p>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<a href=\"#\" class=\"btn btn-default add-to-cart\"><i class=\"fa fa-shopping-cart\"></i>Add to cart</a>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"choose\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<ul class=\"nav nav-pills nav-justified\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<li><a href=\"#\"><i class=\"fa fa-plus-square\"></i>Add to wishlist</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<li><a href=\"#\"><i class=\"fa fa-plus-square\"></i>Add to compare</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("                                                \n");
      out.write("                                    <div class=\"col-sm-4\">\n");
      out.write("\t\t\t\t\t\t\t<div class=\"product-image-wrapper\">\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"single-products\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"productinfo text-center\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<img src=\"images/home/product2.jpg\" alt=\"\" />\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<h2>$56</h2>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<p>Easy Polo Black Edition</p>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<a href=\"#\" class=\"btn btn-default add-to-cart\"><i class=\"fa fa-shopping-cart\"></i>Add to cart</a>\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"product-overlay\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<div class=\"overlay-content\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<h2>$56</h2>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<p>Easy Polo Black Edition</p>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<a href=\"#\" class=\"btn btn-default add-to-cart\"><i class=\"fa fa-shopping-cart\"></i>Add to cart</a>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"choose\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<ul class=\"nav nav-pills nav-justified\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<li><a href=\"#\"><i class=\"fa fa-plus-square\"></i>Add to wishlist</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<li><a href=\"#\"><i class=\"fa fa-plus-square\"></i>Add to compare</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("                            </c:forEach>\n");
      out.write("        </section>\n");
      out.write("                                                \n");
      out.write("                                                \n");
      out.write("    </body>\n");
      out.write("    \n");
      out.write("    ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer.jsp", out, false);
      out.write("\n");
      out.write("</html>\n");
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
