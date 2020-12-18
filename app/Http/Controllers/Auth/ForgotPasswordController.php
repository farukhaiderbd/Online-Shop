<?php

namespace App\Http\Controllers\auth;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Foundation\Auth\SendsPasswordResetEmails;
use Illuminate\Support\Facades\Password;

class ForgotPasswordController extends Controller
{
    use SendsPasswordResetEmails;

//     public function __construct()
//    {
//        $this->middleware('guest:admin');
//    }

    public function showLinkRequestForm()
    {
      return view('auth.passwords.email');
    }
//     public function broker()
//   {
//       return Password::broke('admins');
//   }
}
