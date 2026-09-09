@php
    if ($settings->redirect_url != null or !empty($settings->redirect_url)) {
        header("Location: $settings->redirect_url", true, 301);
        exit();
    }

    $page = [
        'eyebrow' => $settings->site_name . ' Loans',
        'heading' => 'Financing options for real life plans.',
        'description' => 'Explore loan paths for vehicles, homes, business needs, and personal situations from a cleaner digital banking flow.',
        'image' => 'temp/custom/assets/img/about/about-img-3.jpg',
        'image_alt' => 'Loan consultation',
        'primary' => ['label' => 'Apply online', 'url' => url('login')],
        'secondary' => ['label' => 'Contact support', 'url' => url('contact')],
        'stats' => [
            ['label' => 'Loan types', 'value' => '4+', 'text' => 'Vehicle, home, business, medical, and personal financing paths.'],
            ['label' => 'Review', 'value' => 'Digital', 'text' => 'Start the process from your account and keep activity visible.'],
            ['label' => 'Guidance', 'value' => 'Available', 'text' => 'Support is close when loan terms or next steps need review.'],
        ],
        'cards_heading' => 'Loan products with clear next steps.',
        'cards_description' => 'Customers can understand available options and move into an application flow quickly.',
        'cards' => [
            ['icon' => 'ri-car-line', 'title' => 'Vehicle loans', 'text' => 'Pre-qualify for vehicle financing or refinance an existing auto loan.', 'url' => url('login'), 'label' => 'Start application'],
            ['icon' => 'ri-home-4-line', 'title' => 'Home loans', 'text' => 'Request support for home financing with a clear account-connected workflow.', 'url' => url('contact'), 'label' => 'Ask support'],
            ['icon' => 'ri-briefcase-4-line', 'title' => 'Business loans', 'text' => 'Find financing options that support operating needs and growth plans.', 'url' => url('business'), 'label' => 'Business banking'],
        ],
        'split' => [
            'eyebrow' => 'Loan readiness',
            'heading' => 'Understand terms before you move forward.',
            'text' => 'A good loan workflow should help customers see the product, requirements, and account impact before committing.',
            'image' => 'temp/custom/assets/img/why-choose-us/wh-img-6.jpg',
            'image_alt' => 'Banking advisor reviewing loan options',
            'bullets' => [
                'Start loan requests from online banking.',
                'Keep applications and account messages visible in one place.',
                'Use support for verification, documentation, and next-step guidance.',
            ],
        ],
        'cta' => ['heading' => 'Ready to start a loan request?', 'text' => 'Sign in to begin or contact support for guidance before applying.', 'url' => url('login'), 'label' => 'Sign in'],
    ];
@endphp
@extends('layouts.base')
@section('title', 'Loans')
@section('content')
    @include('home.partials.modern-page', ['page' => $page])
@endsection
