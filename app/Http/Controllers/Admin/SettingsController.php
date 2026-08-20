<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Wdmethod;
use Illuminate\Http\Request;

class SettingsController extends Controller
{
    public function updatesettings(Request $request)
    {
        return back()->with('success', 'Use the current App Settings page to update site settings.');
    }

    public function updateasset(Request $request)
    {
        return back()->with('success', 'Use the current asset settings page to update assets.');
    }

    public function updatemarket(Request $request)
    {
        return back()->with('success', 'Use the current market settings page to update markets.');
    }

    public function updatefee(Request $request)
    {
        return back()->with('success', 'Use the current settings page to update fees.');
    }

    public function deletewdmethod($id)
    {
        Wdmethod::where('id', $id)->delete();

        return back()->with('success', 'Payment Method Deleted Successfully');
    }
}
