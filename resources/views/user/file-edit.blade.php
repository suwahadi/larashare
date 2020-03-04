@extends('templates.index')

@section('title', 'Edit File')

@section('content')

<div class="w3-row-padding w3-padding-64 w3-container">
<div class="w3-content">

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

<div class="w3-container w3-blue">
	<h3><i class="fa fa-user-circle-o" aria-hidden="true"></i> Edit File</h3>
</div>

@if($File->count() > 0)

@if (session('errors'))
<div class="alert alert-danger" role="alert">
  Error: {{ session('errors') }}
</div>
@elseif (session('success'))
<div class="alert alert-success" role="alert">
  {{ session('success') }}
</div>
@endif

<div class="list">

@foreach ($File as $f)
@endforeach

File: <strong>{{ $f->file }}</strong><br><br>

<form enctype="multipart/form-data" action="{{ url('/user/file/update') }}/{{ $f->id }}" method="POST">

{{ csrf_field() }}

<input type="hidden" name="_token" value="{{ csrf_token() }}">
	
    <div class="col-sm">
		<div class="form-group">
			<label for="name">Description (max 250):</label>
			<textarea class="form-control" id="description" name="description">{{ $f->description }}</textarea>
		</div>
		<small>Renaming a file or description that violates the <a href="{{ url('/terms') }}">TOS</a>, will cause your account to be suspended.</small><br><br>
		<div class="form-group">
			<button type="submit" class="btn btn-primary">Save</button>
			<a href="{{ url('/user/files') }}"><button type="button" class="btn btn-secondary">Cancel</button></a>
		</div>
    </div>

    <div class="col-sm">
    </div>

</form>

</div>

</div>
</div>

@else
<div class="alert alert-danger" role="alert">
  Error: File does not exists!
</div>
@endif

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" crossorigin="anonymous">

@stop