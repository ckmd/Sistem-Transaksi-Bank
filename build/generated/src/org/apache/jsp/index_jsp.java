package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

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
      out.write("<!--\n");
      out.write("    <div id=\"login\">\n");
      out.write("      <div align=\"center\">Selamat datang di BANK KRUT</div>\n");
      out.write("      <form name='form-login'>\n");
      out.write("        <span class=\"fontawesome-user\"></span>\n");
      out.write("          <input type=\"text\" id=\"user\" placeholder=\"Username\">\n");
      out.write("        <span class=\"fontawesome-lock\"></span>\n");
      out.write("          <input type=\"password\" id\"pass\" placeholder=\"Password\">\n");
      out.write("        <input type=\"submit\" value=\"Login\">\n");
      out.write("          <button type=\"submit\"><a href=\"adminsite.jsp\">Login as Admin</a></button>\n");
      out.write("          <button class=\"login100-form-btn\"><a href=\"usersite.jsp\">Login as User</a></button>\n");
      out.write("    </form>\n");
      out.write("</body>\n");
      out.write("</html>-->\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\" >\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("  <meta charset=\"UTF-8\">\n");
      out.write("  <title>Login Form</title>\n");
      out.write("  \n");
      out.write("  \n");
      out.write("  \n");
      out.write("      <link rel=\"stylesheet\" href=\"css/style.css\">\n");
      out.write("\n");
      out.write("  \n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("\n");
      out.write("  <html lang=\"en-US\">\n");
      out.write("<head>\n");
      out.write("  <meta charset=\"utf-8\">\n");
      out.write("    <title>Login</title>\n");
      out.write("    \n");
      out.write("    <link rel=\"stylesheet\" href=\"https://fonts.googleapis.com/css?family=Open+Sans:400,700\">\n");
      out.write("\n");
      out.write("</head>\n");
      out.write("    <div id=\"login\">\n");
      out.write("      <form name='form-login'>\n");
      out.write("        <span class=\"fontawesome-user\"></span>\n");
      out.write("          <input type=\"text\" id=\"user\" placeholder=\"Username\">\n");
      out.write("       \n");
      out.write("        <span class=\"fontawesome-lock\"></span>\n");
      out.write("          <input type=\"password\" id\"pass\" placeholder=\"Password\">\n");
      out.write("        \n");
      out.write("        <input type=\"submit\" value=\"Login\">\n");
      out.write("\n");
      out.write("</form>\n");
      out.write("  \n");
      out.write("  \n");
      out.write("\n");
      out.write("</body>\n");
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
