@extends('templates.index')

@section('title', 'Upload Files')

@section('content')

<header class="w3-container w3-blue w3-center" style="padding:128px 16px">

<div class="w3-container w3-blue">
<h3><i class="fa fa-upload" aria-hidden="true"></i> Upload File</h3>
</div>

<div class="upload">

<div id="uploadform" style="display:block">

<p id="status">
<div class="news">File has been Uploaded successfully!<br>
<a href="{{url('/')}}/{{ $slug }}">View Files</a><br>
<a href="{{url('/upload')}}">Upload Again</a>
</div><p>
</p><div class="w3-container">
Share Files:
</div>
<p>
  <input type="text" value="{{url('/')}}/{{ $slug }}">
</p>
</p>

</div>
</div>

</header>

<div class="w3-container w3-row w3-center w3-indigo w3-padding-64">
<h2>Search Files</h2>
<form action="search.php">
    <input type="search" name="q" size="15" value=""/></br>
    <button class="w3-button w3-blue w3-large w3-margin-top" type="submit" name="search" value="Search"/>Search
</form>
</div>
@stop