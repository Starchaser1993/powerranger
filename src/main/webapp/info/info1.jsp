<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Info 1</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<nav aria-label="Page navigation example">
    <ul class="pagination">
        <li class="page-item"><a class="page-link" href="info3.jsp">Previous</a></li>
        <li class="page-item"><a class="page-link" href="info1.jsp">1</a></li>
        <li class="page-item"><a class="page-link" href="info2.jsp">2</a></li>
        <li class="page-item"><a class="page-link" href="info3.jsp">3</a></li>
        <li class="page-item"><a class="page-link" href="info2.jsp">Next</a></li>
    </ul>
</nav>
<div class="mt-3">
    <button onclick="window.history.back();" class="btn btn-secondary">Volver</button>
</div>
<div class="container mt-4">
    <div class="row">
        <% for (int i = 1; i <= 9; i++) { %>
        <div class="col-md-4 mb-4">
            <div class="card" style="width: 18rem;">
                <img src="https://via.placeholder.com/150" class="card-img-top" alt="Placeholder Image">
                <div class="card-body">
                    <h5 class="card-title">Card title <%= i %></h5>
                    <p class="card-text">Some quick example text for card <%= i %>.</p>
                    <a href="#" class="btn btn-primary">Go somewhere</a>
                </div>
            </div>
        </div>
        <% } %>
    </div>
</div>
</body>
</html>
