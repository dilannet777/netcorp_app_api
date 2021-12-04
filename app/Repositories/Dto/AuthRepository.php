<?php

namespace App\Repositories\Dto;


use App\Repositories\AuthRepositoryInterface;
use App\Models\User;
use Carbon\Carbon;
use DB;

class AuthRepository implements AuthRepositoryInterface
{

    public function create($data)
    {
        $user = User::create($data);  
        $user->fill(['created_by' => $user->id])->save();
        $role = config('roles.models.role')::where('name', '=', 'User')->first();  //choose the default role upon user creation.
        $user->attachRole($role);
        $token = $user->createToken(__('auth.token_text'))->plainTextToken;
        $userPermissionArr = $this->getUserPermission($user->id);
        $response = ['user' => $user,'permissions' => $userPermissionArr,'token'=>$token];
        return $response;
        
    }

    public function saveLastLoginTime($user){
        $user->fill(['created_by'=>$user->id,'last_login_at' => Carbon::now()])->save();
        return $user;
    }

    public function logout($request) {

        $token = $request->user()->token();
        $token->revoke();
        $response = ['message' => 'You have been successfully logged out!'];
        return response($response, 200);
    }

    public function getUserPermission($userId){
        $userPermissionArr=array();
            $userPermissions= DB::table('permissions')
                ->select('permissions.name','permissions.slug','permissions.description')
                ->join('permission_role', 'permission_role.permission_id', '=', 'permissions.id')
                ->join('role_user', 'permission_role.role_id', '=', 'role_user.role_id')
                ->where('role_user.user_id', $userId)->get();
            foreach ($userPermissions as $key=>$value){

                    $userPermissionArr[]=$value->slug;
            }    

            return $userPermissionArr;
    }

    public function getUserRole($userId){
        $userRole=array();
        $userRole= DB::table('roles')
               ->select('roles.slug',)
               ->join('role_user', 'role_user.role_id', '=', 'roles.id')
               ->where('role_user.user_id', $userId)->first();
        if (!empty($userRole))
            return $userRole->slug;
        else
            return 'unverified';
    }


    public function loginAuthentication($user)
    {

        $userPermissionArr = [];

        $userPermissionArr = $this->getUserPermission($user->id);
        $this->saveLastLoginTime($user);
        $userRole = $this->getUserRole($user->id);
        $tokenResult = $user->createToken(__('auth.token_text'));
      
      
        $response = [
            'user' => $user, 'role' => $userRole, 'permissions' => $userPermissionArr, 'token' => $tokenResult->plainTextToken
        ];
        


        return $response;
    }

}
