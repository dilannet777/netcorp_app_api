<?php

namespace App\Requests;

use App\Http\Infastructure\ApiRequest;
use Illuminate\Http\Request;

class ApiAuthRequest extends ApiRequest
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
                    $return['name'] = 'required|max:50';
                    $return['email'] = 'required|email|unique:users';
                    $return['password'] = 'required|string|min:8|confirmed';
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
            'name' => 'Full Name',
            'email' => 'E mail Address',
            'password' => 'Password'
        ];
    }
}
