<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
    <title>Florall - A arte de florescer</title>

    <style>

.form-control:focus {
    border-color: #3CB371; /* Substitua pela cor desejada */
    box-shadow: 0 0 0 0.2rem rgba(60, 179, 113, 0.25); /* Adiciona um leve sombreamento */
}
.form-control::placeholder {
    color: #3CB371; /* Substitua pela cor desejada */
}
        .camera{
            font-family: cursive;
            font: size 25px;
            color:#50A060;
        }
        .title{
            font-family: cursive;
            font: size 100px;
            color:#50A060;
        }

        /* loading.css */
        .loading-overlay {
            position: fixed;
            width: 100%;
            height: 100%;
            top: 0;
            left: 0;
            background-color: #50A060;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            z-index: 9999;
        }

       
    .loading-spinner {
        font-size: 40px; /* Ajuste o tamanho do ícone conforme necessário */
        color: white; /* Cor do ícone */
        animation: spin 1s linear infinite;
    }

    .loading-text {
        color: white; /* Cor do texto */
        font-size: 18px; /* Tamanho do texto */
        margin-top: 50px; /* Espaçamento superior */
        font-family: cursive;
    }

        @keyframes spin {
            0% { transform: rotate(0deg); }
            100% { transform: rotate(360deg); }
        }

        /* Personalize a cor do sublinhado para os links de navegação */
    .nav-underline .nav-link {
        position: relative;
    }

    .nav-underline .nav-link::before {
        content: '';
        position: absolute;
        bottom: -2px; /* Ajuste conforme necessário */
        left: 0;
        width: 100%;
        height: 2px;
        background-color: #3CB371; /* Substitua pela cor desejada */
        transform: scaleX(0);
        transform-origin: bottom right;
        transition: transform 0.3s ease-out;
    }

    .nav-underline .nav-link:hover::before,
    .nav-underline .nav-link:focus::before {
        transform: scaleX(1);
        transform-origin: bottom left;
    }
    </style>
</head>
<body>
  <div class="loading-overlay">
    <div class="loading-spinner">
        <i class="fas fa-leaf"></i>
    </div>
    <p class="loading-text">Carregando...</p>
</div>

    <div class="container">
        @yield('content')
    </div>


    
    <script>
    // Função para ocultar a tela de carregamento
    function hideLoadingOverlay() {
        document.querySelector('.loading-overlay').style.display = 'none';
    }

    // Oculta a tela de carregamento após 3000 milissegundos (3 segundos)
    setTimeout(hideLoadingOverlay, 3000);
</script>

    
</body>
</html>

