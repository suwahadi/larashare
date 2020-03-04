@extends('templates.index')

@section('title', 'Search Files')

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
	<h3><i class="fa fa-search" aria-hidden="true"></i> Search files for: {{ $query }}</h3>
</div>


<p></p>
<div class="w3-container w3-blue">
<h3></h3>
</div>

<?php
function formatBytes($size, $precision = 2)
{
    $base = log($size, 1024);
    $suffixes = array('', 'KB', 'MB', 'GB', 'TB');   
    return round(pow(1024, $base - floor($base)), $precision) .' '. $suffixes[floor($base)];
}
?>

@if(isset($details))
@foreach($details as $f)
<div class="list" style="padding: 10px;">
	<img src="{{url('/storage/files/file.svg')}}" height="32" width="32"> <a href="{{url('/')}}/{{ $f->slug }}">{{ $f->file }}</a> ({{ formatBytes($f->size, 2) }})
</div>
@endforeach



@else
 <div style="text-align: center;"><br>Files not found...</div>
@endif

</div>
</div>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" crossorigin="anonymous">

@stop