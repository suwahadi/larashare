@extends('templates.index')

@section('title', 'My Profile')

@section('content')

@foreach ($User as $u)
@endforeach

<style type="text/css">
	h3 {
		font-size: 24px !important;
		padding: 0 0 2px !important;
		font-weight: 400 !important;
		margin: 10px 0 !important;
	}
	a:hover {
		text-decoration: none !important;
	}
</style>

<div class="w3-row-padding w3-padding-64 w3-container">
<div class="w3-content">

<div class="w3-container w3-blue">
<h3>
    <i class="fa fa-user-circle-o" aria-hidden="true"></i> My Profile
</h3>
</div>
<p></p>
<div class="w3-container w3-blue">
<h3></h3>
</div>

<div class="list w3-center">
<h3>Profile Account Detail</h3>

@if (session('errors'))
<div class="alert alert-danger" role="alert">
  Error: {{ session('errors') }}
</div>
@elseif (session('success'))
<div class="alert alert-success" role="alert">
  {{ session('success') }}
</div>
@endif

<form enctype="multipart/form-data" action="{{ url('/user/update') }}" method="POST">
{{ csrf_field() }}

<input type="hidden" name="_token" value="{{ csrf_token() }}">

<div class="container">
  <div class="row">
    <div class="col-sm">

    </div>
    <div class="col-sm">
       <div class="form-group">
	    <img src="{{url('/')}}/{{ $u->photo }}" style="width: 50%; height: auto; border-radius: 200px;">
	  </div>
       <div class="form-group">
	    <label for="name">Name</label>
	    <input type="text" class="form-control" id="name" name="name" value="{{ $u->name }}" readonly="">
	  </div>
       <div class="form-group">
	    <label for="name">Email</label>
	    <input type="email" class="form-control" id="email" name="email" value="{{ $u->email }}" readonly="">
	  </div>
       <div class="form-group">
	    <label for="name">Current Password</label>
	    <input type="password" class="form-control" id="current-password" name="current-password" placeholder="Enter your current password">
	  </div>
       <div class="form-group">
	    <label for="name">New Password</label>
	    <input type="password" class="form-control" id="password" name="password" placeholder="Enter new password">
	  </div>
       <div class="form-group">
	    <label for="name">Re-enter New Password</label>
	    <input type="password" class="form-control" id="password_confirmation" name="password_confirmation" placeholder="Re-enter new password">
	  </div>
	  <div class="form-group">
	  	<button type="submit" class="btn btn-primary">Save Settings</button>
	  </div>
    </div>
    <div class="col-sm">
    </div>
  </div>
</div>

</form>
</div>

</div>
</div>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" crossorigin="anonymous">
@stop