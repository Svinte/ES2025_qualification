<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>@yield('title')</title>
    <link rel="stylesheet" href="/css/navigation.css">
    <link rel="stylesheet" href="/css/main.css">
    <link rel="stylesheet" href="/css/items.css">
    @yield('head')
</head>
<body>
    <header>
        <nav>
            <ul class="navigation">
                <li class="navigation__item"><a href="/">Home</a></li>
                <li class="navigation__item"><a href="/cart">Cart</a></li>
                <li class="navigation__item"><a href="/symbols">Design symbols</a></li>
                <li class="navigation__item"><a href="/t-shirts">T-shirts</a></li>
                <li class="navigation__item"><a href="/accessories">Accessories</a></li>
                <li class="navigation__item"><a href="/admin/">Admin</a></li>
            </ul>
        </nav>
    </header>

    <main>
        @yield('content')
    </main>

    <footer>

    </footer>
</body>
</html>