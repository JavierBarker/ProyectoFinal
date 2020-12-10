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
      out.write("<!DOCTYPE html>\n");
      out.write("<html style=\"height: 100%;\">\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link href=\"css/bootstrap.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"css/extra.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <title>Pagina Principal</title>\n");
      out.write("    </head>\n");
      out.write("    <body class=\"fondo\" style=\"background-image: url('css/fondo.jpg'); height: 100%;display: flex; justify-content: center; align-items: center\">\n");
      out.write("        <div class=\"col-lg-3\">\n");
      out.write("            <form action=\"Controlador\">\n");
      out.write("                <center><img src=\"css/Usuario.png\" style=\"width: 90%; height: 90%;\"></center>\n");
      out.write("                <p style=\"text-align: center; font-size: 55px\">Login</p>\n");
      out.write("                <strong style=\"font-size: 15px\">Usuario:</strong><br>\n");
      out.write("                <input class=\"form-control\"  type=\"text\" placeholder=\"Ingrese su Usuario\" name=\"txtUsuario\"><br>\n");
      out.write("                <strong style=\"font-size: 15px\">Contraseña:</strong><br>\n");
      out.write("                <input class=\"form-control\"  type=\"password\" placeholder=\"Ingrese su Contraseña\" name=\"txtPassword\"><br>\n");
      out.write("                <strong style=\"font-size: 15px\">Rol:</strong><br>\n");
      out.write("                <select class=\"form-control\" name=\"cmbRol\">\n");
      out.write("                    <option>Seleccione su Rol</option>\n");
      out.write("                    <option>Administrador</option>\n");
      out.write("                    <option>Usuario</option>\n");
      out.write("                </select><br><br>\n");
      out.write("                <input class=\"btn btn-primary btn-block\"  type=\"submit\" name=\"accion\" value=\"Ingresar\" >\n");
      out.write("                ");

                    String mensaje = (String)request.getAttribute("mensaje");
                    if(mensaje == null){
                        
                    }else{
                        out.print(mensaje);
                    }
                    
                
      out.write("\n");
      out.write("            </form>\n");
      out.write("        </div>\n");
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
