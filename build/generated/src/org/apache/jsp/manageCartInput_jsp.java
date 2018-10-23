package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class manageCartInput_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("\n");
      out.write("        <title>Add your review</title>\n");
      out.write("        <style>\n");
      out.write("            div {margin:0;}\n");
      out.write("            div {\n");
      out.write("                max-width: 100%;\n");
      out.write("                height: 100px;\n");
      out.write("                background-color: #000;\n");
      out.write("                color:#ffffff;\n");
      out.write("                padding: 20px;\n");
      out.write("\n");
      out.write("\n");
      out.write("            }\n");
      out.write("            input[type=text],[type=email], select, textarea {\n");
      out.write("                width: 100%;\n");
      out.write("                padding: 12px;\n");
      out.write("                border: 1px solid #ccc;\n");
      out.write("                border-radius: 4px;\n");
      out.write("                box-sizing: border-box;\n");
      out.write("                margin-top: 6px;\n");
      out.write("                margin-bottom: 16px;\n");
      out.write("                resize: vertical;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            input[type=submit] {\n");
      out.write("                background-color: #4CAF50;\n");
      out.write("                color: white;\n");
      out.write("                padding: 12px 20px;\n");
      out.write("                border: none;\n");
      out.write("                border-radius: 4px;\n");
      out.write("                cursor: pointer;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            input[type=submit]:hover {\n");
      out.write("                background-color: #009688;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .container {\n");
      out.write("                border-radius: 5px;\n");
      out.write("                background-color: #f2f2f2;\n");
      out.write("                padding: 20px;\n");
      out.write("                width:400px;\n");
      out.write("                height:800px;\n");
      out.write("            }\n");
      out.write("            .navbar {\n");
      out.write("                overflow: hidden;\n");
      out.write("                background-color: #333;\n");
      out.write("                position: fixed;\n");
      out.write("                top: 0;\n");
      out.write("                width: 100%;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .navbar a {\n");
      out.write("                float: left;\n");
      out.write("                display: block;\n");
      out.write("                color: #f2f2f2;\n");
      out.write("                text-align: center;\n");
      out.write("                padding: 14px 16px;\n");
      out.write("                text-decoration: none;\n");
      out.write("                font-size: 17px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .main {\n");
      out.write("                padding: 16px;\n");
      out.write("                margin-top: 30px;\n");
      out.write("                height: 1500px; /* Used in this example to enable scrolling */\n");
      out.write("            }\n");
      out.write("            .footer{\n");
      out.write("\n");
      out.write("                background-color: #333;\n");
      out.write("                color:#000;\n");
      out.write("                width: 100%;\n");
      out.write("\n");
      out.write("            }\n");
      out.write("            .button {\n");
      out.write("                border-radius: 4px;\n");
      out.write("                background-color: #000;\n");
      out.write("                width:100%;\n");
      out.write("                height: 50px;\n");
      out.write("                border: none;\n");
      out.write("                color: #FFFFFF;\n");
      out.write("                text-align: center;\n");
      out.write("                font-size: 28px;\n");
      out.write("                padding: 0px;\n");
      out.write("\n");
      out.write("                transition: all 0.5s;\n");
      out.write("                cursor: pointer;\n");
      out.write("                margin: 2px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .button span {\n");
      out.write("                cursor: pointer;\n");
      out.write("                display: inline-block;\n");
      out.write("                position: relative;\n");
      out.write("                transition: 0.5s;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .button span:after {\n");
      out.write("                content: '\\00bb';\n");
      out.write("                position: absolute;\n");
      out.write("                opacity: 0;\n");
      out.write("                top: 0;\n");
      out.write("                right: -20px;\n");
      out.write("                transition: 0.5s;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .button:hover span {\n");
      out.write("                padding-right: 25px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .button:hover span:after {\n");
      out.write("                opacity: 1;\n");
      out.write("                right: 0;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div><center><h1>DIGIWATCH</h1></center></div>\n");
      out.write("        <form method=\"post\" action=\"manageCart.jsp\" id=\"form1\">\n");
      out.write("            <legend><h3>Manage your cart:</h3></legend>\n");
      out.write("            <font color=\"#000\"><h4>\n");
      out.write("                Enter your name : <input type=\"text\" placeholder=\"Enter name \" name=\"userName\" required><br>\n");
      out.write("                Enter your cartID :<input type=\"text\" placeholder=\"1\" name=\"cartID\" required><br>\n");
      out.write("                <br>\n");
      out.write("                <button class=\"button\" type=\"submit\" form=\"form1\" value=\"Submit\"><span>Submit</span></button>\n");
      out.write("                <button class=\"button\" type=\"reset\" form=\"form1\" value=\"reset\"><span>Reset</span></button>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        </form>\n");
      out.write("        <form action=\"category.html\" method=\"post\" id=\"form3\">\n");
      out.write("            <button class=\"button\" type=\"Submit\" form=\"form3\" value=\"buy\"><span>Buy Product</span></button>  \n");
      out.write("        </form>\n");
      out.write("    </body>\n");
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
