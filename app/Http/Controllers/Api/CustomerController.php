<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Api\Base\BaseController;
use App\Models\Api\Customer;
use Illuminate\Support\Facades\Validator;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class CustomerController extends BaseController
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
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

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'address' => 'required',
            'user_id' => 'required'
        ]);

        $isFails = $this->isFails($validator);
        
        if ($isFails == false) { 
            $customer = new Customer([
                'address' => $request->address,
                'user_id' => $request->user_id
            ]);

            $customer->save();
            
            return $this->sendResponse('Customer Create Successfully', Response::HTTP_CREATED, $customer);
        } else
            return $isFails;
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($customer)
    {
        $customer = Customer::find($customer);

        if($customer == NULL){
            return $this->sendError('Customer Unknown', Response::HTTP_NOT_FOUND);
        }

        return $this->sendResponse("show Customer: ", response::HTTP_OK, $customer);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
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
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
