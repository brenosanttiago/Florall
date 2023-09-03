<!DOCTYPE html>
<html>
<head>
    <title>Identificação de Plantas</title>
</head>
<body>
    <h1>Identificação de Plantas</h1>
    <form action="{{ route('plant.identify') }}" method="POST" enctype="multipart/form-data">
        @csrf
        <input type="file" name="image" accept="image/*">
        <button type="submit">Identificar</button>
    </form>
</body>
</html>
