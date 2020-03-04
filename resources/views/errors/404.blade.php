@extends('templates.index')

@section('title', '404 Page Not Found!')

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
    <h3><i class="fa fa-times-circle-o" aria-hidden="true"></i> 404 Page Not Found!</h3>
</div>

<div class="list" style="padding: 50px 5px 50px 5px; text-align-last: center;">

<div class="alert alert-danger" role="alert">
    Maybe wrong url, file has been deleted, or file active period has expired.
</div>

<a href="{{ url('/') }}"><button type="button" class="btn btn-secondary">< Back to Home</button></a>

</div>

</div>
</div>


<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" crossorigin="anonymous">

@stop