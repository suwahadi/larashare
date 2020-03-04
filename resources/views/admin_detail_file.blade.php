@extends('crudbooster::admin_template')
@section('content')

<style type="text/css">
  td, th {
    border: 1px solid #ccc;
    padding: 5px;
  }
</style>

<?php
function formatBytes($size, $precision = 2)
{
    $base = log($size, 1024);
    $suffixes = array('', 'KB', 'MB', 'GB', 'TB');   
    return round(pow(1024, $base - floor($base)), $precision) .' '. $suffixes[floor($base)];
}
?>

<p><a title="Return" href="{{url('/')}}/admin/files"><i class="fa fa-chevron-circle-left "></i> Back To List Data Files</a></p>

  <div class='panel panel-default'>
    <div class='panel-heading'>Detail File</div>
    <div class='panel-body'> 

      <table style="width: 100%;">
          <tr>
            <th>User</th>
            <th>File Name</th>
            <th>File Type</th>
            <th>Size</th>
            <th>Description</th>
            <th>Upload At</th>
            <th>Link</th>
            <th>Actions</th>
          </tr>
          <tr>
            <td>{{$row->id}}</td>
            <td><a href="{{url('/')}}/{{ $row->slug }}" target="_blank">{{$row->file}}</a></td>
            <td>{{$row->type}}</td>
            <td>{{formatBytes($row->size, 2)}}</td>
            <td>{{$row->description}}</td>
            <td>{{$row->created_at}}</td>
            <td>
              <a href="{{url('/')}}/{{ $row->slug }}" target="_blank">{{$row->slug}}</a>
            </td>
            <td>
              <a class="btn btn-xs btn-success btn-edit" title="Edit Data" href="{{url('/')}}/admin/files/edit/{{ $row->id }}"><i class="fa fa-pencil"></i></a>

              <a class="btn btn-xs btn-warning btn-delete" title="Delete" href="javascript:;" onclick="swal({   
              title: &quot;Are you sure ?&quot;,   
              text: &quot;You will not be able to recover this record data!&quot;,   
              type: &quot;warning&quot;,   
              showCancelButton: true,   
              confirmButtonColor: &quot;#ff0000&quot;,   
              confirmButtonText: &quot;Yes!&quot;,  
              cancelButtonText: &quot;No&quot;,  
              closeOnConfirm: false }, 
              function(){  location.href=&quot;/admin/files/delete/{{ $row->id }}&quot; });"><i class="fa fa-trash"></i></a>
            </td>
          </tr>
      </table>

    </div>
    </div>
  </div>
@endsection