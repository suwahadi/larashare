<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use CRUDBooster;
use App\Files;
use App\User;
use Illuminate\Support\Facades\Input;

class UploadsController extends Controller
{


	public function home () {

    	$FileAll = \App\Files::take(10)
    		->orderBy('id','DESC')
            ->get();

		return view( 'home', ['FileAll' => $FileAll] );
	}

	public function pageUpload () {

    	$FileAll = \App\Files::take(10)
    		->orderBy('id','DESC')
            ->get();

		return view( 'upload', ['FileAll' => $FileAll] );
	}


	public function uploadSuccess () {
		$Files = \App\Files::get();

		foreach($Files as $p) {
			$slug = $p->slug;
        }
        return view( 'upload-success', ['slug' => $slug] );
	}


	public function storeUpload (Request $request)
	{
		function makeLink() { 
			$s = strtolower(md5(uniqid(rand(),true))); 
			$val = "". 
			substr($s,11,11);
			return $val;
		}

		$file = $request->file('file');
   
		//Display File Name
		echo 'File Name: '.$file->getClientOriginalName();

		//Display File Extension
		echo 'File Extension: '.$file->getClientOriginalExtension();

		//Display File Real Path
		echo 'File Real Path: '.$file->getRealPath();

		//Display File Size
		$filesize = $file->getSize();

		//Display File Mime Type
		$filetype = $file->getMimeType();

		//Move Uploaded File
		$destinationPath = 'storage/files';
		$file->move($destinationPath,$file->getClientOriginalName());

		// $fileName = time().'.'.request()->file->getClientOriginalExtension();
		// request()->file->move($destinationPath, $fileName);

	    $user_ID = auth()->user()->id;

		DB::table('files')->insert([
			'slug' => makeLink(),
			'userid' => $user_ID,
			'file' => $file->getClientOriginalName(),
			'type' => $filetype,
			'size' => $filesize,
			'description' => $request->description,
			'created_at' => now(),
		]);
		$lastid = DB::getPDO()->lastInsertId();
		$Files = \App\Files::where('id', $lastid)->get();

		foreach($Files as $p) {
			$slug = $p->slug;
        }
		return redirect('upload/success/'.$slug);
		//return response()->json(['success'=>'You have successfully upload file.']);

	}

	public function viewSuccess ($slug) {

    	$lastid = DB::getPDO()->lastInsertId();
		$Files = \App\Files::where('id', $lastid)->get();

		foreach($Files as $p) {
			$slug = $p->slug;
        }
        return view( 'upload-success', ['Files' => $Files, 'slug' => $slug] );
	}


	public function viewUpload ($slug) {

    	$Files = \App\Files::where('slug', $slug)->get();
    	foreach($Files as $f) {
			$UserID = $f->userid;
			$Slug = $f->slug;
        }

        $User = \App\User::where('id', $UserID)->get();

 		if (auth()->user()->id) {
			$UserID = auth()->user()->id;
			$UserAkses = \App\Files::where([
			    ['slug', '=', $slug],
			    ['userid', '=', $UserID],
			])->get();
 		}


    	$FileAll = \App\Files::take(10)
    		->orderBy('id','DESC')
            ->get();

		if ($Files->isEmpty()) {
			return view( 'errors.404' );
		} else {
			return view( 'detail-upload', ['Files' => $Files, 'User' => $User, 'FileAll' => $FileAll, 'UserAkses' => $UserAkses] );
		}
	}


	public function cariFiles (Request $request)
	{
		$q = Input::get ( 'q' );
		if($q != ""){
			$Files = Files::where ( 'file', 'LIKE', '%' . $q . '%' )->orWhere ( 'description', 'LIKE', '%' . $q . '%' )->paginate();
			if (count ( $Files ) > 0)
				return view ( 'search' )->withDetails ( $Files )->withQuery ( $q );
			else
				return view ( 'search' )->withMessage ( 'No Details found. Try to search again !' );
		}
		return view ( 'search' )->withMessage ( 'No Details found. Try to search again !' );
	}

}