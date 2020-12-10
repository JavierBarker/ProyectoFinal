package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Persona;
import model.Usuario;
import modelDAO.PersonaDAO;
import modelDAO.UsuarioDAO;


@WebServlet(name = "Controlador", urlPatterns = {"/Controlador"})
public class Controlador extends HttpServlet {

    String listar = "./view/listar.jsp";
    String add = "./view/add.jsp";
    String edit = "./view/editar.jsp";
    String index = "./index.jsp";
    Persona nuevaPersona = new Persona();
    PersonaDAO nuevaPersonaDao = new PersonaDAO();
    int codigoPersona;
    
    
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Controlador</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Controlador at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String acceso = "";
        String action = request.getParameter("accion");
            if(action.equalsIgnoreCase("listar")){
                acceso = listar;
                
            } else if(action.equalsIgnoreCase("add")){
                acceso = add;
                
            }else if(action.equalsIgnoreCase("Agregar")){
                String DPI = request.getParameter("txtDPI");
                String nombre = request.getParameter("txtNombre");
                nuevaPersona.setDPI(DPI);
                nuevaPersona.setNombrePersona(nombre);
                nuevaPersonaDao.add(nuevaPersona);
                acceso = listar;
                request.setAttribute("rol", "1");
                
            }else if(action.equalsIgnoreCase("editar")){    
                request.setAttribute("codPer",request.getParameter("codigoPersona"));
                acceso = edit;
                
            }else if(action.equalsIgnoreCase("Actualizar")){
                codigoPersona = Integer.parseInt(request.getParameter("txtCodigoPersona"));
                String DPI = request.getParameter("txtDPI");
                String nombres = request.getParameter("txtNombre");
                nuevaPersona.setCodigoPersona(codigoPersona);
                nuevaPersona.setDPI(DPI);
                nuevaPersona.setNombrePersona(nombres);
                nuevaPersonaDao.edit(nuevaPersona);
                acceso = listar;
                request.setAttribute("rol", "1");
                
            }else if(action.equalsIgnoreCase("eliminar")){
                codigoPersona = Integer.parseInt(request.getParameter("codigoPersona"));
                nuevaPersona.setCodigoPersona(codigoPersona);
                nuevaPersonaDao.eliminar(codigoPersona);
                acceso = listar;
                request.setAttribute("rol", "1");
                
            }else if(action.equalsIgnoreCase("Ingresar")){
                Usuario nuevoUsuario = new Usuario();
                UsuarioDAO nuevoUsuarioDAO = new UsuarioDAO();
                String usuario = request.getParameter("txtUsuario");
                String password0 = request.getParameter("txtPassword");
                int rol_codigoRol = 0;
                if(request.getParameter("cmbRol").equalsIgnoreCase("Administrador")){
                    rol_codigoRol = 1;
                }else if(request.getParameter("cmbRol").equalsIgnoreCase("Usuario")){
                    rol_codigoRol = 2;
                }
                                                
                nuevoUsuario.setUsuario(usuario);
                nuevoUsuario.setPassword0(password0);
                nuevoUsuario.setRol_codigoRol(rol_codigoRol);
                boolean login = nuevoUsuarioDAO.validar(nuevoUsuario);
                System.out.println(login);
                if(login == true){
                    acceso = listar;
                    String rol = String.valueOf(rol_codigoRol);
                    request.setAttribute("rol", rol);
                }else{
                    acceso = index;
                    request.setAttribute("mensaje", "<h4 class=\"alert alert-danger\">Usuario, Contraseña o Rol son Incorrectos</h4>");
                }
                
            }else if(action.equalsIgnoreCase("Regresar")){
                acceso = listar;
                request.setAttribute("rol", "1");
            }

        RequestDispatcher vista = request.getRequestDispatcher(acceso);
        vista.forward(request, response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
