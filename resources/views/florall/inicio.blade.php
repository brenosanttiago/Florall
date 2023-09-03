@extends('app')
<link rel="icon" type="image/x-icon" href="/img/iconebolinha.png">

<nav class="navbar navbar-expand-lg bg-body-tertiary fixed-top" data-bs-theme="light">

<a class="ms-3" href="/"><img src="img/florallpng.png" alt="..." width="125" height="30"></a>
<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
    <div class="container d-flex justify-content-evenly camera">
        
        

         <div class="collapse navbar-collapse" id="navbarSupportedContent">
            
            <ul class="navbar-nav me-auto nav-underline">
          <li class="nav-item">
          <a class="nav-link " href="/biblioteca"style="color:#3CB371">Biblioteca</a>
         </li>
         </ul>

            <ul class="navbar-nav me-auto nav-underline">
          <li class="nav-item">
          <a class="nav-link" href="/minhasplantas" style="color:#3CB371">Minhas Plantas</a>
         </li>
         </ul>
            <ul class="navbar-nav me-auto nav-underline">
          <li class="nav-item">
          <a class="nav-link" href="/historico"style="color:#3CB371">Histórico</a>
         </li>
         </ul>

            <ul class="navbar-nav me-auto nav-underline">
          <li class="nav-item">
          <a class="nav-link" href="/duvidas"style="color:#3CB371">Dúvidas</a>
         </li>
         </ul>

         

         <div class="row g-3">
  <div class="col-sm-20" style="margin-top:30px">
  <form action="{{ route('pesquisar') }}" method="GET">
        <input class="form-control" type="search" name="termo" placeholder="Digite sua pesquisa" aria-label="Search" value="{{ $termo ?? '' }}" style="color:#3CB371">
</form> </div>

</div>
<a class="ms-3" href="/index"><img src="img/camera.png" alt="..." width="70" height="70"></a>

         <ul class="navbar-nav ms-auto">
                        <!-- Authentication Links -->
                        @guest
                            @if (Route::has('login'))
                                <li class="nav-item nav-underline">
                                    <a class="nav-link" style="color:#3CB371" href="{{ route('login') }}">{{ __('Login') }}</a>
                                </li>
                            @endif

                            @if (Route::has('register'))
                                <li class="nav-item nav-underline">
                                    <a class="nav-link" style="color:#3CB371" href="{{ route('register') }}">{{ __('Registrar') }}</a>
                                </li>
                            @endif
                        @else
                            <li class="nav-item dropdown">
                                <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                                    {{ Auth::user()->name }}
                                </a>

                                <div class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="{{ route('logout') }}"
                                       onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                        {{ __('Logout') }}
                                    </a>

                                    <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                                        @csrf
                                    </form>
                                </div>
                            </li>
                        @endguest
                    </ul>
        </div>
    </div>
</nav>



<div id="carouselExampleCaptions" class="carousel slide">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="/img/foto1.jpg" class="d-block w-100 h-50" alt="Não achei a foto">
      <div class="carousel-caption d-none d-md-block">
        <h5>First slide label</h5>
        <p>Some representative placeholder content for the first slide.</p>
      </div>
    </div>
    <div class="carousel-item">
      <img src="/img/foto2.jpg" class="d-block w-100 h-50" alt="Não achei a foto">
      <div class="carousel-caption d-none d-md-block">
        <h5>Second slide label</h5>
        <p>Some representative placeholder content for the second slide.</p>
      </div>
    </div>
    <div class="carousel-item">
      <img src="/img/foto3.jpg" class="d-block w-100 h-50" alt="Não achei a foto">
      <div class="carousel-caption d-none d-md-block">
        <h5>Third slide label</h5>
        <p>Some representative placeholder content for the third slide.</p>
      </div>
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>

<div>
    <p>Tirulai tiruflow</p>
    <p>Tirulai tiruflow</p>
    <p>Tirulai tiruflow</p>
    <p>Tirulai tiruflow</p>
    <p>Tirulai tiruflow</p>
    <p>Tirulai tiruflow</p>
    <p>Tirulai tiruflow</p>
    <p>Tirulai tiruflow</p>
    <p>Tirulai tiruflow</p>
    <p>Tirulai tiruflow</p>
    <p>Tirulai tiruflow</p>
    <p>Tirulai tiruflow</p>
    <p>Tirulai tiruflow</p>
    <p>Tirulai tiruflow</p>
    <p>Tirulai tiruflow</p>
    <p>Tirulai tiruflow</p>
    <p>Tirulai tiruflow</p>
    <p>Tirulai tiruflow</p>
</div>

