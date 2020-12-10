<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html style="height: 100%;">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="css/extra.css" rel="stylesheet" type="text/css"/>
        <title>Pagina Principal</title>
    </head>
    <body class="fondo" style="background-image: url('css/fondo.jpg'); height: 100%;display: flex; justify-content: center; align-items: center">
        <div class="col-lg-3">
            <form action="Controlador">
                <center><img src="css/Usuario.png" style="width: 90%; height: 90%;"></center>
                <p style="text-align: center; font-size: 55px">Login</p>
                <strong style="font-size: 15px">Usuario:</strong><br>
                <input class="form-control"  type="text" placeholder="Ingrese su Usuario" name="txtUsuario"><br>
                <strong style="font-size: 15px">Contraseña:</strong><br>
                <input class="form-control"  type="password" placeholder="Ingrese su Contraseña" name="txtPassword"><br>
                <strong style="font-size: 15px">Rol:</strong><br>
                <select class="form-control" name="cmbRol">
                    <option>Seleccione su Rol</option>
                    <option>Administrador</option>
                    <option>Usuario</option>
                </select><br><br>
                <input class="btn btn-primary btn-block"  type="submit" name="accion" value="Ingresar" >
                <%
                    String mensaje = (String)request.getAttribute("mensaje");
                    if(mensaje == null){
                        
                    }else{
                        out.print(mensaje);
                    }
                    
                %>
            </form>
        </div>
    </body>
</html>
