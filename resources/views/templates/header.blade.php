<!DOCTYPE HTML>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<title>@yield('title')</title>
<meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1" />
<meta name="description" content="" />
<meta name="theme-color" content="#2196F3 ">
<link rel="stylesheet" href="/css/main-min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="/js/jquery.min.js" type="text/javascript"></script>

<style>
@font-face {
  font-family: 'Raleway';
  font-style: normal;
  font-weight: 400;
}
body,h1,h2,h3,h4,h5,h6 {font-family: "Raleway", sans-serif}
body, html {
    height: 100%;
    line-height: 1.8;
}
.w3-bar .w3-button {
    padding: 16px;
}
</style>
</head>

<body>
<!-- Navbar (sit on top) -->
<div class="w3-top">
  <div class="w3-bar w3-blue w3-card-2" id="myNavbar">
    <a href="{{url('/')}}" class="w3-bar-item w3-button w3-wide">FILE SHARING</a>

    <!-- Right-sided navbar links -->
    <div class="w3-right w3-hide-small">
    @if(Auth::check())
      <a href="{{url('/upload')}}" class="w3-bar-item w3-button"><i class="fa fa-cloud-upload" aria-hidden="true"></i> UPLOAD</a>
      <a href="{{url('/user/panel')}}" class="w3-bar-item w3-button"><i class="fa fa-dashboard"></i> My Panel</a>
      <a href="{{url('/user/files')}}" class="w3-bar-item w3-button"><i class="fa fa-folder"></i> My Files</a>
      <a href="{{url('/user/profile')}}" class="w3-bar-item w3-button"><i class="fa fa-user"></i> My Profile</a>
      <a href="{{ route('logout') }}" class="w3-bar-item w3-button" onclick="event.preventDefault();
       document.getElementById('logout-form').submit();">
       <i class="fa fa-sign-out" aria-hidden="true"></i> LOGOUT
      </a>
      <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
          {{ csrf_field() }}
      </form>
    @else
      <a href="{{url('/upload')}}" class="w3-bar-item w3-button"><i class="fa fa-cloud-upload" aria-hidden="true"></i> UPLOAD</a>
      <a href="{{url('/user/login')}}" class="w3-bar-item w3-button"><i class="fa fa-sign-in" aria-hidden="true"></i> LOGIN</a>
      <a href="{{url('/user/register')}}" class="w3-bar-item w3-button"><i class="fa fa-user-plus" aria-hidden="true"></i> REGISTER</a>
    @endif
    </div>

    <!-- Hide right-floated links on small screens and replace them with a menu icon -->
    <a href="javascript:void(0)" class="w3-bar-item w3-button w3-right w3-hide-large w3-hide-medium" onclick="if (!window.__cfRLUnblockHandlers) return false; w3_open()" data-cf-modified-d1ab376210840f23ebd4dd3e-="">
      <i class="fa fa-bars"></i>
    </a>
  </div>
</div>

<!-- Sidebar on small screens when clicking the menu icon -->
<nav class="w3-sidebar w3-bar-block w3-blue w3-card-2 w3-animate-left w3-hide-medium w3-hide-large" style="display:none" id="mySidebar">
  <a href="javascript:void(0)" onclick="if (!window.__cfRLUnblockHandlers) return false; w3_close()" class="w3-bar-item w3-button w3-large w3-padding-16" data-cf-modified-d1ab376210840f23ebd4dd3e-=""></a>
    <a href="{{url('/upload')}}" class="w3-bar-item w3-button"><i class="fa fa-cloud-upload" aria-hidden="true"></i> UPLOAD</a>
    <a href="{{url('/user/panel')}}" class="w3-bar-item w3-button"><i class="fa fa-user"></i> My Panel</a>
    <a href="{{url('/user/files')}}" class="w3-bar-item w3-button"><i class="fa fa-folder"></i> My Files</a>
    <a href="{{url('/user/profile')}}" class="w3-bar-item w3-button"><i class="fa fa-usd"></i> My Profile</a>
    <a href="{{ route('logout') }}" class="w3-bar-item w3-button" onclick="event.preventDefault();
       document.getElementById('logout-form').submit();">
       <i class="fa fa-sign-out" aria-hidden="true"></i> LOGOUT
    </a>
    <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
        @csrf
    </form>
</nav>