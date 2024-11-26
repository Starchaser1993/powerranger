<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Galería de Imágenes</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        .card img {
            height: 200px;
            object-fit: cover;
            cursor: pointer;
        }
        .gallery-title {
            text-align: center;
            margin-top: 20px;
            margin-bottom: 20px;
        }
    </style>
    <nav class="navbar navbar-expand-lg navbar-light bg-primary">
        <a class="navbar-brand" href="#">Galería de todas las temporadas</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link text-light" href="home.jsp">Inicio</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link text-light dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Temporadas
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="#" onclick="showSlider('slider-temporada-1');">Temporada 1</a>
                        <a class="dropdown-item" href="#" onclick="showSlider('slider-temporada-2');">Temporada 2</a>
                        <a class="dropdown-item" href="#" onclick="showSlider('slider-temporada-3');">Temporada 3</a>
                        <a class="dropdown-item" href="#" onclick="showSlider('slider-temporada-4');">Temporada 4</a>
                        <a class="dropdown-item" href="#" onclick="showSlider('slider-temporada-5');">Temporada 5</a>
                        <a class="dropdown-item" href="#" onclick="showSlider('slider-temporada-6');">Temporada 6</a>
                        <a class="dropdown-item" href="#" onclick="showSlider('slider-temporada-7');">Temporada 7</a>
                        <a class="dropdown-item" href="#" onclick="showSlider('slider-temporada-8');">Temporada 8</a>
                        <a class="dropdown-item" href="#" onclick="showSlider('slider-temporada-9');">Temporada 9</a>
                        <a class="dropdown-item" href="#" onclick="showSlider('slider-temporada-10');">Temporada 10</a>
                        <a class="dropdown-item" href="#" onclick="showSlider('slider-temporada-11');">Temporada 11</a>
                        <a class="dropdown-item" href="#" onclick="showSlider('slider-temporada-12');">Temporada 12</a>
                        <a class="dropdown-item" href="#" onclick="showSlider('slider-temporada-13');">Temporada 13</a>
                        <a class="dropdown-item" href="#" onclick="showSlider('slider-temporada-14');">Temporada 14</a>
                        <a class="dropdown-item" href="#" onclick="showSlider('slider-temporada-15');">Temporada 15</a>
                        <a class="dropdown-item" href="#" onclick="showSlider('slider-temporada-16');">Temporada 16</a>
                        <a class="dropdown-item" href="#" onclick="showSlider('slider-temporada-17');">Temporada 17</a>
                        <a class="dropdown-item" href="#" onclick="showSlider('slider-temporada-18');">Temporada 18</a>
                        <a class="dropdown-item" href="#" onclick="showSlider('slider-temporada-19');">Temporada 19</a>
                        <a class="dropdown-item" href="#" onclick="showSlider('slider-temporada-20');">Temporada 20</a>
                        <a class="dropdown-item" href="#" onclick="showSlider('slider-temporada-21');">Temporada 21</a>
                        <a class="dropdown-item" href="#" onclick="showSlider('slider-temporada-22');">Temporada 22</a>
                        <a class="dropdown-item" href="#" onclick="showSlider('slider-temporada-23');">Temporada 23</a>
                    </div>
                </li>
            </ul>
        </div>
    </nav>
</head>
<body>

<div class="mt-3">
    <button onclick="window.history.back();" class="btn btn-secondary">← Volver</button>
</div>

<div class="container">
    <h1 class="gallery-title text-primary">Galería de Imágenes</h1>
    <div class="row">
        <!-- Primera Imagen -->
        <div class="col-md-3 col-sm-6 mb-4">
            <div class="card">
                <img src="buscarimagenes/VillanosMP.jpg" class="card-img-top" alt="Villanos" data-toggle="modal" data-target="#modalVillanos">
                <div class="card-body">
                    <h5 class="card-title text-center">Villanos</h5>
                </div>
            </div>
        </div>
        <!-- Segunda Imagen -->
        <div class="col-md-3 col-sm-6 mb-4">
            <div class="card">
                <img src="buscarimagenes/ZordsMP.JPG" class="card-img-top" alt="Zords JPG" data-toggle="modal" data-target="#modalZordsJPG">
                <div class="card-body">
                    <h5 class="card-title text-center">Zords</h5>
                </div>
            </div>
        </div>
        <!-- Tercera Imagen -->
        <div class="col-md-3 col-sm-6 mb-4">
            <div class="card">
                <img src="buscarimagenes/ZordsMP.webp" class="card-img-top" alt="Zords WEBP" data-toggle="modal" data-target="#modalZordsWEBP">
                <div class="card-body">
                    <h5 class="card-title text-center">Zords y Megazord</h5>
                </div>
            </div>
        </div>
        <!-- Cuarta Imagen -->
        <div class="col-md-3 col-sm-6 mb-4">
            <div class="card">
                <img src="buscarimagenes/RangersMP.webp" class="card-img-top" alt="Rangers" data-toggle="modal" data-target="#modalRangers">
                <div class="card-body">
                    <h5 class="card-title text-center">Rangers</h5>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Modal Villanos -->
<div class="modal fade" id="modalVillanos" tabindex="-1" role="dialog" aria-labelledby="modalVillanosLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-body">
                <img src="buscarimagenes/VillanosMP.jpg" class="img-fluid" alt="Villanos">
            </div>
        </div>
    </div>
</div>

<!-- Modal Zords JPG -->
<div class="modal fade" id="modalZordsJPG" tabindex="-1" role="dialog" aria-labelledby="modalZordsJPGLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-body">
                <img src="buscarimagenes/ZordsMP.JPG" class="img-fluid" alt="Zords JPG">
            </div>
        </div>
    </div>
</div>

<!-- Modal Zords WEBP -->
<div class="modal fade" id="modalZordsWEBP" tabindex="-1" role="dialog" aria-labelledby="modalZordsWEBPLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-body">
                <img src="buscarimagenes/ZordsMP.webp" class="img-fluid" alt="Zords WEBP">
            </div>
        </div>
    </div>
</div>

<!-- Modal Rangers -->
<div class="modal fade" id="modalRangers" tabindex="-1" role="dialog" aria-labelledby="modalRangersLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-body">
                <img src="buscarimagenes/RangersMP.webp" class="img-fluid" alt="Rangers">
            </div>
        </div>
    </div>
</div>

<div id="slider-temporada-1" class="slider-container d-none">
    <p>Mighty Morphin Power Rangers</p>
    <div class="d-flex justify-content-center">
        <div id="carouselExampleIndicators1" class="carousel slide" data-ride="carousel" style="max-width: 600px;">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="d-block w-100" src="imagesslider/slider1temp/ElencoT1.jpg" alt="First slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="imagesslider/slider1temp/MegazordT1.jpg" alt="Second slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="imagesslider/slider1temp/PosterT1.jpg" alt="Third slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="imagesslider/slider1temp/Villano1.png" alt="Third slide">
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators1" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators1" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>
</div>

<div id="slider-temporada-2" class="slider-container d-none">
    <p>Alien Rangers</p>
    <div class="d-flex justify-content-center">
        <div id="carouselExampleIndicators2" class="carousel slide" data-ride="carousel" style="max-width: 600px;">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="d-block w-100" src="imagesslider/slider2temp/ElencoAR.webp" alt="First slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="imagesslider/slider2temp/PosterAR.webp" alt="Second slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="imagesslider/slider2temp/ZordsAR.png" alt="Third slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="imagesslider/slider2temp/Villano2.png" alt="Third slide">
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators2" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators2" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>
</div>

<div id="slider-temporada-3" class="slider-container d-none">
    <p>Power Rangers Zeo</p>
    <div class="d-flex justify-content-center">
        <div id="carouselExampleIndicators3" class="carousel slide" data-ride="carousel" style="max-width: 600px;">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="d-block w-100" src="imagesslider/slider3temp/Elenco%20Zeo.jpg" alt="First slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="imagesslider/slider3temp/Megazrod%20Zeo.jpg" alt="Second slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="imagesslider/slider3temp/Poster%20Zeo.jpg" alt="Third slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="imagesslider/slider3temp/Villano3.png" alt="Third slide">
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators3" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators3" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>
</div>

<div id="slider-temporada-4" class="slider-container d-none">
    <p>Power Rangers Turbo</p>
    <div class="d-flex justify-content-center">
        <div id="carouselExampleIndicators4" class="carousel slide" data-ride="carousel" style="max-width: 600px;">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="d-block w-100" src="imagesslider/slider4temp/Elenco%20Turbo.webp" alt="First slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="imagesslider/slider4temp/Megazord%20Turbo.webp" alt="Second slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="imagesslider/slider4temp/Poster%20Turbo.webp" alt="Third slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="imagesslider/slider4temp/Villano4.png" alt="Third slide">
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators4" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators4" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>
</div>

<div id="slider-temporada-5" class="slider-container d-none">
    <p>Power Rangers Space</p>
    <div class="d-flex justify-content-center">
        <div id="carouselExampleIndicators5" class="carousel slide" data-ride="carousel" style="max-width: 600px;">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="d-block w-100" src="imagesslider/slider5temp/Elenco%20Space.jpg" alt="First slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="imagesslider/slider5temp/Megazord%20Space.jpg" alt="Second slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="imagesslider/slider5temp/Poster%20Space.jpg" alt="Third slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="imagesslider/slider5temp/Villano5.png" alt="Third slide">
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators5" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators5" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>
</div>

<div id="slider-temporada-6" class="slider-container d-none">
    <p>Power Rangers Lost Galaxi</p>
    <div class="d-flex justify-content-center">
        <div id="carouselExampleIndicators6" class="carousel slide" data-ride="carousel" style="max-width: 600px;">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="d-block w-100" src="imagesslider/slider6temp/Elenco%20LG.webp" alt="First slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="imagesslider/slider6temp/Megazord%20LG.jpg" alt="Second slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="imagesslider/slider6temp/Poster%20LG.jpg" alt="Third slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="imagesslider/slider6temp/Villano6.png" alt="Third slide">
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators6" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators6" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>
</div>

<div id="slider-temporada-7" class="slider-container d-none">
    <p>Power Rangers Lightspeed Rescue</p>
    <div class="d-flex justify-content-center">
        <div id="carouselExampleIndicators7" class="carousel slide" data-ride="carousel" style="max-width: 600px;">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="d-block w-100" src="imagesslider/slider7temp/Elenco%20LR.webp" alt="First slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="imagesslider/slider7temp/Megazord%20LR.jpg" alt="Second slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="imagesslider/slider7temp/Poster%20LR.jpg" alt="Third slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="imagesslider/slider7temp/Villano7.png" alt="Third slide">
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators7" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators7" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>
</div>

<div id="slider-temporada-8" class="slider-container d-none">
    <p>Power Rangers Time Force</p>
    <div class="d-flex justify-content-center">
        <div id="carouselExampleIndicators8" class="carousel slide" data-ride="carousel" style="max-width: 600px;">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="d-block w-100" src="imagesslider/slider8temp/Elenco%20TF.webp" alt="First slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="imagesslider/slider8temp/Megazord%20TF.jpg" alt="Second slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="imagesslider/slider8temp/Poster%20TF.jpg" alt="Third slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="imagesslider/slider8temp/Villano8.png" alt="Third slide">
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators8" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators8" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>
</div>

<div id="slider-temporada-9" class="slider-container d-none">
    <p>Power Rangers Wild Force</p>
    <div class="d-flex justify-content-center">
        <div id="carouselExampleIndicators9" class="carousel slide" data-ride="carousel" style="max-width: 600px;">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="d-block w-100" src="imagesslider/slider9temp/Elenco%20WF.jpg" alt="First slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="imagesslider/slider9temp/Megazord%20WF.jpg" alt="Second slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="imagesslider/slider9temp/Poster%20WF.jpg" alt="Third slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="imagesslider/slider9temp/Villano9.png" alt="Third slide">
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators9" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators9" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>
</div>

<div id="slider-temporada-10" class="slider-container d-none">
    <p>Power Rangers Ninja Storm</p>
    <div class="d-flex justify-content-center">
        <div id="carouselExampleIndicators10" class="carousel slide" data-ride="carousel" style="max-width: 600px;">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="d-block w-100" src="imagesslider/slider10temp/Elenco%20NS.jpg" alt="First slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="imagesslider/slider10temp/Megazord%20NS.jpg" alt="Second slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="imagesslider/slider10temp/Poster%20NS.jpg" alt="Third slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="imagesslider/slider10temp/Villano10.png" alt="Third slide">
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators10" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators10" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>
</div>

<div id="slider-temporada-11" class="slider-container d-none">
    <p>Power Rangers Dino Thunder</p>
    <div class="d-flex justify-content-center">
        <div id="carouselExampleIndicators11" class="carousel slide" data-ride="carousel" style="max-width: 600px;">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="d-block w-100" src="imagesslider/slider11temp/Elenco%20DT.webp" alt="First slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="imagesslider/slider11temp/Megazord%20DT.webp" alt="Second slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="imagesslider/slider11temp/Poster%20DT.jpg" alt="Third slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="imagesslider/slider11temp/Villano11.png" alt="Third slide">
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators11" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators11" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>
</div>

<div id="slider-temporada-12" class="slider-container d-none">
    <p>Power Rangers SPD</p>
    <div class="d-flex justify-content-center">
        <div id="carouselExampleIndicators12" class="carousel slide" data-ride="carousel" style="max-width: 600px;">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="d-block w-100" src="imagesslider/slider12temp/Elenco%20SPD.jpeg" alt="First slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="imagesslider/slider12temp/Megazord%20SPD.png" alt="Second slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="imagesslider/slider12temp/Poster%20SPD.jpg" alt="Third slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="imagesslider/slider12temp/Villano12.png" alt="Third slide">
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators12" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators12" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>
</div>

<div id="slider-temporada-13" class="slider-container d-none">
    <p>Power Rangers Mystic Force</p>
    <div class="d-flex justify-content-center">
        <div id="carouselExampleIndicators13" class="carousel slide" data-ride="carousel" style="max-width: 600px;">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="d-block w-100" src="imagesslider/slider13temp/Elenco%20MF.jpg" alt="First slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="imagesslider/slider13temp/Megazord%20MF.jpg" alt="Second slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="imagesslider/slider13temp/Poster%20MF.webp" alt="Third slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="imagesslider/slider13temp/Villano13.png" alt="Third slide">
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators13" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators13" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>
</div>

<div id="slider-temporada-14" class="slider-container d-none">
    <p>Power Rangers Operation Overdrive</p>
    <div class="d-flex justify-content-center">
        <div id="carouselExampleIndicators14" class="carousel slide" data-ride="carousel" style="max-width: 600px;">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="d-block w-100" src="imagesslider/slider14temp/Elenco%20OO.webp" alt="First slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="imagesslider/slider14temp/Megazord%20OO.jpg" alt="Second slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="imagesslider/slider14temp/Poster%20OO.jpg" alt="Third slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="imagesslider/slider14temp/Villano14.png" alt="Third slide">
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators14" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators14" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>
</div>

<div id="slider-temporada-15" class="slider-container d-none">
    <p>Power Rangers Jungle Fury</p>
    <div class="d-flex justify-content-center">
        <div id="carouselExampleIndicators15" class="carousel slide" data-ride="carousel" style="max-width: 600px;">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="d-block w-100" src="imagesslider/slider15temp/Elenco%20JF.jpg" alt="First slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="imagesslider/slider15temp/Megazord%20JF.jpg" alt="Second slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="imagesslider/slider15temp/Poster%20JF.jpg" alt="Third slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="imagesslider/slider15temp/Villano15.png" alt="Third slide">
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators15" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators15" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>
</div>

<div id="slider-temporada-16" class="slider-container d-none">
    <p>Power Rangers RPM</p>
    <div class="d-flex justify-content-center">
        <div id="carouselExampleIndicators16" class="carousel slide" data-ride="carousel" style="max-width: 600px;">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="d-block w-100" src="imagesslider/slider16temp/Elenco%20RPM.jpg" alt="First slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="imagesslider/slider16temp/Megazord%20RPM.jpg" alt="Second slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="imagesslider/slider16temp/Poster%20RPM.webp" alt="Third slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="imagesslider/slider16temp/Villano16.png" alt="Third slide">
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators16" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators16" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>
</div>

<div id="slider-temporada-17" class="slider-container d-none">
    <p>Power Rangers Samurai</p>
    <div class="d-flex justify-content-center">
        <div id="carouselExampleIndicators17" class="carousel slide" data-ride="carousel" style="max-width: 600px;">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="d-block w-100" src="imagesslider/slider17temp/Elenco%20Sa.webp" alt="First slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="imagesslider/slider17temp/Megazord%20Sa.jpg" alt="Second slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="imagesslider/slider17temp/Poster%20Sa.jpg" alt="Third slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="imagesslider/slider17temp/Villano17.png" alt="Third slide">
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators17" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators17" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>
</div>

<div id="slider-temporada-18" class="slider-container d-none">
    <p>Power Rangers Megaforce</p>
    <div class="d-flex justify-content-center">
        <div id="carouselExampleIndicators18" class="carousel slide" data-ride="carousel" style="max-width: 600px;">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="d-block w-100" src="imagesslider/slider18temp/Elenco%20Me.jpg" alt="First slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="imagesslider/slider18temp/Megazord%20Me.jpg" alt="Second slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="imagesslider/slider18temp/Poster%20Me.jpg" alt="Third slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="imagesslider/slider18temp/Villano18.png" alt="Third slide">
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators18" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators18" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>
</div>

<div id="slider-temporada-19" class="slider-container d-none">
    <p>Power Rangers Dino Charge</p>
    <div class="d-flex justify-content-center">
        <div id="carouselExampleIndicators19" class="carousel slide" data-ride="carousel" style="max-width: 600px;">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="d-block w-100" src="imagesslider/slider19temp/Elenco%20DC.webp" alt="First slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="imagesslider/slider19temp/Megazord%20DC.jpg" alt="Second slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="imagesslider/slider19temp/Poster%20DC.webp" alt="Third slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="imagesslider/slider19temp/Villano19.png" alt="Third slide">
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators19" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators19" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>
</div>

<div id="slider-temporada-20" class="slider-container d-none">
    <p>Power Rangers Ninja Steel</p>
    <div class="d-flex justify-content-center">
        <div id="carouselExampleIndicators20" class="carousel slide" data-ride="carousel" style="max-width: 600px;">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="d-block w-100" src="imagesslider/slider20temp/Elenco%20Ni.webp" alt="First slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="imagesslider/slider20temp/Megazord%20Ni.jpg" alt="Second slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="imagesslider/slider20temp/Poster%20Ni.jpg" alt="Third slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="imagesslider/slider20temp/Villano20.png" alt="Third slide">
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators20" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators20" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>
</div>

<div id="slider-temporada-21" class="slider-container d-none">
    <p>Power Rangers Beast Morpher</p>
    <div class="d-flex justify-content-center">
        <div id="carouselExampleIndicators21" class="carousel slide" data-ride="carousel" style="max-width: 600px;">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="d-block w-100" src="imagesslider/slider21temp/Elenco%20BM.jpg" alt="First slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="imagesslider/slider21temp/Megazord%20BM.jpg" alt="Second slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="imagesslider/slider21temp/Poster%20BM.jpg" alt="Third slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="imagesslider/slider21temp/Villano21.png" alt="Third slide">
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators21" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators21" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>
</div>

<div id="slider-temporada-22" class="slider-container d-none">
    <p>Power Rangers Dino Fury</p>
    <div class="d-flex justify-content-center">
        <div id="carouselExampleIndicators22" class="carousel slide" data-ride="carousel" style="max-width: 600px;">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="d-block w-100" src="imagesslider/slider22temp/Elenco%20DF.jpg" alt="First slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="imagesslider/slider22temp/Megazord%20DF.jpg" alt="Second slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="imagesslider/slider22temp/Poster%20DF.webp" alt="Third slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="imagesslider/slider22temp/Villano22.png" alt="Third slide">
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators22" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators22" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>
</div>

<div id="slider-temporada-23" class="slider-container d-none">
    <p>Power Rangers Cosmic Fury</p>
    <div class="d-flex justify-content-center">
        <div id="carouselExampleIndicators23" class="carousel slide" data-ride="carousel" style="max-width: 600px;">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="d-block w-100" src="imagesslider/slider23temp/Elenco%20CF.webp" alt="First slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="imagesslider/slider23temp/Megazord%20CF.jpg" alt="Second slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="imagesslider/slider23temp/Poster%20CF.webp" alt="Third slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="imagesslider/slider23temp/Villano23.jpg" alt="Third slide">
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators23" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators23" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>
</div>

<style>
    .carousel-control-prev-icon,
    .carousel-control-next-icon {
        background-color: black;
        border-radius: 50%;
        width: 40px;
        height: 40px;
        display: flex;
        justify-content: center;
        align-items: center;
        color: white;
        font-size: 1.2rem;
    }

    .carousel-control-prev-icon::before {
        content: '‹';
        font-family: Arial, sans-serif;
    }

    .carousel-control-next-icon::before {
        content: '›';
        font-family: Arial, sans-serif;
    }

    .carousel-inner img {
        height: 400px;
        object-fit: cover;
        width: 100%;
    }

    .modal-body img {
        height: 400px;
        object-fit: cover;
        width: 100%;
    }
    .d-none {
        display: none !important;
    }
    .slider-container {
        margin-top: 20px;
        text-align: center;
    }
</style>

<script>
    function showSlider(sliderId) {
        const sliders = document.querySelectorAll('.slider-container');
        sliders.forEach(slider => {
            slider.classList.add('d-none');
        });

        const selectedSlider = document.getElementById(sliderId);
        if (selectedSlider) {
            selectedSlider.classList.remove('d-none');
        }
    }
</script>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>

<footer class="bg-light text-center text-lg-start mt-5">
    <div class="container p-4">
        <div class="row">
            <div class="col-lg-6 col-md-12 mb-4 mb-md-0">
                <h5 class="text-uppercase">Sobre la aplicación</h5>
                <p>
                    Esta es una aplicación de exploración de Power Rangers, donde puedes encontrar información sobre episodios, temporadas, rangers, villanos y zords.
                </p>
            </div>
            <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
                <h5 class="text-uppercase">Enlaces útiles</h5>
                <ul class="list-unstyled mb-0">
                    <li><a href="home.jsp" class="text-dark">Inicio</a></li>
                    <li><a href="RangersServlet" class="text-dark">Rangers</a></li>
                    <li><a href="ZordsServlet" class="text-dark">Zords</a></li>
                    <li><a href="VillanosServlet" class="text-dark">Villanos</a></li>
                </ul>
            </div>
            <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
                <h5 class="text-uppercase">Contacto</h5>
                <p>Email: contacto@powerrangers.com</p>
                <p>Teléfono: +56 9 1234 5678</p>
            </div>
        </div>
    </div>
    <div class="text-center p-3" style="background-color: #e9ecef;">
        <p class="mb-0">© 2024 Power Rangers Fan App. Todos los derechos reservados.</p>
        <small>Consulta nuestras <a href="terminos.jsp">políticas de buena conducta</a>.</small>
    </div>
</footer>

</html>


