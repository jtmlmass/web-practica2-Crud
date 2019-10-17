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
                    <table class="table table-striped table-bordered table-hover">
                        <thead class="thead-dark">
                        <tr>
                            <th scope="col">Matricula</th>
                            <th scope="col">Nombre</th>
                            <th scope="col">Apellido</th>
                            <th scope="col">Telefono</th>
                            <th scope="col">Acciones</th>
                        </tr>
                        </thead>
                        <tbody>
                        <#list estudiantes as estudiante>
                            <tr>
                                <td>${estudiante.matricula?string["0"]}</td>
                                <td>${estudiante.nombre}</td>
                                <td>${estudiante.apellido}</td>
                                <td>${estudiante.telefono}</td>
                                <td>
                                    <button class="btn btn-secondary" href="/editarEstudiante/${estudiante.matricula}">Editar</button>
                                    <button class="btn btn-danger" href="/eliminarEstudiante/${estudiante.matricula}" type="submit">Eliminar</button>
                                </td>
                            </tr>
                        </#list>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>