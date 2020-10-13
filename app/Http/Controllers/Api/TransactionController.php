<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Api\Base\BaseController;
use App\Http\Controllers\Controller;
use App\Models\Api\Owner;
use App\Models\Api\Transaction;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;
use Symfony\Component\HttpFoundation\Response;

class TransactionController extends BaseController
{
    /**
     * Return Outlet's Transaction
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $id = Auth::user()->owner->outlet->id;

        $transaction = Transaction::with('customer', 'outlet')
            ->where('outlet_id', $id)
            ->orderBy('created_at')
            ->get();
        
        if ($transaction == '[]') 
            return $this->sendError('Transaction Empty', Response::HTTP_NOT_FOUND);

        return $this->sendResponse('List Transaction', Response::HTTP_OK, $transaction);
    }

    /**
     * Store a newly created Transaction in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $transaction_no = Transaction::whereYear('created_at', '=', Carbon::now()->format('Y'))->withTrashed()->count() + 1;
        $transaction_no_format = 'LNDRY' . '-' . Carbon::now()->format('Y') . '/'
            . Carbon::now()->format('m') . '/'
            . str_pad($transaction_no, 5, '0', STR_PAD_LEFT);

        $validator = Validator::make($request->all(), [
            'address' => 'required',
            'laundry_type' => 'required|json',
            'outlet_id' => 'required|numeric',
        ]);

        $isFails = $this->isFails($validator);
        
        if ($isFails == false) { 
            $user = new Transaction([
                'po_number' => $transaction_no_format,
                'address' => $request->address,
                'laundry_type' => $request->laundry_type,
                'customer_id' => 1,
                'outlet_id' => $request->outlet_id,
            ]);

            $user->save();
            
            return $this->sendResponse('Transaction Create Successfully', Response::HTTP_CREATED, $user);
        } else
            return $isFails;
    }

    /**
     * Display the specified Transaction.
     *
     * @param  int  $transaction
     * @return \Illuminate\Http\Response
     */
    public function show($transaction)
    {
        $id = Auth::user()->owner->outlet->id;

        $data = Transaction::with('customer', 'outlet')
            ->where([
                ['id', $transaction],
                ['outlet_id', $id]
            ])
            ->orderBy('created_at')
            ->get();
        
        if ($data == '[]') 
            return $this->sendError('Transaction Unknown', Response::HTTP_NOT_FOUND);

        return $this->sendResponse('Show Transaction' , Response::HTTP_OK, $data);
    }

    /**
     * Update the specified Transaction in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $transaction
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $validator = Validator::make($request->all(), [
            'price' => 'required|numeric',
            'amount' => 'required|numeric',
            'status' => 'nullable',
        ]);

        $isFails = $this->isFails($validator);
        
        if ($isFails == false) { 
            $transaction = Transaction::where('id', $id)->update([
                'price' => $request->price,
                'amount' => $request->amount,
                'status' => $request->status,
            ]);

            $transaction = Transaction::find($id);
            
            return $this->sendResponse('Transaction Update Successfully', Response::HTTP_CREATED, $transaction);
        } else
            return $isFails;
    }

    /**
     * Remove the specified Transaction from storage.
     *
     * @param  int  $transaction
     * @return \Illuminate\Http\Response
     */
    public function destroy(Transaction $transaction)
    {
        $transaction->delete();
        
        return $this->sendResponse('Transaction Delete Successfully', Response::HTTP_OK);
    }
}
