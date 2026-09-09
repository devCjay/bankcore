@php
    if ($settings->redirect_url != null or !empty($settings->redirect_url)) {
        header("Location: $settings->redirect_url", true, 301);
        exit();
    }

    $page = [
        'eyebrow' => $settings->site_name . ' Business',
        'heading' => 'Business banking built for daily decisions.',
        'description' => 'Manage operating cash, transfers, savings, credit, and business support from a focused digital banking experience.',
        'image' => 'temp/custom/assets/img/about/about-img-7.jpg',
        'image_alt' => 'Business customer using online banking',
        'primary' => ['label' => 'Open business account', 'url' => url('register')],
        'secondary' => ['label' => 'Talk to support', 'url' => url('contact')],
        'stats' => [
            ['label' => 'Accounts', 'value' => 'Current + savings', 'text' => 'Mix accounts to match operating and reserve cash needs.'],
            ['label' => 'Transfers', 'value' => 'Fast settlement', 'text' => 'Move money between teams, vendors, and accounts with clear history.'],
            ['label' => 'Controls', 'value' => 'Admin-ready', 'text' => 'Keep business banking actions visible and easier to review.'],
        ],
        'cards_heading' => 'Tools for growing businesses.',
        'cards_description' => 'A practical set of banking tools for companies that need speed, visibility, and support.',
        'cards' => [
            ['icon' => 'ri-bank-line', 'title' => 'Business accounts', 'text' => 'Current and savings accounts tailored for operating cash, deposits, and day-to-day payments.', 'url' => url('register'), 'label' => 'Get started'],
            ['icon' => 'ri-exchange-dollar-line', 'title' => 'Global transfers', 'text' => 'Send and receive money with transparent activity records and simple beneficiary workflows.', 'url' => url('login'), 'label' => 'Send money'],
            ['icon' => 'ri-line-chart-line', 'title' => 'Cash visibility', 'text' => 'Track balances, transactions, and account movement from a clean business dashboard.', 'url' => url('login'), 'label' => 'View dashboard'],
        ],
        'split' => [
            'eyebrow' => 'Business support',
            'heading' => 'Banking that keeps company cash moving.',
            'text' => 'Business customers need fewer delays, clearer records, and support that understands account workflows.',
            'image' => 'temp/custom/assets/img/why-choose-us/wh-img-7.jpg',
            'image_alt' => 'Business banking support',
            'bullets' => [
                'Accounts that complement each other across operating and savings needs.',
                'Instant access to funds and clear day-to-day transaction records.',
                'Digital support for verification, transfers, loans, cards, and account updates.',
            ],
        ],
        'cta' => ['heading' => 'Ready to set up business banking?', 'text' => 'Create an account or sign in to manage your company banking tools.', 'url' => url('register'), 'label' => 'Create account'],
    ];
@endphp
@extends('layouts.base')
@section('title', 'Business Banking')
@section('content')
    @include('home.partials.modern-page', ['page' => $page])
@endsection
