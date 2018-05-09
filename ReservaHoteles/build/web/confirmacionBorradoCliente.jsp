<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://fonts.googleapis.com/css?family=Faster+One" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="estilo.css">
        <title>Borrar cliente - Reserva tu hotel</title>
    </head>
    <body>
        <div id="wrapper">
            <header>
                <h1 id="rotulo">HAZ TUS RESERVAS</h1>
                <p id="web">ReservaHoteles.com</p>
            </header>
            <nav>
                <span><a href="inicio.jsp">Página de Inicio</a></span>
                <span><a href="confirmacionSalir.jsp">Cerrar Sesión</a></span>
            </nav>
            <section>
                <div class="marcoAviso">
                    <h1 class="avisoBorrado">AVISO</h1>
                    <p class="seguro">¿Está seguro de que desea dar de baja al cliente?</p>
                    <form method="post" action="borraCliente.jsp">
                        <input type="hidden" name="clienteID" value="<%=request.getParameter("clienteID")%>"/>
                        <button class="aceptarConfirmacion" type="submit">Aceptar</button>
                    </form>

                    <form action="listadoCliente.jsp">
                        <button class="cancelarConfirmacion">Cancelar</button>
                    </form>
                </div>
            </section>
            <footer>Lucía Flores Padilla - CRUD Reserva Hoteles ©</footer>
        </div><!-- Cierra el wrapper -->
    </body>
</html>
