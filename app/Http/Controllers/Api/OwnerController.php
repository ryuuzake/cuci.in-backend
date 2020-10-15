<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;
use App\Models\Api\Owner;
use App\Models\User;
use App\Http\Controllers\Controller;
use App\Http\Controllers\Api\Base\BaseController;
use Symfony\Component\HttpFoundation\Response;

class OwnerController extends BaseController
{
    public function index()
    {
        $owner = Owner::all();
        
        if($owner == null)
            return $this->sendError('Owner Empty', RESPONSE::HTTP_NOT_FOUND);
        
        return $this->sendResponse('List Owner', Response::HTTP_OK, $owner);
    }

    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'user_id' => 'required',
        ]); 

        $isFails = $this->isFails($validator);

        if($isFails == false){
            $owner = new Owner([
                'user_id' => $request->user_id,
            ]);

            $owner->save();

            return $this->sendResponse('Owner Create Successfully', Response::HTTP_CREATED, $owner);
        } else
            return $isFails;
    }

    public function show($id)
    {
        $data = json_decode(Owner::find($id), true);

        return $this->sendResponse('Owner Info', Response::HTTP_OK, $data);
    }
}