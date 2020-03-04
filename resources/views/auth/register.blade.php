@extends('templates.index')

@section('title', 'Register')

@section('content')

<div class="w3-row-padding w3-padding-64 w3-container">
<div class="w3-content">
<div class="w3-container w3-blue">
<h3><i class="fa fa-user-plus" aria-hidden="true"></i> Register</h3>
</div>
<div class="w3-center">
<div class="list">
<div class="login">

<form method="POST" action="{{ route('register') }}">
{{ csrf_field() }}

@if (count($errors) > 0)
   	<div class="error">
   		<strong>
        <ul>
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
        </strong>
    </div>
@endif

<br><input type="text" name="name" id="name" size="15" placeholder="Name" required="required"><br>
<br><input type="email" name="email" id="email" size="15" placeholder="Email" required="required"><br>
<br><input type="password" name="password" id="password" size="15" class="pass" placeholder="Create a password" required="required"><br>
<br><input type="password" name="password_confirmation" id="password_confirmation" size="15" class="pass" placeholder="Password confirmation" required="required"><br>
<?php $photo ='storage/files/blank_profile.jpg'; ?>
<br><input type="hidden" name="photo" id="photo" size="15" value="<?php echo $photo; ?>">
<p><input type="submit" value="Register" name="Register" class="w3-button w3-blue" style="padding:8px 16px;border:none;font-weight:300;"></p></form>

</div>

<small>Creating an account means you’re agreed with our <a href="{{url('/terms')}}">Terms of Service</a> and <a href="{{url('/privacy')}}">Privacy Policy</a></small>

</div>
</div>
</div>
</div>
@stop