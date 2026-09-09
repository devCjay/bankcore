@php
    if ($settings->redirect_url != null or !empty($settings->redirect_url)) {
        header("Location: $settings->redirect_url", true, 301);
        exit();
    }

    $page = [
        'eyebrow' => $settings->site_name . ' Personal',
        'heading' => 'Personal banking that works around you.',
        'description' => 'Checking, savings, cards, loans, transfers, and alerts come together in one simple online banking experience.',
        'image' => 'temp/custom/assets/img/about/about-img-1.jpg',
        'image_alt' => 'Personal banking customer',
        'primary' => ['label' => 'Create account', 'url' => url('register')],
        'secondary' => ['label' => 'Sign in', 'url' => url('login')],
        'stats' => [
            ['label' => 'Access', 'value' => '24/7', 'text' => 'Bank from mobile, tablet, or desktop whenever you need it.'],
            ['label' => 'Products', 'value' => 'All-in-one', 'text' => 'Personal accounts, transfers, cards, savings, and loan tools.'],
            ['label' => 'Alerts', 'value' => 'Real-time', 'text' => 'Stay informed about movement across your account.'],
        ],
        'cards_heading' => 'Everyday banking without the clutter.',
        'cards_description' => 'The core workflows customers expect are easy to find and quick to use.',
        'cards' => [
            ['icon' => 'ri-wallet-3-line', 'title' => 'Checking and savings', 'text' => 'Use current and savings accounts together to manage daily spending and longer-term goals.', 'url' => url('register'), 'label' => 'Open account'],
            ['icon' => 'ri-bank-card-line', 'title' => 'Cards and payments', 'text' => 'Manage card payments, card status, limits, and account-linked transactions.', 'url' => url('cards'), 'label' => 'Explore cards'],
            ['icon' => 'ri-notification-3-line', 'title' => 'Account alerts', 'text' => 'Keep track of deposits, transfers, withdrawals, and important account messages.', 'url' => url('login'), 'label' => 'View alerts'],
        ],
        'split' => [
            'eyebrow' => 'Personal control',
            'heading' => 'A clear view of your money in motion.',
            'text' => 'Personal banking should make balances, recent activity, and next steps readable at a glance.',
            'image' => 'temp/custom/assets/img/hero/hero-img-5.jpg',
            'image_alt' => 'Mobile banking preview',
            'bullets' => [
                'Instant access to cash and day-to-day transaction records.',
                'Support for multiple account holders where product rules allow.',
                'Simple online flows for verification, transfers, cards, and loans.',
            ],
        ],
        'cta' => ['heading' => 'Start banking online today.', 'text' => 'Open your profile and manage personal banking from a modern dashboard.', 'url' => url('register'), 'label' => 'Get started'],
    ];
@endphp
@extends('layouts.base')
@section('title', 'Personal Banking')
@section('content')
    @include('home.partials.modern-page', ['page' => $page])
@endsection
