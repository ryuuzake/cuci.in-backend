<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Api\Base\BaseController;
use App\Models\Api\Partnership;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Symfony\Component\HttpFoundation\Response;

class PartnershipController extends BaseController
{
     /**
     * Store a newly created Partnership in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'user_id' => 'required',
            'ownername' => 'required',
            'phone' => 'required|numeric',
            'address' => 'required',
            'laundry_type' => 'required|json',
        ]);

        $isFails = $this->isFails($validator);
        
        if ($isFails == false) { 
            $partnership = new Partnership([
                'user_id' => $request->user_id,
                'owner_name' => $request->ownername,
                'phone' => $request->phone,
                'address' => $request->address,
                'laundry_type' => $request->laundry_type,
            ]);

            $partnership->save();
            
            return $this->sendResponse('Apply Successfully', Response::HTTP_CREATED, $partnership);
        } else
            return $isFails;
    }

    /**
     * Display status of Apply Partnership
     *
     * @param  int  $transaction
     * @return \Illuminate\Http\Response
     */
    public function status($user_id)
    {
        $status = Partnership::where('user_id', $user_id)->first()->status;
        
        if ($status == '[]') 
            return $this->sendError('Error', Response::HTTP_NOT_FOUND);

        return $this->sendResponse('Status Apply' , Response::HTTP_OK, $status);
    }
}
