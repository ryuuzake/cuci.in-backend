<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Api\Base\BaseController;
use App\Models\Api\OutletGoogle;

class OutletGoogleController extends BaseController
{
    /**
     * Display a listing of the Outlet.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $outlet = OutletGoogle::all();
        
        if ($outlet == null) 
            return $this->sendError('Outlet Empty', Response::HTTP_NOT_FOUND);

        return $this->sendResponse('List Outlet', Response::HTTP_OK, $outlet);
    }

    /**
     * Store a newly created Outlet in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'outlet_id' => 'required',
        ]);

        $isFails = $this->isFails($validator);
        
        if ($isFails == false) { 
            $outlet = new Outlet([
                'outlet_id' => $request->outlet_id,
            ]);

            $outlet->save();
            
            return $this->sendResponse('Outlet Create Successfully', Response::HTTP_CREATED, $outlet);
        } else
            return $isFails;
    }
}
