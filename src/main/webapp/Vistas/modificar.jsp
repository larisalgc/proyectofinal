<%@page import="modelo.AlumnosDAO"%>
<%@page import="modelo.Alumnos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificar Alumnos</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    </head>
        
    <style>
        body {
            background: rgb(220,195,248);
            background: radial-gradient(circle, rgba(220,195,248,1) 0%, rgba(195,193,244,1) 100%);
            height: 100vh;
        }
        label {
            color: rgb(0, 0, 0);
            font-size: 15px;
          }
        .container-fluid {
            display: flex;
            justify-content: center !important;
            align-items: center !important;
         }
         .btn {
             margin-top: 20px;
         }
      </style>
    
    <body>
        
        <%         
        String id = request.getParameter("id");
        int mid;
        mid = Integer.parseInt(id);
        Alumnos resultado=null;
        AlumnosDAO alumno = new AlumnosDAO();
        resultado = alumno.mostrarAlumno(mid);
       
        %>
                  
     <div class="container-fluid">
             <div class="row de-flex justify-content-center">
                <form class="p-5" action="AlumnosController?accion=actualizar" method="POST">
                  <div class="text-center">
                    <img src="https://img.icons8.com/material/100/000000/rename--v1.png"/>
                  </div>
                    <h1 class="mt-3 mb-4 text-center text-black fs-3">Modificar registro</h1>
                    <div class="mb-4">
                        <label for="id" class="form-label"></label>
                        <input type="hidden" class="form-control borde"  id="id" name="id"  value="<%= resultado.getId()%>" />
                    </div>
                    <div class="mb-4">
                        <label for="nombre" class="form-label">Nombre</label>
                        <input type="text" class="form-control borde" id="nombre" name="nombre"  value="<%= resultado.getNombre()%>" />
                    </div>
                     <div class="mb-4">
                        <label for="apellido" class="form-label">Apellido</label>
                        <input type="text" class="form-control borde" id="apellido" name="apellido" value="<%= resultado.getApellido()%>"/>
                    </div>
                     <div class="mb-4">
                        <label for="email" class="form-label">Email</label>
                        <input type="text" class="form-control borde" id="email" name="email" value="<%= resultado.getEmail()%>" />
                    </div>
                     <div class="mb-4">
                        <label for="telefono" class="form-label">Teléfono</label>
                        <input type="text" class="form-control borde" id="telefono" name="telefono" value="<%= resultado.getTelefono()%>" />
                    </div>
                    <div class="d-grid gap-2 col-6 mx-auto">
                        <button class="btn btn-outline-dark botonModificar" type="submit">Actualizar</button>
                    </div>
                </form>
             </div>
            </div>
    
    <!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

    </body>
</html>