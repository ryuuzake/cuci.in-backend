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

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $owner)
    {
        $validator = Validator::make($request->all(), [
            'user_id' => 'required|numeric',
        ]);

        $isFails = $this->isFails($validator);
        
        if ($isFails == false) { 
            $data = Owner::where('id', $owner)->update([
                'user_id' => $request->user_id,
            ]);

            $data = Owner::find($owner);
            
            return $this->sendResponse('Owner Create Successfully', Response::HTTP_CREATED, $data);
        } else
            return $isFails;
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Owner $owner)
    {
        $owner->delete();
        
        return $this->sendResponse('Owner Delete Successfully', Response::HTTP_OK);
    }
  
    public function show($id)
    {
        $data = json_decode(Owner::find($id), true);

        return $this->sendResponse('Owner Info', Response::HTTP_OK, $data);
    }

    public function showByUserId($id)
    {
        $data = json_decode(Owner::where('user_id', $id)->get(), true);

        if($data == null)
            return $this->sendError('Not Registered as Owner', RESPONSE::HTTP_NOT_FOUND);
        return $this->sendResponse('Owner by User Id', Response::HTTP_OK, $data);
    }
}