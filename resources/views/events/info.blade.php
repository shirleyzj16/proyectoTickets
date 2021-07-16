<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="description" content="This is an example of a meta description. This will often show up in search results.">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TicketCalidad</title>
    <!-- Bootstrap link/version -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous">
    <!-- Google fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display&family=Raleway:wght@100;300;500&display=swap" rel="stylesheet">
    <!-- Main stylesheet -->
    <link rel="stylesheet" href="./css/style.css" rel="stylesheet">
</head>
<body>

    <div class="container-fluid">

        <!-- Header -->
        <header>
            <nav class="fixed-top top-bar">
                <div class="row">
                    <div class="col top-logo">
                        <a class="logo" href="{{ url('') }}">TicketCalidad</a>
                    </div>
                    <div class="col top-login">
                        <a class="logo" href="{{ url('login') }}"><i class="far fa-user-circle"></i></a>
                    </div>
                </div>
            </nav>
        </header>
        <!-- Header -->

        <!-- Info -->
        <section>
            <div class="info-container">
                <div class="row" style="padding-top: 5em;">
                    <div class="col-sm">
                        <label class="info-title" for="firstname">Nombre completo</label>
                    </div>
                    <div class="col-sm">
                        <input class="info-input" type="text" name="firstname" id="firstname">
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm">
                        <label class="info-title" for="phone">Número de teléfono</label>
                    </div>
                    <div class="col-sm">
                        <input class="info-input" type="text" name="phone" id="phone">
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm">
                        <label class="info-title" for="email">Correo</label>
                    </div>
                    <div class="col-sm">
                        <input class="info-input" type="text" name="email" id="email"> 
                    </div>
                </div>
                <div class="row info-m">
                    <a class="card-button" href="{{ url('confirm') }}">Siguiente</a>
                </div>
            </div>
        </section>
        <!-- Info -->

        <!-- Footer -->
        <footer>
            <div class="row">
                <h2 class="footer-title">TicketCalidad</h2>
            </div>
            <div class="row">
                <nav>
                    <ul>
                        <li class="bottom-nav-item"><a aria-label="Facebook" class="footer-link" href="#"><i class="fab fa-facebook-f"></i></a></li>
                        <li class="bottom-nav-item"><a aria-label="Twitter" class="footer-link" href="#"><i class="fab fa-twitter"></i></a></li>
                        <li class="bottom-nav-item"><a aria-label="Instagram" class="footer-link" href="#"><i class="fab fa-instagram"></i></a></li>
                        <li class="bottom-nav-item"><a aria-label="Youtube" class="footer-link" href="#"><i class="fab fa-youtube"></i></a></li>
                    </ul>
                </nav>
            </div>
        </footer>
        <!-- Footer -->

    </div>
</body>
</html>