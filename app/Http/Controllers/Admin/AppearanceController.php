<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\AppearanceSettings;
use App\Models\Settings;

class AppearanceController extends Controller
{
    /**
     * Display the appearance settings page.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $appearanceSettings = AppearanceSettings::first();
        return view('admin.appearance.index', [
            'title' => 'Appearance Settings',
            'appearanceSettings' => $appearanceSettings,
            'settings' => Settings::where('id', '1')->first(),
        ]);
    }

    /**
     * Update the appearance settings.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request)
    {
        $request->validate([
            'primary_color' => 'required|string|max:7',
            'primary_color_dark' => 'required|string|max:7',
            'primary_color_light' => 'required|string|max:7',
            'secondary_color' => 'required|string|max:7',
            'secondary_color_dark' => 'required|string|max:7',
            'secondary_color_light' => 'required|string|max:7',
            'text_color' => 'required|string|max:7',
            'bg_color' => 'required|string|max:7',
            'sidebar_bg_color' => 'required|string|max:7',
            'sidebar_text_color' => 'required|string|max:7',
            'card_bg_color' => 'required|string|max:7',
            'gradient_direction' => 'required|string|max:20',
            'custom_css' => 'nullable|string',
            'notes' => 'nullable|string',
        ]);

        $appearanceSettings = AppearanceSettings::first();
        
        // Update all form fields
        $appearanceSettings->update([
            'primary_color' => $request->primary_color,
            'primary_color_dark' => $request->primary_color_dark,
            'primary_color_light' => $request->primary_color_light,
            'secondary_color' => $request->secondary_color,
            'secondary_color_dark' => $request->secondary_color_dark,
            'secondary_color_light' => $request->secondary_color_light,
            'text_color' => $request->text_color,
            'bg_color' => $request->bg_color,
            'sidebar_bg_color' => $request->sidebar_bg_color,
            'sidebar_text_color' => $request->sidebar_text_color,
            'card_bg_color' => $request->card_bg_color,
            'use_gradient' => $request->has('use_gradient'),
            'gradient_direction' => $request->gradient_direction,
            'custom_css' => $request->custom_css,
            'disable_animations' => $request->has('disable_animations'),
            'notes' => $request->notes,
        ]);

        return redirect()->route('admin.appearance')->with([
            'message' => 'Appearance settings updated successfully!',
            'type' => 'success',
        ]);
    }

    /**
     * Reset appearance settings to default values.
     *
     * @return \Illuminate\Http\Response
     */
    public function reset()
    {
        $appearanceSettings = AppearanceSettings::first();
        
        // Reset to the current banking theme defaults used by the landing page, auth, and dashboards.
        $appearanceSettings->update([
            'primary_color' => '#13b981',
            'primary_color_dark' => '#079667',
            'primary_color_light' => '#dff8ed',
            'secondary_color' => '#2563eb',
            'secondary_color_dark' => '#1d4ed8',
            'secondary_color_light' => '#dbeafe',
            'text_color' => '#0d1b2a',
            'bg_color' => '#f7fafc',
            'sidebar_bg_color' => '#ffffff',
            'sidebar_text_color' => '#0d1b2a',
            'card_bg_color' => '#ffffff',
            'use_gradient' => true,
            'gradient_direction' => 'to right',
            'custom_css' => null,
            'disable_animations' => false,
            'notes' => 'Modern light banking theme defaults',
        ]);

        return redirect()->route('admin.appearance')->with([
            'message' => 'Appearance settings have been reset to default values!',
            'type' => 'success',
        ]);
    }
} 
