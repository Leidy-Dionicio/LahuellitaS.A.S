<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <title>La huellita S.A.S</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1, maximum-scale=1, minimum-scale=1">
    <link rel="stylesheet" href="css/fontello.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>
    <link href="https://unpkg.com/ionicons@4.5.10-0/dist/css/ionicons.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/estilos3.css">
</head>

<style>
    #imag img{
       
        max-width:  500px;
        height: 400px;
        
    }
 
    
</style>
<body style="background: url('img/fondo.jpg')no-repeat;">
    
    
    <header>
        <div class="contenedor">
            <section style="margin-top: 1%">
            <h1><i class="icon ion-md-walk">La huellita S.A.S</i></h1>
            <input type="checkbox" id="menu-bar">
            <label class="icon-menu" for="menu-bar"></label>
            <nav class="menu">
                
                <a style="border: 2px #1f53c5 solid;margin: 3px; background: oldlace; margin-left: -340px"  href="#banner">Inicio</a>
                <a style="border: 2px #1f53c5 solid; margin: 3px; background: oldlace;" href="#contactos">Contactos</a>
                <a style="border: 2px #1f53c5 solid; margin: 3px; background: oldlace;" href="log_in.jsp">Iniciar Sesion</a>
                
            </nav>
            </section>
        </div>
    </header>
    

    
    <main>
        <section id="banner">
            <img src="img/1.jpeg" style="width: 95%; height: 140%; margin: 2%">
            <div class="contenedor">
            <h2></h2>
            <p></p>
            </div>
        </section>
        <br>
        <section id="Bienvenidos empleados">
            <br>
             <br>
             <br>
             <br>
             <br>
            <h2><center>Bienvenido Señor usuario</center></h2>
            <p><center style="font-family: 'Verdana'">En esta pagina encontraras todo lo relacionaod con las ultimas producciones al igual que los contactos para hacer tus pedidos si estas interesad@. Comunicate con nosotros para darte una atención mas personalizada. Por cierto queremos contarte que somos una empresa facatativeña que lleva alrededor de 5 años en el mercado, esperamos que disdrutes de nuestros productos tanto como nosotros lo hacemos y nos des sugerencias para poder seguir mejorando y darte cada dia mas un mejor servicio. Gracias!! </center></p>
        </section>
        <h3 style="text-align-last: center">Ultimas producciones</h3>
        <section id="blog" style="margin-left: -16%">
            
            <br>
            <div class="contenedor">
                <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel" style="box-shadow: 10px 5px 20px salmon">
  <div class="carousel-indicators">
    <button type="button" transition: transform="20s" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="3" aria-label="Slide 4"></button>
  </div>
                    
                    <section id="imag">
                    <div class="carousel-inner">
    <div class="carousel-item active">
        <img style="" src="img/10.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
        <img src="img/11.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
        <img src="img/13.jpg" class="d-block w-100" alt="...">
    </div>
      <div class="carousel-item">
          <img src="img/Zapato-elegante.jpg" class="d-block w-100" alt="...">
    </div>
  </div>
                    </section>
                        
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators"  data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators"  data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>   
                
            </div>
        </section>
        
        
        <section id="colora" style="text-align-last: center; float: right; width: 400px; height: 100px; margin-top: -25%; margin-right: 12%; font-family: 'Verdana'">
            <div class="list-group">
  <a class="list-group-item list-group-item-action active" aria-current="true">
    Elija el tipo de zapatos que desea buscar
  </a>
  <a href="" class="list-group-item list-group-item-action">Calazado Elegante</a>
  <a href="" class="list-group-item list-group-item-action">Bota para Dama</a>
  <a href="" class="list-group-item list-group-item-action">Zapato/Tenni Colegial</a>
  <a href="" class="list-group-item list-group-item-action">Bota Industrial</a>
</div>
        </section>
        
        <hr>
        <section id="info">
            <h3>Conozca nuestro grupo de trabajo</h3>
            <div class="contenedor">
                <div class="info-users">
                    <img src="img/Leidy.jpeg">
                    <h4>Leidy Dionicio</h4>
                </div>
                <div class="info-users">
                    <img src="img/sebastian.jpeg">
                    <h4>Sebastian Triviño</h4>
                </div>
                <div class="info-users">
                    <img src="img/Nicolas.jpg">
                    <h4>Nicolas Quimbayo</h4>
                </div>
                <div class="info-users">
                    <img src="img/Varon.jpeg">
                    <h4>Juandariel Varon</h4>
                </div>
            </div>
        </section>
    </main>
    
    <hr>
    
    <footer id="contactos">
       
       <div class="container-footer-all">
        
            <div class="container-body">

                <div class="colum1">
                    <h1>Mas información de la compañia</h1>
                    <br>
                    <p>LA HUELLITA S.A.S es una MIPYME que se encarga de la manufactura de todo tipo de calzado ofreciendo calidad en todos sus productos ya que son minuciosamente fabricados para dar la mejor terminación que se puede optar en el mercado. Somos una empresa familiar que se destaca por la originalidad e indole de esta clase.</p>

                </div>

                <div class="colum2">
                    
                    <h1>Redes Sociales</h1>
<br>
                    <div class="row">
                        <a href="https://www.facebook.com/Fabrica-de-calzado-La-Huellita-102309948173903"><img src="css/facebook.png"></a>
                        <label>Siguenos en Facebook</label>
                    </div>
                    <div class="row">
                         <a href="#"><img src="css/twitter.png"></a>
                        <label>Siguenos en Twitter</label>
                    </div>
                    <div class="row">
                         <a href="#"><img src="css/instagram.png"></a>
                        <label>Siguenos en Instagram</label>
                    </div>
                    <div class="row">
                         <a href="#"><img src="css/google-plus.png"></a>
                        <label>Siguenos en Google Plus</label>
                    </div>


                </div>

                <div class="colum3">

                    <h1>Informacion Contactos</h1>
                    <br>

                    <div class="row2">
                        <img src="css/house.png">
                        <label>Facatativa, Cundinamarca
                        Carrera 15 N°11-23</label>
                    </div>

                    <div class="row2">
                        <img src="css/smartphone.png">
                        <label>+57 3023260677 </label>
                    </div>

                    <div class="row2">
                        <img src="css/contact.png">
                         <label>lahuellitasas@gmail.com</label>
                    </div>

                </div>

            </div>
        
        </div>
        
        <div class="container-footer">
               <div class="footer">
                    <div class="copyright">
                        © 2021 Todos los Derechos Reservados | <a href="#Inicios">LA HUELLITA S.A.S</a>
                    </div>

                    <div class="information">
                        <a href="">Informacion Compañia</a> | <a href="">Privacion y Politica</a> | <a href="">Terminos y Condiciones</a>
                    </div>
                </div>

            </div>
        
    </footer>
    
</body>
</html>
