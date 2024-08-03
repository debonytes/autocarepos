<div class="sidenav-menu">
    <div class="nav accordion" id="accordionSidenav">
        <!-- Sidenav Menu Heading (Core)-->
        <div class="sidenav-menu-heading">&nbsp;</div>
        <!-- Sidenav Accordion (Dashboard)-->
        <a class="nav-link collapsed" href="{{ route('home') }}"  >
            <div class="nav-link-icon"><i data-feather="home"></i></div>
            Dashboards
        </a>
        <!-- Sidenav Accordion (Clients)-->
        <a class="nav-link collapsed" href="{{ route('products.index') }}"  >
            <div class="nav-link-icon"><i data-feather="framer"></i></div>
            Products
        </a>

        <!-- Sidenav Accordion (Applications)-->
        <a class="nav-link collapsed" href="{{ route('clients.index') }}"  >
            <div class="nav-link-icon"><i data-feather="layers"></i></div>
            Clients
        </a>

        <!-- Sidenav Accordion (Flows)-->
        <a class="nav-link collapsed" href="{{ route('invoices.index') }}" >
            <div class="nav-link-icon"><i data-feather="archive"></i></div>
            Invoices
        </a>

        <!-- Sidenav Accordion (Layout)-->
        <a class="nav-link collapsed" href="javascript:void(0);"  >
            <div class="nav-link-icon"><i data-feather="user"></i></div>
            Users
        </a>

    </div>
</div>