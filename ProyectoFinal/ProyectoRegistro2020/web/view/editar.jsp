<%@page import="model.Persona"%>
<%@page import="modelDAO.PersonaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html style="height: 100%;">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap-grid.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap-grid.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap-reboot.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap-reboot.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap-theme.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title>Pagina Editar</title>
    </head>
    <body style="background:#eeeeee; height: 100%; display:flex; justify-content:center; align-items:center">
        <div>
            <div  style="display: flex;">
            <%
                PersonaDAO personaDao = new PersonaDAO();
                int codPersona = Integer.parseInt((String)request.getAttribute("codPer"));
                Persona persona = (Persona)personaDao.list(codPersona);
            %>
            <form action="Controlador">
                <a class="btn btn-info active btn-lg btn-block" style="position: absolute; right: 0; top: 0; padding: 50px; height: 10vh" href="Controlador?accion=Regresar">Regresar</a>
                <h1 class="text-uppercase display-2 text-center" style="margin: 50px">Editar Persona</h1>
                <strong style="font-size:30px"> DPI</strong>
                <input class="form-control" style="align-items:center; text-align: center; box-shadow:5px 5px 9px #4B515D" type="text" name="txtDPI" value="<%= persona.getDPI()%>"><br><br>
                <strong style="font-size:30px"> Nombre </strong>
                <input class="form-control" style="align-items:center; text-align: center; box-shadow:5px 5px 9px #4B515D" type="text" name="txtNombre" value="<%= persona.getNombrePersona()%>"><br><br>    
                <input class="form-control" type="hidden" name="txtCodigoPersona" value="<%= persona.getCodigoPersona()%>"><br><br>  
                <input class="btn btn-outline-success btn-lg btn-block" type="submit" name="accion" value="Actualizar"><br>
            </form>
            </div>
        </div>
        
    </body>
</html>
