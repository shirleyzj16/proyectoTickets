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

        <!-- Select -->
        <section class="description-section">
            <div class="row select-bg">
                <div class="col-sm">
                    <div>
                        <p class="select-text">Adulto</p>
                    </div>
                </div>
                <div class="col-sm">
                    <div>
                        <p class="select-text">$ 00.00</p>
                    </div>
                </div>
                <div class="col-sm">
                    <div>
                        <p class="select-text"><span><button type="button" class="select-btn" href="#">+</button></span>00<span><button type="button" class="select-btn">-</button></span></p>
                    </div>
                </div>
            </div>
            <div class="row select-bg">
                <div class="col-sm">
                    <div>
                        <p class="select-text">Niño</p>
                    </div>
                </div>
                <div class="col-sm">
                    <div>
                        <p class="select-text">$ 00.00</p>
                    </div>
                </div>
                <div class="col-sm">
                    <div>
                        <p class="select-text"><span><button type="button" class="select-btn" href="#">+</button></span>00<span><button type="button" class="select-btn">-</button></span></p>
                    </div>
                </div>
            </div>
        </section>
        <!-- Select -->

        <!-- Total -->
        <section class="total-section">
            <p class="total-title">Total: <span class="total-text">$ 00.00</span></p>
            <a class="card-button" href="{{ url('info') }}">Siguiente</a>
        </section>
        <!-- Total -->

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