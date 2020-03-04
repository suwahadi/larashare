@extends('templates.index')

@section('title', 'My Panel')

@section('content')

@foreach ($User as $u)
@endforeach

<?php
function formatBytes($size, $precision = 2)
{
    $base = log($size, 1024);
    $suffixes = array('', 'KB', 'MB', 'GB', 'TB');   
    return round(pow(1024, $base - floor($base)), $precision) .' '. $suffixes[floor($base)];
}
?>

<div class="w3-row-padding w3-padding-64 w3-container">
<div class="w3-content">

<div class="w3-container w3-blue">
<h3>
    <i class="fa fa-user-circle-o" aria-hidden="true"></i> My Panel
</h3>
</div>

<div class="news2">
    <img src="https://sfile.mobi/icon/news.svg" style="height:22px; width:22px;">  
    <strong>Penguman:</strong> <span>Ini adalah text pengumuman...</span>
</div>

<div class="w3-container w3-blue">
<h3></h3>
</div>

<div class="list">
<table width="100%" cellpadding="0" cellspacing="0">
<tbody>
<tr>
<td width="100%" style="text-align: left;">
Registered: <b>{{ $u->created_at }}</b><br>
Total Uploaded Files: <b>{{ $TotalUploads }}</b><br>
Total Uploaded Sizes: <b>{{ formatBytes($TotalSizes, 2) }}</b><br>
</td>
</tr>
</tbody>
</table>
</div>

<ul class="w3-ul w3-border w3-hoverable">
<li><i class="fa fa-cloud-upload" aria-hidden="true"></i><a href="{{url('/upload')}}"> Upload File</a></li>
<li><i class="fa fa-file" aria-hidden="true"></i><a href="{{url('/user/files')}}"> My Files</a> ({{ $TotalUploads }})</li>
<li><i class="fa fa-user" aria-hidden="true"></i><a href="{{url('/user/profile')}}"> My Profile</a></li>

<li><i class="fa fa-sign-out" aria-hidden="true"></i>
  <a href="{{ route('logout') }}" onclick="event.preventDefault();
   document.getElementById('logout-form').submit();">
   Logout
  </a>
</li>
<form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
  @csrf
</form>

</ul>

</div>
</div>

@stop