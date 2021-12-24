<%@page import="modelo.AlumnosDAO"%>
<%@page import="java.util.List"%>
<%@page import="modelo.Alumnos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Lista de Alumnos</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    </head>
    
    <style>
       body {
            background: rgb(220,195,248);
            background: radial-gradient(circle, rgba(220,195,248,1) 0%, rgba(195,193,244,1) 100%);
            height: 100vh;
        }
        .table {
            border-collapse: separate;
        }
        table tbody tr:nth-child(odd) {
	        background: #e9eaeb;
        }
        table tbody tr:nth-child(even) {
	        background: #313f4d;
        }
        .lista {
            font-size: 30px;
        }
    </style>
    <body>
       <div class="container"> 
            <div class="row d-flex">                   
                <div class="mt-5 titulo text-center">
                    <img src="https://img.icons8.com/material/100/000000/rows.png"/>
                    <h1 class="mt-3 text-black text-center lista">Lista de alumnos</h1>
                </div>  
            <div class="mt-5 text-end"><a class="" href="AlumnosController?accion=nuevo"><button type="button" class="btn btn-outline-dark">Agregar datos</button></a>
                 </div>
                <table class="table">                                                     
                    <thead class="encabezado table-light text-center text-black">
                        <th>Id</th>
                        <th>Nombre</th>
                        <th>Apellido</th>
                        <th>Email</th>
                        <th>Teléfono</th>
                        <th>Modificar</th>
                        <th>Eliminar</th>
                        </thead>
                             
                    <tbody>
                        <% 
                        List<Alumnos> resultado = null;
                        AlumnosDAO alumno = new AlumnosDAO();
                        resultado = alumno.listarAlumnos();
                            
                        for(int a = 0; a < resultado.size(); a++){
                        String ruta ="AlumnosController?accion=modificar&id=" + resultado.get(a).getId();
                        String rutaE ="AlumnosController?accion=eliminar&id=" + resultado.get(a).getId();
                        %>
                                <tr class="text-center">
                                    <td><%= resultado.get(a).getId()%></td>
                                    <td><%= resultado.get(a).getNombre()%></td>
                                    <td><%= resultado.get(a).getApellido()%></td>
                                    <td><%= resultado.get(a).getEmail()%></td>
                                    <td><%= resultado.get(a).getTelefono()%></td>
                                    <td><a class="" href=<%= ruta%>><button type="button" class="btn btn-primary"><img src="https://img.icons8.com/windows/20/ffffff/approve-and-update.png"/></button></a></td>
                                    <td><a class="" href=<%= rutaE%>><button type="button" class="btn btn-danger"><img src="https://img.icons8.com/ios/20/ffffff/delete--v1.png"/></buttom></a></td>
                                </tr>
                                <%
                            }
                        %>
                    </tbody>
                </table>
            </div>
        </div>
    </body>
</html>