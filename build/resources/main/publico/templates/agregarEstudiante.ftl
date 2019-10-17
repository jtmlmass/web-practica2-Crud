<!doctype html>
<!-- saved from url=(0050)https://getbootstrap.com/docs/4.3/examples/album/# -->
<html lang="es"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>${titulo}</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/4.3/examples/album/">

    <!-- Bootstrap core CSS -->
    <link href="./Album example · Bootstrap_files/bootstrap.min.css" rel="stylesheet" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <link href="/css/bootstrap.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <!------ Include the above in your HEAD tag ---------->

    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">

    <!-- Custom styles for this template -->
    <link href="./Album example · Bootstrap_files/album.css" rel="stylesheet">
</head>
<#include "*/navbar.ftl">
<body>
<div class="container">
    <div class="row justify-content-lg-center">
        <div class="col col-lg-9 my-auto">
            <div class="card text-center border-dark mb-3">
                <div class="card-header">
                    <h3><strong>${tituloCard}</strong></h3>
                </div>
                <div class="card-body">
                    <form action="/agregarEstudiante/" method="post">
                        <div class="form-row form-group">
                            <div class="col">
                                <input name="nombre" type="text" class="form-control" placeholder="Nombre">
                            </div>
                            <div class="col">
                                <input name="apellido" type="text" class="form-control" placeholder="Apellido">
                            </div>
                        </div>
                        <div class="form-row form-group">
                            <div class="col">
                                <input name="matricula" type="number" min="0" class="form-control" placeholder="Matricula">
                            </div>
                            <div class="col">
                                <input name="telefono" type="text" class="form-control" placeholder="Telefono">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-auto my-1">
                                <button type="submit" class="btn btn-primary">Agregar</button>
                            </div>
                            <div class="col-auto my-1">
                                <button type="reset" href="/estudiantes/" class="btn btn-danger">Cancelar</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
