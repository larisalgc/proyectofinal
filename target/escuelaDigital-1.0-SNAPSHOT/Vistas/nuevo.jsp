<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nuevo registro</title>
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
         <div class="container-fluid">
             <div class="row de-flex justify-content-center">
                <form class="p-5" action="AlumnosController?accion=insert" method="POST">
                     <div class="text-center">
                        <img src="https://img.icons8.com/material/100/000000/add-database.png"/>                  
                  </div>
                      <h1 class="mt-3 mb-4 text-center text-black fs-3">Formulario de registro</h1>
                    <div class="mb-4">
                        <label for="nombre" class="form-label">Nombre</label>
                        <input type="text" class="form-control borde" id="nombre" name="nombre"></input>
                    </div>
                     <div class="mb-4">
                        <label for="apellido" class="form-label">Apellido</label>
                        <input type="text" class="form-control borde" id="apellido" name="apellido"></input>
                    </div>
                    <div class="mb-4">
                        <label for="email" class="form-label">Email</label>
                        <input type="text" class="form-control borde" id="email" name="email"></input>
                    </div>
                     <div class="mb-4">
                        <label for="telefono" class="form-label">Teléfono</label>
                        <input type="text" class="form-control borde" id="telefono" name="telefono"></input>
                    </div>
                     <div class="d-grid gap-2 col-6 mx-auto">
                        <button class="btn btn-outline-dark botonAgregar" type="submit">Continuar</button>
                    </div>
                </form>
            </div>
            </div>
    
        
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"
integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>
<script src="./js/appi.js"></script>  

    </body>
</html>