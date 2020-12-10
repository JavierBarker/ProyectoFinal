<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="model.Persona"%>
<%@page import="modelDAO.PersonaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap-grid.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap-grid.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap-reboot.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap-reboot.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap-theme.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title>Listar Registro</title>
    </head>
    <body style="background: #eeeeee">
        <%
            String rol = (String)request.getAttribute("rol");
            String desactivar = null;
            if(rol.equalsIgnoreCase("1")){
                desactivar="";
            }else{
                desactivar="disabled";
            }
        %>
       <a class="btn btn-info active btn-lg btn-block" style="position: absolute; right: 0; top: 0; padding: 50px; height: 10vh;" href="index.jsp">Cerrar Sesión</a>
        <div class="container">
           <h1 class="text-center font-weight-light display-2 text-uppercase" style="margin: 120px">Datos de La Entidad Persona</h1> 
           <table class="table table-dark table-bordered table-hover " style="font-size: 20px; box-shadow: 5px 5px 9px #4B515D ">
               <thead>
                   <tr>
                       <td class="text-center text-success text-uppercase"><strong>Código Persona</strong></td>
                       <td class="text-center text-success text-uppercase "><strong>DPI</strong></td>
                       <td class="text-center text-success text-uppercase "><strong>Nombres</strong></td>
                       <td class="text-center text-success text-uppercase "><strong>Acciones</strong></td>
                   </tr>                       
               </thead>
                <%
                       PersonaDAO dao = new PersonaDAO();
                       List<Persona> listaPersona = dao.listar();
                       Iterator<Persona> iterator= listaPersona.iterator();
                       Persona per = null;
                       while (iterator.hasNext()){
                           per = iterator.next();
                       
                       %>
               <tbody>
                   <tr>
                       <td class="text-center"><%= per.getCodigoPersona()%></td>
                       <td class="text-center"><%= per.getDPI()%></td>
                       <td class="text-center"><%= per.getNombrePersona()%></td>
                       <td class="text-center">
                       <a class="btn btn-warning <%=desactivar%>"  style="margin-right: 30px" href="Controlador?accion=editar&codigoPersona=<%=per.getCodigoPersona()%>">Editar</a>
                       <a class="btn btn-danger <%=desactivar%>"  href="Controlador?accion=eliminar&codigoPersona=<%=per.getCodigoPersona()%>">Eliminar</a>
                       </td>
                   </tr>
                    <% } %>
               </tbody>
           </table>
               <br>
            <a class="btn btn-outline-success btn-lg btn-block <%=desactivar%>" href="Controlador?accion=add">Agregar Registro </a>
        </div>
    </body>
</html>