<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\{Distributors, User, Activitylog};
use App\Repositories\DistributorRepository;
use DB;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class DistributorController extends Controller
{
    protected $model;
    public function __construct(Distributors $distributor)
    {
       // set the model
       $this->model = new DistributorRepository($distributor);
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $distributor= $this->model->all();
        return view('administrator.distributors.create')->with([
            'distributor' => $distributor,
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    public function bin()
    {
        $distributor= Distributors::onlyTrashed()->get();
        return view('administrator.distributors.recyclebin')->with([
            'distributor' => $distributor,
        ]);
    }

    public function restore($distributor_id)
    {
        Distributors::withTrashed()
        ->where('distributor_id', $distributor_id)
        ->restore();
        $categ= $this->model->show($distributor_id);
        $distributor_name = $categ->name;
        $email = $categ->email;
        User::withTrashed()
        ->where('email', $email)
        ->restore();
        $log = new Activitylog([
            "operations" => "Restored  ". " ".$email. " " . " To The Distributor List",
            "user_id" => Auth::user()->user_id,
        ]);
        $log->save();
        return redirect()->back()->with([
            'success' => " You Have Restored". " ".$distributor_name. " " ." Details Successfully",
            
        ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        if(auth()->user()->hasPermissionTo('distributor-create')){
           $validator =  $this->validate($request, [
                'name' =>'required|min:1|max:255',
                'email' =>'required|min:1|max:255|unique:distributors',
                'phone_one' =>'required|min:1|max:11|unique:distributors',
                'phone_two' =>'required|min:1|max:11|unique:distributors',
                'address' =>'required|min:1|max:255',
                'credit_limit' =>'required|min:1|max:255',
                'credit_reduction_per_month' =>'required|min:1|max:255',
                
            ]);
            if(Distributors::where("phone_one", $request->input("phone_one"))->exists()){
                return redirect()->back()->with("error", $request->input('phone_one'). " ". "Is in Use By 
                Another Distributor");

            }elseif(Distributors::where("phone_two", $request->input("phone_two"))->exists()){
                return redirect()->back()->with("error", $request->input('phone_two'). " ". 
                "Is in Use By Another Distributor");

            }elseif(Distributors::where("email", $request->input("email"))->exists()){
                return redirect()->back()->with("error", $request->input('email'). " ". 
                "Is in Use By Another Distributor");

            }elseif(User::where("email", $request->input("email"))->exists()){
                return redirect()->back()->with("error", $request->input('email'). " ". 
                "Is in Use By Another User");

            }else{
                $data = ([
                    "distributor" => new Distributors,
                    "name" => $request->input("name"),
                    "phone_one" => $request->input("phone_one"),
                    "phone_two" => $request->input("phone_two"),
                    "email" => $request->input("email"),
                    "address" => $request->input("address"),
                    "credit_limit" => $request->input("credit_limit"),
                    "credit_reduction_per_month" => $request->input("credit_reduction_per_month"),
                ]);
                $role= 'Distributor';

                $use = new User([
                    "email" => $request->input("email"),
                    "name" => $request->input("name"),
                    "password" => Hash::make($request->input("email")),
                    "role" => $role,
                    "status" => 1,
                    //"registration_number" => rand(0002, 2000),
                ]);

                $log = new Activitylog([
                    "operations" => "Added ".$request->input("email"). " To The Distributor List",
                    "user_id" => Auth::user()->user_id,
                ]);

                if($use->save() AND ($this->model->create($data)) AND $log->save()){
                    $addRole = $use->assignRole('Distributor');
                    return redirect()->route("distributor.create")->with("success", "You Have Added " 
                    .$request->input("name"). " To The Distributor List Successfully");
                }
            }
        } else{
            return redirect()->back()->with([
                'error' => "You Dont have Access To Create A Distributor",
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
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($distributor_id)
    {
        if(auth()->user()->hasPermissionTo('distributor-edit')){
            $distributor= $this->model->all();
            $dist = $this->model->show($distributor_id);
            return view('administrator.distributors.edit')->with([
                'distributor' => $distributor,
                'dist' =>$dist,
            ]);
        } else{
            return redirect()->back()->with([
                'error' => "You Dont have Access To Edit A Distributor",
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
    public function update(Request $request, $distributor_id)
    {
        if(auth()->user()->hasPermissionTo('distributor-update')){
            $validator =  $this->validate($request, [
                'name' =>'required|min:1|max:255',
                'email' =>'required|min:1|max:255',
                'phone_one' =>'required|min:1|max:11',
                'phone_two' =>'required|min:1|max:11',
                'address' =>'required|min:1|max:255',
                'credit_limit' =>'required|min:1|max:255',
                'credit_reduction_per_month' =>'required|min:1|max:255',
                 
            ]);
            $data = ([
                "distributor" => $this->model->show($distributor_id),
                "name" => $request->input("name"),
                "phone_one" => $request->input("phone_one"),
                "phone_two" => $request->input("phone_two"),
                "email" => $request->input("email"),
                "address" => $request->input("address"),
                "credit_limit" => $request->input("credit_limit"),
                "credit_reduction_per_month" => $request->input("credit_reduction_per_month"),
            ]);
            $role= 'Distributor';

            $sup = Distributors::where([
                "distributor_id" => $distributor_id, 
            ])->first();
            $details = $sup->email;
            $upda =  User::where([
                "email" => $details, 
            ])->first();
            $user_id = $upda->user_id;
            DB::table('users')->where([
                'user_id' =>$user_id,
            ])->update([
                "email" => $request->input("email"),
                "name" => $request->input("name"),
                "password" => Hash::make($request->input("email")),
                "role" => 'Distributor',
                "status" => 1,
            ]);

            $log = new Activitylog([
                "operations" => "Changed The Distributor E-Mail From ". " ".
                $request->input('prev_email') ." ". " To" .$request->input("email"),
                "user_id" => Auth::user()->user_id,
            ]);
            if($log->save() AND ($this->model->update($data, $distributor_id))){
                $addRole = $upda->assignRole('Distributor');
                return redirect()->route("distributor.create")->with("success", 
                "You Have Updated The Distributor Details Successfully");
            }
        } else{
            return redirect()->back()->with([
                'error' => "You Dont have Access To Update A Distributor",
            ]);
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($distributor_id)
    {
        if(auth()->user()->hasPermissionTo('distributor-delete')){
            $distributor =  $this->model->show($distributor_id); 
            $details = Distributors::where([
                "distributor_id" => $distributor_id, 
            ])->first();
            $email = $details->email;
            $user = User::where([
                "email" => $email, 
            ])->first();
            $user_id = $user->user_id;
            
            $details= $distributor->name;  
            $log = new Activitylog([
                "operations" => "Deleted ". " ". $details. " ". " From The Distributors List",
                "user_id" => Auth::user()->user_id,
            ]);
            if (($distributor->delete($distributor_id)) AND ($distributor->trashed())AND($user->delete()) 
                AND ($user->trashed())) {
                $user->removeRole("Distributor");
                return redirect()->back()->with([
                    'success' => "You Have Deleted ". " ". $details. " ". "From The Distributor Details Successfully",
                ]);
            }
        } else{
            return redirect()->back()->with([
                'error' => "You Dont have Access To Delete A Distributor",
            ]);
        }
    }
}