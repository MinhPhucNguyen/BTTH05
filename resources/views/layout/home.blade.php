<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>BTTH05</title>
    <link rel="stylesheet" href="{{ asset('/assets/css/bootstrap.min.css') }}">
</head>

<body>
    <div class="container-fluid m-0 p-0">
        <nav class="navbar navbar-expand-lg bg-body-tertiary">
            <div class="container-fluid">
                <a class="navbar-brand" href="{{ route('songs') }}">Soptify</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="#">Home</a>
                        </li>
                    </ul>
                    <form class="d-flex" role="search" action="{{ route('songs.search') }}" method="GET">
                      <input class="form-control me-2" type="search" name='search' placeholder="Search"
                          aria-label="Search">
                      <button class="btn btn-outline-success" name="search-btn" type="submit">Search</button>
                  </form>
                </div>
            </div>
        </nav>
        <div class="container-fluid mt-4">
            <h3 class="text-center text-success">Spotify</h3>
            @yield('content')
        </div>
    </div>
    </div>
    <script src="{{ asset('/assets/js/bootstrap.bundle.min.js') }}"></script>
</body>

</html>
