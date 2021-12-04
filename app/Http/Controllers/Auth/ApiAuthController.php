<?php

namespace App\Http\Controllers\Auth;


use App\Http\Controllers\Controller;

use App\Requests\ApiAuthRequest;
use App\Requests\LoginRequest;
use App\Repositories\AuthRepositoryInterface;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;
use Auth;


class ApiAuthController extends Controller
{

    private $authRepository;

    public function __construct(AuthRepositoryInterface $AuthRepository)
    {
        $this->authRepository = $AuthRepository;
    }


    public function register(ApiAuthRequest $request)
    {

        $request['password'] = Hash::make($request['password']);
        $request['remember_token'] = Str::random(10);

        return response($this->authRepository->create($request->toArray()),200);

    }



    public function login(LoginRequest $request)
    {
        
        if (
            Auth::attempt(['status' => 1, 'email' => $request->email, 'password' => $request->password, 'deleted' =>0]) 
          ) {

            $user = Auth::user();
           
            return response($this->authRepository->loginAuthentication($user), 200);
        } else {
            $response = ["message" => __('auth.unauthorised')];
            return response($response, 422);
        }
    }



}
