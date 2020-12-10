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
        <title>Pagina Agregar</title>
    </head>
    <body style="background:#eeeeee; height: 100%; display:flex; justify-content:center; align-items:center">
        <div>
            <div style="display: flex;"> 
                <form  action="Controlador">
                     <a class="btn btn-info active btn-lg btn-block" style="position: absolute; right: 0; top: 0; padding: 50px; height: 10vh" href="Controlador?accion=Regresar">Regresar</a>
                    <h1 class="text-uppercase display-2 text-center" style="margin: 50xp; font-size: 30xp"> Agregar Registro </h1> <br><br>
                    <div>
                        <strong style="font-size:30px">DPI:</strong> <br><br>
                        <input class="form-control" style="align-items:center; text-align: center; box-shadow:5px 5px 9px #4B515D"  type="text" placeholder="Ingrese su DPI" name="txtDPI"><br><br>
                        <strong style="font-size: 30px">Nombres:</strong> <br>
                        <input class="form-control"  style="align-items:center; text-align: center;box-shadow: 5px 5px 9px #4B515D ;"  type="text" placeholder="Ingrese su nombre" name="txtNombre"><br><br>
                        <input class="btn btn-outline-success btn-lg btn-block" type="submit" name="accion" value="Agregar"><br>
                    </div>
                </form>
            </div>
        </div> 
    </body>
</html>
