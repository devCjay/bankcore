@php
    if ($settings->redirect_url != null or !empty($settings->redirect_url)) {
        header("Location: $settings->redirect_url", true, 301);
        exit();
    }

    $page = [
        'eyebrow' => 'About ' . $settings->site_name,
        'heading' => 'Digital banking, simplified and humanized.',
        'description' => $settings->site_name . ' brings everyday banking, business tools, transfers, cards, loans, and support into one clean online experience.',
        'image' => 'temp/custom/assets/img/about/about-img-4.jpg',
        'image_alt' => 'Digital banking team',
        'primary' => ['label' => 'Start with us', 'url' => url('register')],
        'secondary' => ['label' => 'Contact support', 'url' => url('contact')],
        'stats' => [
            ['label' => 'Focus', 'value' => 'Digital-first', 'text' => 'Banking workflows designed for online customers and modern service teams.'],
            ['label' => 'Experience', 'value' => 'Fast + clear', 'text' => 'Cleaner account access, stronger hierarchy, and fewer distractions.'],
            ['label' => 'Support', 'value' => 'Always close', 'text' => 'Help is connected to account, verification, card, and transfer needs.'],
        ],
        'cards_heading' => 'What we bring together.',
        'cards_description' => 'The platform keeps the important banking tasks connected without making the interface feel heavy.',
        'cards' => [
            ['icon' => 'ri-smartphone-line', 'title' => 'Online banking', 'text' => 'Responsive tools for account balances, deposits, withdrawals, transfers, and alerts.', 'url' => url('personal'), 'label' => 'Personal banking'],
            ['icon' => 'ri-building-4-line', 'title' => 'Business banking', 'text' => 'Practical account and cash movement tools for companies and teams.', 'url' => url('business'), 'label' => 'Business banking'],
            ['icon' => 'ri-shield-check-line', 'title' => 'Protected workflows', 'text' => 'Verification, notifications, and account controls help keep activity visible.', 'url' => url('login'), 'label' => 'Sign in'],
        ],
        'split' => [
            'eyebrow' => 'Why choose us',
            'heading' => 'Built for banking customers who need clarity.',
            'text' => 'The experience is designed around everyday financial decisions: what changed, what needs attention, and what action comes next.',
            'image' => 'temp/custom/assets/img/why-choose-us/wh-img-7.jpg',
            'image_alt' => 'Customer banking support',
            'bullets' => [
                'Clear records for account activity and money movement.',
                'Tools for personal customers, businesses, cardholders, and loan applicants.',
                'A consistent interface across public pages and authenticated banking areas.',
            ],
        ],
        'cta' => ['heading' => 'Ready to bank with ' . $settings->site_name . '?', 'text' => 'Open an account or sign in to continue with online banking.', 'url' => url('register'), 'label' => 'Create account'],
    ];
@endphp
@extends('layouts.base')
@section('title', 'About Us')
@section('content')
    @include('home.partials.modern-page', ['page' => $page])
@endsection
