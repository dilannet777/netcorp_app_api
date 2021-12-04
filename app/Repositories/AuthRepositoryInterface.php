<?php
namespace App\Repositories;


interface AuthRepositoryInterface
{
   public function create($data);
   public function saveLastLoginTime($user);
   public function getUserRole($userId);
   public function getUserPermission($userId);
   public function logout($request);
   public function loginAuthentication($user);

}