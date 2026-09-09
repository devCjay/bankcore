@php
    if ($settings->redirect_url != null or !empty($settings->redirect_url)) {
        header("Location: $settings->redirect_url", true, 301);
        exit();
    }

    $page = [
        'eyebrow' => $settings->site_name . ' Mobile',
        'heading' => 'A mobile-ready banking experience.',
        'description' => 'The app experience keeps balances, transfers, cards, loans, and support readable on smaller screens.',
        'image' => 'temp/custom/assets/img/app-screen.png',
        'image_alt' => 'Mobile banking application',
        'primary' => ['label' => 'Go to dashboard', 'url' => url('login')],
        'secondary' => ['label' => 'Create account', 'url' => url('register')],
        'stats' => [
            ['label' => 'Access', 'value' => 'Mobile-first', 'text' => 'Core banking actions stay usable across devices.'],
            ['label' => 'Status', 'value' => 'Regional', 'text' => 'Store availability can vary by location.'],
            ['label' => 'Support', 'value' => 'Online', 'text' => 'Customers can still use web banking while app access is unavailable.'],
        ],
        'cards_heading' => 'Bank from the device you have.',
        'cards_description' => 'The web dashboard and mobile experience share the same clear product structure.',
        'cards' => [
            ['icon' => 'ri-apple-fill', 'title' => 'iOS ready', 'text' => 'A mobile interface designed for quick balance checks, transfers, and support.', 'url' => url('login'), 'label' => 'Use web banking'],
            ['icon' => 'ri-android-fill', 'title' => 'Android ready', 'text' => 'Responsive screens keep account tools easy to scan on Android devices.', 'url' => url('login'), 'label' => 'Open dashboard'],
            ['icon' => 'ri-customer-service-2-line', 'title' => 'Availability support', 'text' => 'If the app is not available in your location, support can guide your next steps.', 'url' => url('contact'), 'label' => 'Contact support'],
        ],
        'split' => [
            'eyebrow' => 'Location notice',
            'heading' => 'App availability depends on your current region.',
            'text' => 'When store access is unavailable, customers can continue using online banking through the secure dashboard.',
            'image' => 'temp/custom/assets/img/about/about-img-5.jpg',
            'image_alt' => 'Customer using mobile banking',
            'bullets' => [
                'Use web banking for transfers, cards, loans, and account activity.',
                'Keep support close for app availability questions.',
                'Register once and access the same account from supported channels.',
            ],
        ],
        'cta' => ['heading' => 'Use online banking now.', 'text' => 'Sign in from the web dashboard while mobile app availability is reviewed.', 'url' => url('login'), 'label' => 'Open dashboard'],
    ];
@endphp
@extends('layouts.base')
@section('title', 'Download App')
@section('content')
    @include('home.partials.modern-page', ['page' => $page])
@endsection
