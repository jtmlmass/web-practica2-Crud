<!doctype html>
<html lang="en">
<!-- saved from url=(0050)https://getbootstrap.com/docs/4.3/examples/album/# -->
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
<#include "/navbar.ftl">
<main role="main">
    <table class="table">
        <thead class="thead-light">
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
            <tr class="row">
                <td>${estudiante.matricula?string["0"]}</td>
                <td>${estudiante.nombre}</td>
                <td>${estudiante.apellido}</td>
                <td>${estudiante.telefono}</td>
                <td>
                    <button type="submit">Editar</button>
                    <button type="submit">Eliminar</button>
                </td>
            </tr>
        </#list>
        </tbody>
    </table>
</main>
</body>
</html>