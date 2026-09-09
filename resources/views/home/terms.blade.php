@php
    if ($settings->redirect_url != null or !empty($settings->redirect_url)) {
        header("Location: $settings->redirect_url", true, 301);
        exit();
    }
@endphp
@extends('layouts.base')
@section('title', 'Terms of Service')

@section('content')
@include('home.partials.modern-styles')

<main class="bank-front">
    <section class="bank-hero">
        <div class="bank-container">
            <div data-bank-reveal>
                <div class="bank-eyebrow"><span class="bank-pulse"></span> {{ $settings->site_name }} Policy</div>
                <h1>Terms of service and data use.</h1>
                <p class="bank-lead">How {{ $settings->site_name }} handles website use, personal information, and digital banking service access.</p>
            </div>
        </div>
    </section>

    <section class="bank-section">
        <div class="bank-container">
            <article class="bank-legal" data-bank-reveal>
                <h3>Our Terms Of Data</h3>
                <p>We are {{ $settings->site_name }} Private Bank, the data controller. Contact our Data Protection Officer if you have questions about the information we hold or how it is handled.</p>
                <p>This Privacy Statement explains how we obtain, use, and keep your personal data safe in relation to the {{ $settings->site_name }} website.</p>
                <p>Your personal data is data which by itself or with other data available to us can be used to identify you.</p>
                <p>We are committed to keeping your personal information safe in accordance with applicable data protection laws.</p>

                <h3>The types of personal data we collect and use</h3>
                <p>The types of personal data we capture and use will depend on what you are doing on the website. If you become a customer, we will also use it to manage the account, policy, or service you have applied for.</p>
                <ul class="bank-check-list">
                    <li><i class="ri-check-line"></i><span>Full name and personal contact details, including address history, email address, and phone numbers.</span></li>
                    <li><i class="ri-check-line"></i><span>Date of birth or age where eligibility checks are required.</span></li>
                    <li><i class="ri-check-line"></i><span>Financial details, salary information, account information, and product or service records.</span></li>
                    <li><i class="ri-check-line"></i><span>Technical access details such as device, browser, IP address, and related activity records.</span></li>
                </ul>

                <h3>How this supports banking services</h3>
                <p>We use data to operate digital banking, process requests, support customers, protect accounts, review eligibility, prevent misuse, and comply with legal or regulatory requirements.</p>
            </article>
        </div>
    </section>
</main>
@endsection
