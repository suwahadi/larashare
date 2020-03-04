@extends('templates.index')

@section('title', 'File Sharing')

@section('content')

<style>
    .progress { position:relative; width:100%; border: 1px solid #7F98B2; padding: 1px; border-radius: 3px; }
    .bar { background-color: #B4F5B4; width:0%; height:25px; border-radius: 3px; }
    .percent { position:absolute; display:inline-block; top:3px; left:48%; color: #7F98B2;}
</style>

<div class="w3-container w3-blue w3-center" style="padding:128px 16px">
<div class="w3-container w3-blue">
<h3><i class="fa fa-upload" aria-hidden="true"></i> Upload File</h3>
</div>


<div class="upload">

<div id="uploadform" style="display:block">

<form method="POST" action="/" enctype="multipart/form-data">
    {{ csrf_field() }}
    Choose Files (Max 100 MB)<br>
    <input type="file" name="file" id="file" required="required">
    <br>Please Fill Description<br>
    <textarea id="description" name="description"></textarea><br>
    
    <p>
        <small>By clicking Upload button, you agree to the 
        <a href="{{url('/terms')}}" target="_blank" style="color: #89c9ff">TOS</a></small>
    </p>

        <div class="progress" style="margin: 0 auto; width: 270px;">
          <div class="progress-bar" role="progressbar" aria-valuenow="" aria-valuemin="0" aria-valuemax="100" style="width: 0%">
            0%
          </div>
        </div>
        <br />
        <div id="success">
        </div>
        <input type="submit" id="upload" name="upload" value="Upload File" class="w3-button w3-indigo">
</form>

</div>
</div>
</div>

<div class="w3-container w3-row w3-center w3-indigo w3-padding-64">
<h2>Search Files</h2>
    <form action="/search/files" method="GET">
        <input type="search" name="q" size="15" value=""><br>
        <a href="#" onclick="$(this).closest('form').submit()"><button class="w3-button w3-blue w3-large w3-margin-top" type="button" name="search" value="Search">Search</button></a>
    </form>
</div>

<div class="w3-container w3-blue"><h2>
  <i class="fa fa-line-chart" aria-hidden="true"></i> Latest Uploads</h2>
</div>

<?php
function formatBytes($size, $precision = 2)
{
    $base = log($size, 1024);
    $suffixes = array('', 'KB', 'MB', 'GB', 'TB');   
    return round(pow(1024, $base - floor($base)), $precision) .' '. $suffixes[floor($base)];
}
?>

@foreach($FileAll as $fa)
<div class="list" style="padding: 10px;">
<img src="{{url('/storage/files/file.svg')}}" alt="{{ $fa->file }}" height="32" width="32">
<a href="{{ $fa->slug }}">{{ $fa->file }}</a>
<small>({{ formatBytes($fa->size, 2) }})</small>
</div>
@endforeach

@stop

<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script src="https://malsup.github.com/jquery.form.js"></script>

<script>

$(document).ready(function() {
   $('.progress').hide();
});

$(document).ready(function(){

    $('form').ajaxForm({
      beforeSend:function(){
        $('#success').empty();
        $('.progress').show();
      },
      uploadProgress:function(event, position, total, percentComplete)
      {
        $('.progress-bar').text(percentComplete + '%');
        $('.progress-bar').css('width', percentComplete + '%');
      },
      success:function(data)
      {
        $('#success').html('<span style="color:#fff"><b>File has been Uploaded successfully!</b></span><br /><br />');
        window.location.href="upload/success";

        if(data.errors)
        {
          $('.progress-bar').text('0%');
          $('.progress-bar').css('width', '0%');
          $('#success').html('<span class="text-danger"><b>'+data.errors+'</b></span>');
        }
        if(data.success)
        {
          $('.progress-bar').text('Uploaded');
          $('.progress-bar').css('width', '100%');
          $('#success').html('<span class="text-success"><b>'+data.success+'</b></span><br /><br />');
          $('#success').append(data.image);
        }
      }
    });

});
   
</script>
</script>