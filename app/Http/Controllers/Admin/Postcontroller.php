<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Blog;
use Yajra\Datatables\Datatables;
use Redirect;
use Validator;
use Auth;

class Postcontroller extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response


     */

    public function __construct()
    {
        $this->middleware('auth');
        
    }



    public function index()
    {
      
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        
    }



    public function Viewpost(){

        return view('Admin.post.viewpost');
    }

    public function Listpost(){



         $data = Blog::where('user_id',Auth::user()->id)->get()->toArray();

        return Datatables::of($data)
        
        ->addColumn('action', function ($data) {
                return '<a href="'. url('/edit_post/').'/'.$data['id'].'" class="btn btn-xs btn-primary"><i class="glyphicon glyphicon-pencil"></i></a>| <a href="'.url('/delete_post').'/'.$data['id'].'"  id="deleteconfirm" class="btn btn-xs btn-danger"><i class="glyphicon glyphicon-trash"></i></a>';
        })

        ->escapeColumns([])
        ->addIndexColumn()->make(true);

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }



    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $post = Blog::find($id);
       if($post){
        return view('Admin.post.Editpost',compact('post'));
       }
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {

        $data = $request->all();
           $udata=['title'=>$data['title'],'body'=>$data['body']];

             $data =Blog::where('id', $id)->update($udata);
      if($data){
     $request->session()->flash('message', 'Blog Update successfully.');
        return redirect()->route('viewpost');
      }

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request,$id)
    {

        $delete = Blog::destroy($id);
        if($delete){
     $request->session()->flash('message', 'Blog delete successfully.');
        return redirect()->route('viewpost');
      }


    }
}
