@foreach ($User as $u)
@endforeach

@extends('templates.index')

@section('title', 'My Files')

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
	<h3><i class="fa fa-user-circle-o" aria-hidden="true"></i> My Files</h3>
</div>
<p></p>
<div class="w3-container w3-blue">
<h3></h3>
</div>

@if (session('errors'))
<div class="alert alert-danger" role="alert">
  Error: {{ session('errors') }}
</div>
@elseif (session('success'))
<div class="alert alert-success" role="alert">
  {{ session('success') }}
</div>
@endif

<?php
function formatBytes($size, $precision = 2)
{
    $base = log($size, 1024);
    $suffixes = array('', 'KB', 'MB', 'GB', 'TB');   
    return round(pow(1024, $base - floor($base)), $precision) .' '. $suffixes[floor($base)];
}
?>

@if($Files->count() > 0)
@foreach ($Files as $f)

<div class="list">
	<img src="{{url('/storage/files/file.svg')}}" height="32" width="32"> <a href="{{url('/')}}/{{ $f->slug }}">{{ $f->file }}</a> ({{ formatBytes($f->size, 2) }})<br>
	<small>Uploaded: {{ $f->created_at }} <br>
	<a href="{{url('/')}}/user/file/edit/{{ $f->id }}">Edit</a> | <a href="{{url('/')}}/user/file/delete/{{ $f->id }}"><font color="red">Delete</font></a></small>
</div>

@endforeach
@else
 <div style="text-align: center;"><br>You don't have any files yet. Try <a style="text-decoration: underline;" href="{{url('/')}}/upload">upload file now</a>.</div>
@endif
<br>


{{$Files->links("pagination::bootstrap-4")}}

</div>
</div>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" crossorigin="anonymous">

@stop