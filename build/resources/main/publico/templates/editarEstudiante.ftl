<!doctype html>
<!-- saved from url=(0050)https://getbootstrap.com/docs/4.3/examples/album/# -->
<html lang="es"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>${titulo}</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/4.3/examples/album/">

    <!-- Bootstrap core CSS -->
    <link href="./Album example · Bootstrap_files/bootstrap.min.css" rel="stylesheet" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <link href="/publico/css/bootstrap.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <!------ Include the above in your HEAD tag ---------->

    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">

    <!-- Custom styles for this template -->
    <link href="./Album example · Bootstrap_files/album.css" rel="stylesheet">
</head>
<body>
<#include "*/navbar.ftl">
<main role="main">
    <section class="jumbotron text-center">
        <form>
            <div class="form-row">
                <div class="col">
                    <label>
                        Nombre
                        <input type="text" class="form-control" value="${estudiante.nombre}" placeholder="Nombre">
                    </label>
                </div>
                <div class="col">
                    <label>
                        Apellido
                        <input type="text" class="form-control" value="${estudiante.apellido}" placeholder="Apellido">
                    </label>
                </div>
            </div>
            <div class="form-row">
                <div class="col">
                    <label>
                        Matricula
                        <input type="text" class="form-control" value="${estudiante.matricula}" placeholder="Matricula">
                    </label>
                </div>
                <div class="col">
                    <label>
                        Telefono
                        <input type="text" class="form-control" value="${estudiante.telefono}" placeholder="Telefono">
                    </label>
                </div>
            </div>
            <div class="form-row">
                <div class="col-auto my-1">
                    <button type="submit" class="btn btn-primary">Agregar</button>
                </div>
            </div>
        </form>
    </section>
</main>
</body>
</html>