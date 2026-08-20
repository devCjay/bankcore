<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Agent;
use App\Models\User;
use Illuminate\Http\Request;

class LogicController extends Controller
{
    public function addagent(Request $request)
    {
        $data = $request->validate([
            'user' => ['required', 'exists:users,id'],
            'referred_users' => ['nullable', 'integer', 'min:0'],
        ]);

        $agent = Agent::where('agent', $data['user'])->first() ?: new Agent();
        $agent->agent = $data['user'];
        $agent->total_refered = $data['referred_users'] ?? 0;
        $agent->save();

        return back()->with('success', 'Agent added successfully.');
    }

    public function viewagent($agent)
    {
        return view('admin.viewagent')->with([
            'title' => 'Agent record',
            'agent' => User::where('id', $agent)->first(),
            'ag_r' => User::where('ref_by', $agent)->get(),
        ]);
    }

    public function delagent($id)
    {
        Agent::where('id', $id)->delete();

        return back()->with('success', 'Agent removed successfully.');
    }
}
