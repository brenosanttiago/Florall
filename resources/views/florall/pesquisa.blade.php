@extends('app')
<link rel="icon" type="image/x-icon" href="/img/iconebolinha.png">

<nav class="navbar navbar-expand-lg bg-body-tertiary">

<a class="ms-3" href="/"><img src="img/florallpng.png" alt="..." width="125" height="30"></a>
    <div class="container d-flex justify-content-evenly camera">
        
        

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
            
            <ul class="navbar-nav me-auto">
          <li class="nav-item">
          <a class="nav-link " href="/biblioteca">Biblioteca</a>
         </li>
         </ul>

            <ul class="navbar-nav me-auto">
          <li class="nav-item">
          <a class="nav-link" href="/minhasplantas">Minhas Plantas</a>
         </li>
         </ul>
            <ul class="navbar-nav me-auto">
          <li class="nav-item">
          <a class="nav-link" href="/historico">Histórico</a>
         </li>
         </ul>

            <ul class="navbar-nav me-auto">
          <li class="nav-item">
          <a class="nav-link" href="/duvidas">Dúvidas</a>
         </li>
         </ul>

         

          <div class="row g-3">
  <div class="col-sm-20">
  <form action="{{ route('pesquisar') }}" method="GET">
        <input class="form-control" type="search" name="termo" placeholder="Digite sua pesquisa" aria-label="Search" value="{{ $termo ?? '' }}">
</form></div>
</div>

         <ul class="navbar-nav ms-auto">
                        <!-- Authentication Links -->
                        @guest
                            @if (Route::has('login'))
                                <li class="nav-item">
                                    <a class="nav-link" href="{{ route('login') }}">{{ __('Login') }}</a>
                                </li>
                            @endif

                            @if (Route::has('register'))
                                <li class="nav-item">
                                    <a class="nav-link" href="{{ route('register') }}">{{ __('Registrar') }}</a>
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

@section('content')

<br>
<br>

    <h1 class="title">Resultados da pesquisa para "{{ $termo }}"</h1>

<br>
<br>

    <div class="row">
    @foreach($plants as $plant)
        <div class="col-3">
        <a href="/plants/{{ $plant['nomecomum'] }}/edit">
            <div class="card" style="width: 16rem; height: 16rem;">
                <img style="width:100%; height:70%" src="{{ $plant['image_url'] }}" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">{{ $plant['nomecomum'] }}</h5>
                    <p class="card-text">{{ $plant['nomecientificodafamilia'] }}</p>
                    
                </div>
            </div>
            <br>
        </a>
        </div>
    @endforeach
   
</div>

@endsection