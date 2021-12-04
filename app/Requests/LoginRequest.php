<?php

namespace App\Requests;

use App\Http\Infastructure\ApiRequest;
use Illuminate\Http\Request;

class LoginRequest extends ApiRequest
{

    public function authorize()
    {
        return true;
    }

    public function rules(Request $request)
    {

        switch ($this->method()) {
            case 'GET':
            case 'DELETE': {
                    return [];
                }
            case 'POST': {
                    $return['email'] = 'required|email';
                    $return['password'] = 'required|string|min:8';
                    return $return;
                }
            case 'PUT':
            case 'PATCH': {
                    return [];
                }
            default:
                break;
        }
    }

    public function attributes()
    {
        return [
            'email' => 'E mail Address',
            'password' => 'Password'
        ];
    }
}
