<!DOCTYPE html>
<html>
<head>
    <title>Resultado da Identificação</title>
</head>
<body>
    <h1>Resultado da Identificação</h1>
    @if(isset($plants))
        <h2>Planta(s) identificada(s):</h2>
        @foreach($plants['suggestions'] as $suggestion)
            <h3>{{ $suggestion['plant_name'] }}</h3>
            <p>{{ $suggestion['probability'] }}</p>
            <img src="{{ asset('storage/'.$imagePath) }}" alt="Imagem da planta identificada">
        @endforeach
    @else
        <h2>Nenhuma planta identificada.</h2>
    @endif
</body>
</html>
