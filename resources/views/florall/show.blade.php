@extends('app')
<link rel="icon" type="image/x-icon" href="/img/iconebolinha.png">
@section('content')


<h1>Dados da Planta</h1>

<form action="/plants/update/{{$plants->nomecomum}}" method="post">

<input type="hidden" name="_token" value="{{csrf_token()}}">

<div class="form-group">
    <label> ID:</label>
    <input type="text" name="id" class="form-control" value="{{$plants->plantid}}">
</div>
<div class="form-group">
    <label> Slug:</label>
    <input type="text" name="slug" class="form-control" value="{{$plants->slug}}">
</div>
<div class="form-group">
    <label> Nome Comum:</label>
    <input type="text" name="nomecomum" class="form-control" value="{{$plants->nomecomum}}">
</div>
<div class="form-group">
    <label> Nome Cientifico:</label>
    <input type="text" name="nomecientifico" class="form-control" value="{{$plants->nomecientifico}}">
</div>
<div class="form-group">
    <label> Rank:</label>
    <input type="text" name="rank" class="form-control" value="{{$plants->rank}}">
</div>
<!-- <div class="form-group">
    <label> Nome Comum da Familia:</label>
    <input type="text" name="nomecomumdafamilia" class="form-control" value="{{$plants->nomecomumdafamilia}}">
</div> -->
<div class="form-group">
    <label> Nome Cientifico da Familia:</label>
    <input type="text" name="nomecientificodafamilia" class="form-control" value="{{$plants->nomecientificodafamilia}}">
</div>
<div class="form-group">
    <label> Genero ID:</label>
    <input type="text" name="generoid" class="form-control" value="{{$plants->generoid}}">
</div>
<div class="form-group">
    <label> Genero:</label>
    <input type="text" name="genero" class="form-control" value="{{$plants->genero}}">
</div>
<div class="form-group mb-3">
    <label> Imagem:</label>
    <input type="text" name="image_url" class="form-control" value="{{$plants->image_url}}">

    <img src="{{ $plants['image_url'] }}" alt="{{ $plants['common_name'] }}" width="200">

</div>

<br>

<button type="submit" class="btn btn-success">Atualizar</button>
</form>
@endsection