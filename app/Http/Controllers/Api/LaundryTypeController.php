<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Api\Base\BaseController;
use App\Models\Api\LaundryType;
use Illuminate\Support\Facades\Validator;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Symfony\Component\HttpFoundation\Response;

class LaundryTypeController extends BaseController
{
    /**
     * Display a listing of the Laundry Type.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $id = Auth::user()->owner->outlet->id;

        $laundry_type = LaundryType::all();
        
        if ($laundry_type == '[]') 
            return $this->sendError('Laundry Type Empty', Response::HTTP_NOT_FOUND);

        return $this->sendResponse('List Laundry Type', Response::HTTP_OK, $laundry_type);
    }

    /**
     * Store a newly created Laundry Type in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required',
        ]);

        $isFails = $this->isFails($validator);
        
        if ($isFails == false) { 
            $laundry_type = new LaundryType([
                'name' => $request->name,
            ]);

            $laundry_type->save();
            
            return $this->sendResponse('Laundry Type Create Successfully', Response::HTTP_CREATED, $laundry_type);
        } else
            return $isFails;
    }

    /**
     * Display the specified Laundry Type.
     *
     * @param  int  $type
     * @return \Illuminate\Http\Response
     */
    public function show($type)
    {
        $laundry_type = LaundryType::find($type);
        
        if ($laundry_type == '[]') 
            return $this->sendError('Laundry Type Unknown', Response::HTTP_NOT_FOUND);

        return $this->sendResponse('Show Laundry Type' , Response::HTTP_OK, $laundry_type);
    }

    /**
     * Update the specified Laundry Type in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $typeef
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $type)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required',
        ]);

        $isFails = $this->isFails($validator);
        
        if ($isFails == false) { 
            $laundry_type = LaundryType::where('id', $type)->update([
                'name' => $request->name,
            ]);

            $laundry_type = LaundryType::find($type);
            
            return $this->sendResponse('Laundry Type Update Successfully', Response::HTTP_CREATED, $laundry_type);
        } else
            return $isFails;
    }

    /**
     * Remove the specified Laundry Type from storage.
     *
     * @param  int  $type
     * @return \Illuminate\Http\Response
     */
    public function destroy(LaundryType $type)
    {
        $type->delete();
        
        return $this->sendResponse('Laundry Type Delete Successfully', Response::HTTP_OK);
    }
}
