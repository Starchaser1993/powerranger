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
</head>
<body>

<div class="mt-3">
    <button onclick="window.history.back();" class="btn btn-secondary">Volver</button>
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
                    <h5 class="card-title text-center">Zords</h5>
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

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>


