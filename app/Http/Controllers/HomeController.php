<?php

namespace App\Http\Controllers;
use App\User;
use Illuminate\Http\Request;
use Redirect;
use Validator;
use Auth;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth')->except('Uservarify');;
    }

    public function Uservarify(Request $request,$id){

        $data = User::findOrFail($id);
        $update = User::where('id',$id)->update(['status'=>'1']);
        
        return redirect()->route('login');


    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */

    public function index()
    {
        return view('Admin/Default');
    }

    /** User profile view file */
    public function Userprofile(Request $request){
     
        $user = User::find(Auth::user()->id);
        return view('Admin.userprofile',compact('user'));

        
    }
    /** userprofile update */
    public function Profileupdate(Request $request){

        $data = $request->all();
    
        $validatedData = Validator::make($request->all(),[
        'name' => 'required|max:255',
        'email' => 'required|email|max:255',
        'dob' => 'required',        
       
        ],[
        "name.required" => 'name is required',
        "email.required" => 'email is required',
        "dob.required" => 'Date of birth is required',

        ])->validate(); 
        $data = $request->all();
      
           $udata=['name'=>$data['name'],'email'=>$data['email'],'dob'=>$data['dob']];
             $data =  User::where('id',Auth::user()->id)->update($udata);
      if($data){
     $request->session()->flash('message', 'User Update successfully.');
        return redirect()->route('userprofile');
      }

    }
  
}
