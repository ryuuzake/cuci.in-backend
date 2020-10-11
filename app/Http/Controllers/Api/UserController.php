<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Api\Base\BaseController;
use App\Http\Controllers\Controller;
use App\Models\Api\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;
use Symfony\Component\HttpFoundation\Response;

class UserController extends BaseController
{
    /**
     * Return all user
     *
     * @return \Illuminate\Http\Response
     */
    public function getAllUser()
    {
        $user = User::all();
        $data = json_decode($user, true);
        
        return $this->sendResponse($data, 'All User Info', Response::HTTP_OK);
    }

    /**
     * Store a newly created User in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'full_name' => 'required',
            'username' => 'required',
            'email' => 'required|email',
            'phone' => 'required|numeric',
            'password' => 'required',
            'confirmation' => 'required|same:password',
        ]);

        $isFails = $this->isFails($validator);
        
        if ($isFails == false) { 
            $user = new User([
                'full_name' => $request->full_name,
                'username' => $request->username,
                'email' => $request->email,
                'phone' => $request->phone,
                'password' => bcrypt($request->password),
            ]);

            $user->save();
            
            return $this->sendResponse($user, 'User Create Successfully', Response::HTTP_CREATED);
        } else
            return $isFails;
    }

    /**
     * Display the specified User.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $user = User::find($id);
        $data = json_decode($user, true);

        return $this->sendResponse($data, 'User Info', Response::HTTP_OK);
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
        $validator = Validator::make($request->all(), [
            'full_name' => 'required',
            'username' => 'required',
            'email' => 'required|email',
            'phone' => 'required|numeric',
        ]);

        $isFails = $this->isFails($validator);
        
        if ($isFails == false) { 
            $user = User::where('id', $id)->update([
                'full_name' => $request->full_name,
                'username' => $request->username,
                'email' => $request->email,
                'phone' => $request->phone,
            ]);

            $user = User::find($id);
            
            return $this->sendResponse($user, 'User Update Successfully', Response::HTTP_CREATED);
        } else
            return $isFails;
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(User $id)
    {
        $id->save();
        $id->delete();
        
        return $this->sendResponse('User Delete Successfully', Response::HTTP_OK);
    }
}
