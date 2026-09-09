@php
    if ($settings->redirect_url != null or !empty($settings->redirect_url)) {
        header("Location: $settings->redirect_url", true, 301);
        exit();
    }

    $page = [
        'eyebrow' => $settings->site_name . ' Cards',
        'heading' => 'Cards you can control from anywhere.',
        'description' => 'Apply for cards, review activity, manage card status, and keep payment tools close to your online banking account.',
        'image' => 'temp/custom/assets/img/about/about-img-6.jpg',
        'image_alt' => 'Digital banking card',
        'primary' => ['label' => 'Apply for a card', 'url' => url('login')],
        'secondary' => ['label' => 'Open account', 'url' => url('register')],
        'stats' => [
            ['label' => 'Networks', 'value' => 'Visa + more', 'text' => 'Support for familiar card experiences and payment workflows.'],
            ['label' => 'Controls', 'value' => 'Instant', 'text' => 'Review status and card activity from your account dashboard.'],
            ['label' => 'Support', 'value' => 'Digital', 'text' => 'Request help when a card needs review or account action.'],
        ],
        'cards_heading' => 'Designed for secure spending.',
        'cards_description' => 'Card tools are built around visibility, control, and fast account access.',
        'cards' => [
            ['icon' => 'ri-bank-card-line', 'title' => 'Credit cards', 'text' => 'Request credit cards and keep card activity connected to your banking profile.', 'url' => url('login'), 'label' => 'Apply now'],
            ['icon' => 'ri-lock-line', 'title' => 'Card protection', 'text' => 'Keep card details, payment activity, and support workflows easier to monitor.', 'url' => url('contact'), 'label' => 'Get support'],
            ['icon' => 'ri-smartphone-line', 'title' => 'Mobile access', 'text' => 'Use the online dashboard to check card records from phone, tablet, or desktop.', 'url' => url('apps'), 'label' => 'View app'],
        ],
        'split' => [
            'eyebrow' => 'Card management',
            'heading' => 'Protect your card without visiting a branch.',
            'text' => 'Leave your card behind or need a quick review? Digital card tools keep support and account visibility close.',
            'image' => 'temp/custom/assets/img/about/converter-1.jpg',
            'image_alt' => 'Card controls dashboard',
            'bullets' => [
                'Apply online and track card-related account activity.',
                'Review card payments alongside deposits and transfers.',
                'Reach support quickly when a card needs attention.',
            ],
        ],
        'cta' => ['heading' => 'Ready to manage cards online?', 'text' => 'Sign in to apply, review card activity, or request account support.', 'url' => url('login'), 'label' => 'Go to banking'],
    ];
@endphp
@extends('layouts.base')
@section('title', 'Cards')
@section('content')
    @include('home.partials.modern-page', ['page' => $page])
@endsection
