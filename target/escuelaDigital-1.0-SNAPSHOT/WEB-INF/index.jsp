<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ingresar</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    
    <style>
        body {
            background: rgb(220,195,248);
            background: radial-gradient(circle, rgba(220,195,248,1) 0%, rgba(195,193,244,1) 100%);
            height: 100vh;
        }
        label {
              color: #000000;
              font-size: 15px;
        }
        .margen {
              margin-top: 80px;
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
      
    </head>
    <body style="background-">
        <div class="container-fluid">
             <div class="row de-flex justify-content-center margen">
                <form class="p-5" action="AlumnosController?accion=ingresar" method="POST">
                     <div class="text-center">
                        <img src="https://img.icons8.com/windows/100/000000/user-group-man-man--v1.png"/>
                     </div>
                    <h1 class="mt-3 mb-3 text-center text-uppercase fs-3 text-white"></h1>
                    <div class="mb-3">
                        <label for="nombre" class="form-label">Email del usuario</label>
                        <input type="text" class="form-control borde" id="email" name="email"/></input>
                    </div>
                     <div class="mb-3">
                        <label for="apellido" class="form-label">Contraseña</label>
                        <input type="password" class="form-control borde" id="pass" name="pass"></input>
                    </div>
                     <div class="d-grid gap-2 col-6 mx-auto">
                        <button class="btn btn-outline-dark" type="submit">Ingresar</button>
                    </div>
                </form>
            </div>
            </div>
    </body>
</html>