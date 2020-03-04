@foreach($Files as $f)
@endforeach

@extends('templates.index')

@section('title', $f->file)

@section('content')

<div class="w3-row-padding w3-container w3-white" style="padding:100px 8px">
    <div class="w3-content">
        
        <center>
            @if ( $f->type == "application/pdf" )
            <span class="img">
                <img src="{{url('/storage/files/pdf.svg')}}" class="img" title="{{ $f->file }}" alt="{{ $f->file }}">
            </span>
            @elseif ( $f->type == "application/msword" OR $f->type == "application/vnd.openxmlformats-officedocument.wordprocessingml.document" )
            <span class="img">
                <img src="{{url('/storage/files/doc.svg')}}" class="img" title="{{ $f->file }}" alt="{{ $f->file }}">
            </span>
            @elseif ( $f->type == "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet" )
            <span class="img">
                <img src="{{url('/storage/files/xls.svg')}}" class="img" title="{{ $f->file }}" alt="{{ $f->file }}">
            </span>
            @elseif ( $f->type == "application/vnd.openxmlformats-officedocument.presentationml.presentation" )
            <span class="img">
                <img src="{{url('/storage/files/ppt.svg')}}" class="img" title="{{ $f->file }}" alt="{{ $f->file }}">
            </span>
            @elseif ( $f->type == "text/plain" )
            <span class="img">
                <img src="{{url('/storage/files/txt.svg')}}" class="img" title="{{ $f->file }}" alt="{{ $f->file }}">
            </span>
            @elseif ( $f->type == "application/java-archive" )
            <span class="img">
                <img src="{{url('/storage/files/apk.svg')}}" class="img" title="{{ $f->file }}" alt="{{ $f->file }}">
            </span>
            @elseif ( $f->type == "application/x-dosexec" )
            <span class="img">
                <img src="{{url('/storage/files/exe.svg')}}" class="img" title="{{ $f->file }}" alt="{{ $f->file }}">
            </span>
            @elseif ( $f->type == "audio/mpeg" )
            <span class="img">
                <img src="{{url('/storage/files/mp3.svg')}}" class="img" title="{{ $f->file }}" alt="{{ $f->file }}">
            </span>
            @elseif ( $f->type == "text/html" )
            <span class="img">
                <img src="{{url('/storage/files/html.svg')}}" class="img" title="{{ $f->file }}" alt="{{ $f->file }}">
            </span>
            @elseif ( $f->type == "application/x-rar" OR $f->type == "application/zip" )
            <span class="img">
                <img src="{{url('/storage/files/zip.svg')}}" class="img" title="{{ $f->file }}" alt="{{ $f->file }}">
            </span>
            @elseif ( $f->type == "video/mp4" )
            <span class="img">
                <img src="{{url('/storage/files/mp4.svg')}}" class="img" title="{{ $f->file }}" alt="{{ $f->file }}">
            </span>
            @elseif ( $f->type == "image/jpeg" OR $f->type == "image/png")
            <span class="img">
                <img src="{{url('/storage/files/')}}/{{ $f->file }}" class="img" title="{{ $f->file }}" alt="{{ $f->file }}">
            </span>
            @else
            <span class="img">
                <img src="{{url('/storage/files/file.svg')}}" class="img" title="{{ $f->file }}" alt="{{ $f->file }}">
            </span>
            @endif
        </center>

<div class="w3-container w3-blue-grey">
<b>{{ $f->file }}</b>
</div>

<div class="list">
    <i class="fa fa-file-code-o" aria-hidden="true"></i> Type: {{ $f->type }}
</div>
<div class="list">
    @if( isset( $User ) )
        @foreach ($User as $u)
        <i class="fa fa-user" aria-hidden="true"></i> User: {{ $u->name }}
        @endforeach
    @else
        <i class="fa fa-user" aria-hidden="true"></i> Public
    @endif
</div>
<div class="list">
    <i class="fa fa-upload" aria-hidden="true"></i> Uploaded: {{ $f->created_at }}
</div>

<div class="list">
    <i class="fa fa-cloud-download" aria-hidden="true"></i> Size: {{ formatBytes($f->size, 2) }}
</div>
<div class="list">
    <center>
    <h1>{{ $f->description }}</h1>
    @if ( $f->type == "image/jpeg" OR $f->type == "image/png")
        <img src="{{url('/storage/files/')}}/{{ $f->file }}" class="img" title="{{ $f->file }}" alt="{{ $f->file }}">
    @endif
    </center>
</div>

<div class="list">

<?php
function formatBytes($size, $precision = 2)
{
    $base = log($size, 1024);
    $suffixes = array('', 'KB', 'MB', 'GB', 'TB');   
    return round(pow(1024, $base - floor($base)), $precision) .' '. $suffixes[floor($base)];
}
?>

<br>
<center>
    <a download="{{ $f->file }}" class="w3-button w3-blue" id="download" src="storage/files/" href="storage/files/{{ $f->file }}" rel="nofollow" target="_blank">Download File ({{ formatBytes($f->size, 2) }})</a>
</center>

<p>
<script type="text/javascript">
var x = Math.floor(Math.random()*(8-5+1)+5);
var downloadButton = document.getElementById("download");
var scan = x;
var newElement = document.createElement("p");
newElement.innerHTML = "Scanning files in  seconds.";
var id;

downloadButton.parentNode.replaceChild(newElement, downloadButton);

id = setInterval(function() {
    scan--;
    if(scan < 1) {
        newElement.parentNode.replaceChild(downloadButton, newElement);
        clearInterval(id);
    } else {
        newElement.innerHTML = "Scanning files in " + scan.toString() + " seconds.";
    }
}, 1000);
</script>

<script type="text/javascript">
function getSuccessOutput() {
    $.ajax({
        url:'count.php',
        complete: function (response) {
            $('#output').html(response.responseText);
        },
       error: function () {
            $('#output').html('Bummer: there was an error!');
        },
    });
    return false;
}
</script>
</p>
</div>

<div class="w3-container w3-blue-grey"><h2></h2></div>

<div class="list" style="text-align: center;">
	<input type="text" value="{{url('/')}}/{{ $f->slug }}" style="max-width:400px;"><br>
	<small>Having trouble downloading? Please clear your browser cache.</small>

<br>

@if(Auth::check())
    @if($UserAkses->count() > 0)
        <a href="{{url('/')}}/user/file/edit/{{ $f->id }}">Edit</a> | <a href="{{url('/')}}/user/file/delete/{{ $f->id }}"><font color="red">Delete</font></a>
    @else
    @endif
@endif

</div>

<div class="w3-container w3-blue-grey">
	<h2></h2>
</div>

<div class="w3-container w3-blue"><h2>
	<i class="fa fa-line-chart" aria-hidden="true"></i> Latest Uploads</h2>
</div>

@foreach($FileAll as $fa)
<div class="list">
<img src="{{url('/storage/files/file.svg')}}" alt="{{ $fa->file }}" height="32" width="32">
<a href="{{ $fa->slug }}">{{ $fa->file }}</a><br>
<small>{{ formatBytes($fa->size, 2) }}</small>
</div>
@endforeach

<div class="w3-container w3-row w3-center w3-indigo w3-padding-64">
<h2>Search Files</h2>
    <form action="{{url('/search/files')}}" method="GET">
        <input type="search" name="q" size="15" value=""><br>
        <a href="#" onclick="$(this).closest('form').submit()"><button class="w3-button w3-blue w3-large w3-margin-top" type="button" name="search" value="Search">Search</button></a>
    </form>
</div>

</div>
</div>
@stop