@extends('templates.index')

@section('title', 'Login')

@section('content')

<div class="w3-row-padding w3-padding-64 w3-container">
<div class="w3-content">
<div class="w3-container w3-blue">
<h3><i class="fa fa-sign-in" aria-hidden="true"></i> Login</h3>
</div>
<div class="w3-center">
<div class="list">
<div class="login">

<form method="POST" action="{{ route('login') }}">

@if (count($errors) > 0)
<div class="error"><strong>Invalid Password or Username!</strong><br></div>
@endif

{{ csrf_field() }}
<br><input type="email" name="email" id="email" size="15" class="email" placeholder="Email" required="required"><br>
<br><input type="password" name="password" id="password" size="15" class="pass" placeholder="Password" required="required"><br>
<br>

<p><input type="submit" value="Login" name="Login" class="w3-button w3-blue" style="padding:8px 16px;border:none;font-weight:300;"></p></form>

</div>
Don't have account? <a href="{{url('/user/register')}}">Register here</a></div>
</div>
</div>
</div>

@stop