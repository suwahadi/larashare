<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use CRUDBooster;
use App\Files;
use App\User;
use Auth;
use Validator;
use Hash;

class UsersController extends Controller
{

	public function userPanel () {
		$UserID = auth()->user()->id;
		$User = \App\User::where('id', $UserID)->get();
        $TotalUploads = \App\Files::where('userid', $UserID)->count();
        $TotalSizes = DB::table('files')->where('userid', $UserID)->selectRaw('size')->sum('size');

        return view( 'user.panel', ['User' => $User, 'TotalUploads' => $TotalUploads, 'TotalSizes' => $TotalSizes] );
	}

	public function userFiles () {
		$UserID = auth()->user()->id;
		$User = \App\User::where('id', $UserID)->get();
		$Files = \App\Files::where('userid', $UserID)->paginate(10);
        
        return view( 'user.files', ['User' => $User, 'Files' => $Files] );
	}

	public function userProfile () {
		$UserID = auth()->user()->id;
		$User = \App\User::where('id', $UserID)->get();

        return view( 'user.profile', ['User' => $User] );
	}


	public function destroyFile ($id) {
		$UserID = auth()->user()->id;
		$User = \App\User::where('id', $UserID)->get();

		$File = Files::where('id', $id)->get();

		foreach($File as $f) {
			$namafile = $f->file;
			$fileuser = $f->userid;
        }

		\App\Files::where([
		    ['id', '=', $id],
		    ['file', '=', $namafile],
		    ['userid', '=', $UserID],
		])->delete();

		$destinationPath = 'storage/files';
		$image_path = $destinationPath.'/'.$namafile;
		if (file_exists($image_path) AND $fileuser == $UserID) {
		    @unlink($image_path);
		    return redirect('/user/files')->with('success', 'File successfully deleted!' );
		}else{
			return redirect('/user/files')->with('errors', 'File does not exists!' );
		}

	}


	public function admin_credential_rules(array $data)
	{
	  $messages = [
	    'current-password.required' => 'Please enter current password',
	    'password.required' => 'Please enter password',
	  ];

	  $validator = Validator::make($data, [
	    'current-password' => 'required',
	    'password' => 'required|same:password',
	    'password_confirmation' => 'required|same:password',     
	  ], $messages);

	  return $validator;
	}


	public function updateProfile (Request $request)
	{
	  if(Auth::Check())
	  {
	    $request_data = $request->All();
	    $validator = $this->admin_credential_rules($request_data);
	    if($validator->fails())
	    {
	      //return response()->json(array('error' => $validator->getMessageBag()->toArray()), 400);
	      return redirect('user/profile')->with('errors', 'Password and password confirmation did not match!' );
	    }
	    else
	    {
	      $current_password = Auth::User()->password;
	      if(Hash::check($request_data['current-password'], $current_password))
	      {
	        $user_id = Auth::User()->id;
	        $obj_user = User::find($user_id);
	        $obj_user->password = Hash::make($request_data['password']);
	        $obj_user->save();
	        return redirect('user/profile')->with('success', 'Success updated!' );
	      }
	      else
	      {
	        $error = array('current-password' => 'Please enter correct current password!');
	        //return response()->json(array('error' => $error), 400); 
	        return redirect('user/profile')->with('errors', 'Please enter correct current password!');
	      }
	    }
	  }
	  else
	  {
	    return redirect('/user/profile/edit');
	  }
	}


	public function editFile ($id) {
		$UserID = auth()->user()->id;
		$File = \App\Files::where([
		    ['id', '=', $id],
		    ['userid', '=', $UserID],
		])->get();

        return view( 'user.file-edit', ['File' => $File, 'UserID' => $UserID] );
	}


	public function fileUpdate ($id, Request $request)
	{
		$UserID = auth()->user()->id;

		$File = \App\Files::where([
		    ['id', '=', $id],
		    ['userid', '=', $UserID],
		]);

	    $File = \App\Files::find($id);
	    $File->description = $request->description;
	    $File->save();

		return redirect('user/files')->with('success', 'Success updated!' );
	}

}