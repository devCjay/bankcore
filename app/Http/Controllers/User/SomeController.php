<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class SomeController extends Controller
{
    public function changetheme(Request $request)
    {
        $user = $request->user();

        if ($user) {
            $user->dashboard_style = $user->dashboard_style === 'dark' ? 'light' : 'dark';
            $user->save();
        }

        return back();
    }
}
