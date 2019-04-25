<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\{User, Activitylog};
use Spatie\Permission\Models\Role;
use DB;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use App\Repositories\UserRepository;


class UserController extends Controller
{
    protected $model;
    public function __construct(User $user)
    {
       // set the model
       $this->model = new UserRepository($user);
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $user =$this->model->all();
        $user_roles = Role::all();
        return view('administrator.users.create')->with([
            'user' => $user,
            'user_roles' => $user_roles,
        ]);
    }


    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $roles = Role::pluck('name','name')->all();
        return view('users.create',compact('roles'));
    }


    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        if(auth()->user()->hasPermissionTo('user-create')){
            $this->validate($request, [
                'name' => 'required|min:1|max:255|',
                'email' => 'required||min:1|max:255|unique:users',
                'password' => 'required|min:1|max:255',
                'role' => 'required|min:1|max:255'
            ]);
            
            if(User::where("email", $request->input("email"))->exists()){
                return redirect()->back()->with("error", "The E-Mail is In Use By Another User");
            }
            $data =new User ([
                
                "email" => $request->input("email"),
                "name" => $request->input("name"),
                "password" => Hash::make($request->input("password")),
                "role" => $request->input("role"),
                "status" => 1,
            ]);
            $log = new Activitylog([
                "operations" => "Added ".$request->input("email"). " To The User List",
                "user_id" => Auth::user()->user_id,
            ]);
            if(($log->save()) AND ($data->save())){
                $addRoles = $data->assignRole($request->input('roles'));
                return redirect()->route("user.create")->with("success", "You Have Added User " 
                .$request->input("email"). " The User List Successfully");
            }else{
                return redirect()->back()->with("error", "Network Failure");
            } 
        } else{
            return redirect()->back()->with([
                'error' => "You Dont have Access To Create A User",
            ]);
        }
    }


    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $user = User::find($id);
        return view('users.show',compact('user'));
    }


    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($user_id)
    {
        

        if(auth()->user()->hasPermissionTo('user-edit')){
            $user = $this->model->all();
            $use = $this->model->show($user_id); 
            $roles = Role::pluck('name','name')->all();
            $userRole = $use->roles->pluck('name','name')->all();
            $user_roles = Role::all();
            
            return view('administrator.users.edit')->with([
                "user" => $user,
                "use" =>$use,
                "userRole" => $userRole,
                "roles"=>$roles,
                'user_roles' => $user_roles
            ]);
        } else{
            return redirect()->back()->with([
                'error' => "You Dont have Access To Edit A User",
            ]);
        }
    }


    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $user_id)
    {
        $this->validate($request, [
            'name' => 'required|min:1|max:255|',
            'email' => 'required||min:1|max:255',
            'password' => 'max:255',
            'role' => 'required|min:1|max:255'
        ]);
        $user = $this->model->show($user_id);
        
        if(empty($request->input("password"))){
            $password = $user->password;
        }else{
            $password = $request->input("password");
        }
        $data =([
            "user" => $this->model->show($user_id),
            "email" => $request->input("email"),
            "name" => $request->input("name"),
            "password" => Hash::make($password),
            "role" => $request->input("role"),
            "status" => 1,
        ]);

        $log = new Activitylog([
            "operations" => "Changed User Email From" . " ". "From". " ". $request->input('prev_email'). 
            " " ."To". " "  .$request->input("email"),
            "user_id" => Auth::user()->user_id,
        ]);
        DB::table('model_has_roles')->where('model_id',$user_id)->delete();

        if(($log->save()) AND ($this->model->update($data, $user_id))){
            $addRoles = $user->assignRole($request->input('roles'));
            return redirect()->route("user.create")->with("success", "You Have Updated The User 
            Details Successfully");
        }else{
            return redirect()->back()->with("error", "Network Failure");
        } 
    }


    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($user_id)
    {
        if(auth()->user()->hasPermissionTo('user-delete')){
            $user =  $this->model->show($user_id);  
            $use = User::where([
                "user_id" => $user_id, 
            ])->first();
            
            $details= $use->name; 
            $email = $use->email;
            $roles = $use->role;
            $log = new Activitylog([
                "operations" => "Deleted ". $email. " From The User List",
                "user_id" => Auth::user()->user_id,
            ]);
            if (($user->delete($user_id)) AND ($user->trashed()) AND ($log->save())) {
                $use->removeRole($roles);
                return redirect()->back()->with([
                    'success' => "You Have Deleted". $details. " ". "From The User Details Successfully",
                ]);
            }
        } else{
            return redirect()->back()->with([
                'error' => "You Dont have Access To Delete A User",
            ]);
        }
    }
}
