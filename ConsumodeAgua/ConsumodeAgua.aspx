<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConsumodeAgua.aspx.cs" Inherits="ConsumodeAgua.ConsumodeAgua" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <!-- CSS only -->
    <link href="Public/Css/StyleSheet1.css" rel="stylesheet" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
    <title>Consumo de Agua</title>
</head>
<body>
    
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary mb-1">
    <div class="container-fluid">
        <a class="navbar-brand" href="#"><span class="icon-home3" ></span> Suelo de Agua Nuevo Mundo.</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarScroll" aria-controls="navbarScroll" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarScroll">
        <ul class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll" style="--bs-scroll-height: 100px;">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="#"><span class="icon-phone"></span> +528556778345</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#"><span class="icon-mail3"></span> Samapo@example.com</a>
          </li>
        </ul>
        <ul class="navbar-nav me-2">
        <li class="nav-item dropdown me-5">
          <a class="nav-link dropdown-toggle btn btn-info me-2" type="button" href="#" id="navbarScrollingDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              Perfil<span class="icon-user"></span>
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarScrollingDropdown">
          <li><a class="dropdown-item" href="#"><span class="icon-cog"></span> Configuracion</a></li>
          <li><a class="dropdown-item" href="/Login&Register"><span class="icon-switch"></span> Cerrar Sesión</a></li>
          </ul>
      </li>
        </div>
      </div>
    </div>
  </nav>


<nav class="navbar navbar-expand-lg navbar-dark bg-primary mb-4">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">
            <img src="/assets/imagenes/logo.png" alt="" width="100" height="85">
        </a>
        <a class="navbar-brand" href="#">Samapo</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarScroll" aria-controls="navbarScroll" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarScroll">
        <ul class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll" style="--bs-scroll-height: 100px;">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="/UsuarioDefault#">Inicio</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/InformacionTHUsuarioDefault#Tarifas">Tarifas</a>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarScrollingDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                Historial
            </a>
            <ul class="dropdown-menu" aria-labelledby="navbarScrollingDropdown">
              <li><a class="dropdown-item" href="/InformacionTHUsuarioDefault#Historial">Historial</a></li>
              <li><a class="dropdown-item" href="#">Another action</a></li>
            </ul>
          </li>
          <li class="nav-item">
            <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Contacto</a>
          </li>
        </ul>
        <form class="d-flex">
          <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
          <button class="btn btn-outline-success" type="submit">Search</button>
        </form>
      </div>
    </div>
  </nav>

        <br />
    <br />
    <br />
    <div class="container form-condimodeagua">
        <h3>Historial</h3>
        <div class="row">
            <div class="card col-md-3 mx-auto my-5 table-responsive bg-transparent" style="width: 40rem;">
                <a class="navbar-brand" href="#">
                    <img  src="assets/imagenes/Medidordeagua.png" alt="" width="215" height="215">
                </a>
        <br id="medidordeagua">
        <form class="mx-auto bg-primary bg-opacity-50" id="f1" name="f1" action="/Calculadora" method="post">
            <fieldset>
                <legend>Consumo agua<span class="icon-droplet"></span></legend>
                <br />
                <br />
                <label for="">Ingrese la cantidad de agua en m3</label>
                <br />
                <span class="icon-meter"> </span><input minlength="4" maxlength="5" type="number" id="aguam3" name="aguam3">
                <br />
                <br />
            <select name="   " id="departamentos" onchange="cambia_Tarifas()">
                <option value="0">!--Elige la opción --¡</option>
                <option value="AMAZONAS"></option>
                <option value="ANTIOQUIA"></option>
            </select>
            <br>
            <select name="TarifasPrecio" id="minucipios">
                <option value="0"> </option>
            </select>
            <br />
            <br />
            <input type="submit" value="Calcular">
            <br />
            <br />
            <label for=""><strong>Precio a pagar</strong></label>
            <br />
            <br />
            <input type="text"  id="Result" disabled placeholder="">
            <br />
            <br />
         </fieldset>   
        </form>
            </div>
        </div>
    </div>

    <div class="container form-condimodeagua mt-5">
    <div class="row">
        <div class="acercade table-responsive">
            <img src="/assets/imagenes/logo2.png" alt="logo2" id="logo2">
            <div>
                <footer>
                    <pre id="Iformacion">
                    ¿Has pensado alguna vez en lo extraordinario que es abrir la llave y
                        tener agua? Contar con agua implica el trabajo de miles de personas,
                        la extracción del subsuelo (incluso a costa del hundimiento de algunas
                        zonas), el traslado de millones de litros de agua de otras cuencas
                        hídricas y de otras comunidades, entre muchas otras cosas.
                        <label for="">Para mas informacion<a href="http://www.cuidarelagua.cdmx.gob.mx/">clik aqui</a></label>
                    </pre>
                    <br />
                    <label for="">Contact Us</label>
                    <ul class="navbar-nav">
                        <li class="nav-item">Call Us: <a id="tb" href="">+528556778345</a></li>
                        <li class="nav-item">E-mail: <a id="tb" href="">Samapo@example.com</a></li>
                    </ul>
                </footer>
            </div>
        </div>
        <div class="copy">
                <nav class="navbar navbar-expand-lg navbar-dark bg-transparent mb-1">
                    <div class="container-fluid">
                      <div class="collapse navbar-collapse" id="navbarScroll">
                        <ul class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll" style="--bs-scroll-height: 100px;">
                          <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="#" id="separate">Copyright © Sapamo all rights reserved.</a>
                          </li>
                            </ul>
                          </li>
                        </ul>
                
                        <ul class="navbar-nav">
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="#" id="separate">Privacy Policy</a>
                              </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Contact Us</a>
                              </li>
                        </ul>
                      </div>
                    </div>
                  </nav>

        </div>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>


</body>
</html>
