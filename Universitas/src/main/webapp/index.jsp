<%@ page import="co.edu.poli.ces3.universitas.database.ConexionMySql" %>
<%@ page import="co.edu.poli.ces3.universitas.database.Usuario" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html; ISO-8859-1" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Bulma - Tabs</title>
    <link rel="shortcut icon" href="images/fav_icon.png" type="image/x-icon">
    <!-- Bulma Version 0.9.x -->
    <link rel='stylesheet prefetch' href='https://unpkg.com/bulma@0.9.4/css/bulma.min.css'>
    <link rel="stylesheet" href="css/tabs.css">
    <script src="https://kit.fontawesome.com/7dc3015a44.js" crossorigin="anonymous"></script>
</head>
<body>
<nav class="navbar is-info">
    <div class="navbar-brand">
        <a class="navbar-item" href="#">
            <img src="https://www.politecnicojic.edu.co/images/logo/logo.png" alt="Bulma: a modern CSS framework based on Flexbox" width="112" height="28">
        </a>
        <div class="navbar-burger burger" data-target="navbarExampleTransparentExample">
            <span></span>
            <span></span>
            <span></span>
        </div>
    </div>
    <div id="navbarExampleTransparentExample" class="navbar-menu">
        <div class="navbar-start is-link">
            <a class="navbar-item" href="https://github.com/BulmaTemplates/bulma-templates">
                Home
            </a>
            <div class="navbar-item has-dropdown is-hoverable">
                <a class="navbar-link" href="/documentation/overview/start/">
                    Docs
                </a>
                <div class="navbar-dropdown is-boxed">
                    <a class="navbar-item" href="admin.html">
                        Admin
                    </a>
                    <a class="navbar-item" href="forum.html">
                        Forum
                    </a>
                    <a class="navbar-item" href="cover.html">
                        Cover
                    </a>
                    <a class="navbar-item" href="cards.html">
                        Cards
                    </a>
                    <a class="navbar-item" href="blog.html">
                        Blog
                    </a>
                    <hr class="navbar-divider">
                    <a class="navbar-item" href="search.html">
                        Search
                    </a>
                    <a class="navbar-item is-active" href="kanban.html">
                        Kanban
                    </a>
                </div>
            </div>
        </div>
        <div class="navbar-end">
            <div class="navbar-item">
                <div class="field is-grouped">
                    <p class="control">
                        <a class="bd-tw-button button" data-social-network="Twitter" data-social-action="tweet" data-social-target="#" target="_blank" href="https://twitter.com/intent/tweet?text=get free bulma templates:;url=https://github.com/BulmaTemplates/bulma-templates">
                                    <span class="icon">
                                        <i class="fab fa-twitter"></i>
                                    </span>
                            <span>
                                        Tweet
                                    </span>
                        </a>
                    </p>
                    <p class="control">
                        <a class="button is-primary" href="https://github.com/BulmaTemplates/bulma-templates">
                                    <span class="icon">
                                        <i class="fas fa-download"></i>
                                    </span>
                            <span>Download</span>
                        </a>
                    </p>
                </div>
            </div>
        </div>
    </div>
</nav>
<p class="hero is-info">
    <div class="hero-body">
        <div class="container">
            <h1 class="title">
                API
            </h1>
            <h2 class="subtitle">
                Universitas
            </h2>
        </div>
    </div>
    <div class="tabs is-boxed is-centered main-menu" id="nav">
        <ul>
            <li data-target="pane-1" id="1">
                <a>
                    <span class="icon is-small"><i class="fa fa-map-marker"></i></span>
                    <span>Ruta entre bloques</span>
                </a>
            </li>
            <li data-target="pane-2" id="2" class="is-active">
                <a>
                    <span class="icon is-small"><i class="fab fa-empire"></i></span>
                    <span>Users</span>
                </a>
            </li>
            <li data-target="pane-3" id="3">
                <a>
                    <span class="icon is-small"><i class="fab fa-superpowers"></i></span>
                    <span>Team</span>
                </a>
            </li>
            <li data-target="pane-4" id="4">
                <a>
                    <span class="icon is-small"><i class="fa fa-film"></i></span>
                    <span>Video</span>
                </a>
            </li>
        </ul>
    </div>
    <div class="tab-content">
        <div class="tab-pane" id="pane-1" style="display: none;">
            <figure>
                <img src="https://source.unsplash.com/0_xMuEbpFAQ/400x400" alt="💯" class="cent">
            </figure>
            <figure>
                <img src="https://source.unsplash.com/wPMvPMD9KBI/800x600" alt="💯" class="cent">
            </figure>
        </div>
        <div class="tab-pane" id="pane-3" style="display: none;">
            <div class="columns">
                <div class="container">
                    <div class="columns">
                        <div class="column">
                            <article class="media">
                                <div class="media-left">
                                    <i class="fab fa-github-square fa-4x"></i>
                                </div>
                                <div class="media-content">
                                    <div class="content">
                                        <p>
                                            <strong>Dominic Ipsum</strong>
                                            <br> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean efficitur sit amet massa fringilla egestas. Nullam condimentum luctus turpis.
                                        </p>
                                    </div>
                                </div>
                            </article>
                            <article class="media">
                                <div class="media-left">
                                    <i class="fab fa-empire fa-4x"></i>
                                </div>
                                <div class="media-content">
                                    <div class="content">
                                        <p>
                                            <strong>Cassie Ipsum</strong>
                                            <br> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean efficitur sit amet massa fringilla egestas. Nullam condimentum luctus turpis.
                                        </p>
                                    </div>
                                </div>
                            </article>
                        </div>
                        <div class="column">
                            <article class="media">
                                <div class="media-left">
                                    <i class="fab fa-ravelry fa-4x"></i>
                                </div>
                                <div class="media-content">
                                    <div class="content">
                                        <p>
                                            <strong>Avery Ipsum</strong>
                                            <br> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean efficitur sit amet massa fringilla egestas. Nullam condimentum luctus turpis.
                                        </p>
                                    </div>
                                </div>
                            </article>
                            <article class="media">
                                <div class="media-left">
                                    <i class="fab fa-github-alt fa-4x"></i>
                                </div>
                                <div class="media-content">
                                    <div class="content">
                                        <p>
                                            <strong>io Ipsum</strong>
                                            <br> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean efficitur sit amet massa fringilla egestas. Nullam condimentum luctus turpis. ╳
                                        </p>
                                    </div>
                                </div>
                            </article>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="tab-pane" id="pane-4" style="display: none;">
            <div class="columns is-centered">
                <div class="column is-three-quarters">
                    <div class="embed-container image">
                        <iframe src="https://player.vimeo.com/video/261794608" frameborder="0" webkitAllowFullScreen mozallowfullscreen allowFullScreen></iframe>
                    </div>
                </div>
            </div>
        </div>

        <div class="tab-pane is-active" id="pane-2" style="display: block;">
            <div class="content">
                <h1>Users</h1>
                <a class="button is-primary" id="btnAbrirModal"> Nuevo User </a>
                <!-- Modal -->
                <div id="myModal" class="modal">
                    <div class="modal-background">
                        <div class="modal-content">
                            <span class="close"><button class="delete is-medium"></button></span>
                            <form id="userForm" action="user" method="POST">
                                <p style="color: #ffff"><b> ID:  </b> <input type="text" name="id" id="id" class="content"> </p>
                                <p style="color: #ffff"><b> Name: </b><input type="text" name = "name" id="name" class="content"> </p>
                                <p style="color: #ffff"><b> Last Name: </b><input type="text" name = "lastName" id="lastName" class="content"> </p>
                                <p style="color: #ffff"><b> E-mail: </b><input type="text" name="email" id="email" class="content"> </p>
                                <p style="color: #ffff"><b> Pass: </b><input type="text" name="password" id="password" class="content"> </p>
                                <input class="button is-primary" type="submit" value="Guardar"> <br>
                                <p> la compañia Universitas no se hace responsable de los datos digitados en este formulario</p>
                            </form>
                        </div>
                    </div>
                </div>

                <table>
                    <thead>
                    <tr>
                        <th>DNI</th>
                        <th>Name</th>
                        <th>Last Name</th>
                        <th>E-mail</th>
                        <th>Pass</th>
                        <th>Created AT</th>
                        <th>Edited AT</th>
                        <th>Delete AT</th>
                        <th>Action Edited</th>
                        <th>Action Delete</th>
                    </tr>
                    </thead>
                    <tbody>

                    <%
                        ConexionMySql conexion = new ConexionMySql();
                        List<Usuario> usuarios = conexion.getUsers();
                        for (Usuario usuario : usuarios) {
                    %>
                    <tr>
                        <td><%= usuario.getId() %></td>
                        <td><%= usuario.getName() %></td>
                        <td><%= usuario.getLastName() %></td>
                        <td><%= usuario.getEmail() %></td>
                        <td><%= usuario.getPass() %></td>
                        <td><%= usuario.getCreatedAt() %></td>
                        <td><%= usuario.getUpdatedAt() %></td>
                        <%if (usuario.getDeletedAt() == null) {%><td></td><% }
                        else { %> <td> <%= usuario.getDeletedAt() %> </td> <% } %>
                        <td><button class="tag is-info is-large">Editar</button></td>
                        <td><button class="tag is-danger is-large">Eliminar</button></td>
                    </tr>
                    <% } %>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</section>
<script src="js/bulma.js"></script>
<script src="js/tabs.js"></script>

<script>
    var modal = document.getElementById("myModal");
    var btnAbrirModal = document.getElementById("btnAbrirModal");
    var spanCerrar = document.getElementsByClassName("close")[0];

    // Abrir modal cuando se hace clic en el botón
    btnAbrirModal.onclick = function() {
        modal.style.display = "block";
    }

    // Cerrar modal cuando se hace clic en la 'X'
    spanCerrar.onclick = function() {
        modal.style.display = "none";
    }

    // Cerrar modal cuando se hace clic fuera del área del modal
    window.onclick = function(event) {
        if (event.target == modal) {
            modal.style.display = "none";
        }
    }
</script>

<a href="hello-servlet">Hello Servlet</a>

</body>
</html>