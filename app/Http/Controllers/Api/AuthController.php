<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Api\Base\BaseController;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;
use Symfony\Component\HttpFoundation\Response;

class AuthController extends BaseController
{
    public function register(Request $request)
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
            
            return $this->sendResponse('User Register Successfully', Response::HTTP_CREATED, $user);
        } else
            return $isFails;
    }

    public function login(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'username' => 'required',
            'password' => 'required'
        ]);

        
        $isFails = $this->isFails($validator);

        if ($isFails == false) { 
            $credetials = request(['username', 'password']);
            
            if (!Auth::attempt($credetials)) {
                return $this->sendError('Unauthorised (username/password error)', Response::HTTP_UNAUTHORIZED);
            }
    
            $user = Auth::user();
            
            $success['token'] = $user->createToken('Personal Access Token')->accessToken;
            $success['name'] = $user->username;
    
            return $this->sendResponse('User Login Successfully', Response::HTTP_OK, $success);
        } else
            return $isFails;
    }
    
    public function logout()
    {
        Auth::user()->token()->revoke();
        
        return $this->sendResponse('User Logout Successfully', Response::HTTP_OK);
    }
    
    public function user()
    {
        return $this->sendResponse('Your Personal Account Info', Response::HTTP_OK, Auth::user());
    }
}
