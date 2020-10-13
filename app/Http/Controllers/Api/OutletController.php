<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Api\Base\BaseController;
use App\Models\Api\Outlet;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Symfony\Component\HttpFoundation\Response;

class OutletController extends BaseController
{
    /**
     * Display a listing of the Outlet.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $outlet = Outlet::all();
        
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
            'name' => 'required',
            'address' => 'required',
            'phone' => 'required|numeric',
            'rating' => 'required|numeric',
            'laundry_type' => 'required|json',
            'manhours' => 'required|json',
            'owner_id' => 'required|numeric',
        ]);

        $isFails = $this->isFails($validator);
        
        if ($isFails == false) { 
            $outlet = new Outlet([
                'name' => $request->name,
                'address' => $request->address,
                'phone' => $request->phone,
                'rating' => $request->rating,
                'laundry_type' => $request->laundry_type,
                'manhours' => $request->manhours,
                'owner_id' => $request->owner_id,
            ]);

            $outlet->save();
            
            return $this->sendResponse('Outlet Create Successfully', Response::HTTP_CREATED, $outlet);
        } else
            return $isFails;
    }

    /**
     * Display the specified Outlet.
     *
     * @param  int  $outlet
     * @return \Illuminate\Http\Response
     */
    public function show($outlet)
    {
        $outlet = Outlet::find($outlet);
        
        if ($outlet == null) 
            return $this->sendError('Outlet Unknown', Response::HTTP_NOT_FOUND);

        return $this->sendResponse('Show Laundry Type', Response::HTTP_OK, $outlet);
    }

    /**
     * Update the specified Outlet in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $outlet
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $outlet)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required',
            'address' => 'required',
            'phone' => 'required|numeric',
            'rating' => 'required|numeric',
            'laundry_type' => 'required|json',
            'manhours' => 'required|json',
            'owner_id' => 'required|numeric',
        ]);

        $isFails = $this->isFails($validator);
        
        if ($isFails == false) { 
            $data = Outlet::where('id', $outlet)->update([
                'name' => $request->name,
                'address' => $request->address,
                'phone' => $request->phone,
                'rating' => $request->rating,
                'laundry_type' => $request->laundry_type,
                'manhours' => $request->manhours,
                'owner_id' => $request->owner_id,
            ]);

            $data = Outlet::find($outlet);
            
            return $this->sendResponse('Outlet Create Successfully', Response::HTTP_CREATED, $data);
        } else
            return $isFails;
    }

    /**
     * Remove the specified Outlet from storage.
     *
     * @param  int  $outlet
     * @return \Illuminate\Http\Response
     */
    public function destroy(Outlet $outlet)
    {
        $outlet->delete();
        
        return $this->sendResponse('Outlet Delete Successfully', Response::HTTP_OK);
    }
}
