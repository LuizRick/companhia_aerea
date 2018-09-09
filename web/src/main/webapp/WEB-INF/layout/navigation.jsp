<!--Menu de navegação -->
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="#">Menu</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
        aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item"><a class="nav-link" href="/">Home</a></li>
            <li class="nav-item"><a class="nav-link" href="/graficos/showcase">Graficos</a>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true"
                    aria-expanded="false">
                    Cliente
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="/clientes/cadastro">Cadastar</a>
                    <a class="dropdown-item" href="/clientes/consultar">Consultar</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="/clientes/login">Login</a>
                </div>
            </li>
            <li class="nat-item dropdown">
            	<a href="#" class="nav-link dropdown-toggle" role="button" data-toggle="dropdown">
            		Operador
            	</a>
            	<div class="dropdown-menu">
            		<a class="dropdown-item" href="/voos/gerenciar">Gerenciamento de Voo</a>
            		<a class="dropdown-item" href="/operador/login">Login</a>
            		<a class="dropdown-item" href="/operador/alfandega">Alfandega</a>
            		<a class="dropdown-item" href="/bagagem/cadastro">Cadastro Bagagem</a>
            		<a class="dropdown-item" href="/bagagem/consultar">Consultar Bagagem</a>
            	</div>
            </li>
        </ul>

    </div>
</nav>
<!--Menu de navegação -->