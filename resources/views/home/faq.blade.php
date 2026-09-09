@php
    if ($settings->redirect_url != null or !empty($settings->redirect_url)) {
        header("Location: $settings->redirect_url", true, 301);
        exit();
    }
@endphp
@extends('layouts.base')
@section('title', 'FAQs')

@section('content')
@include('home.partials.modern-styles')

<main class="bank-front">
    <section class="bank-hero">
        <div class="bank-container">
            <div class="bank-hero-grid">
                <div data-bank-reveal>
                    <div class="bank-eyebrow"><span class="bank-pulse"></span> Help center</div>
                    <h1>Questions about online banking?</h1>
                    <p class="bank-lead">Find answers about accounts, transfers, cards, loans, verification, and support at {{ $settings->site_name }}.</p>
                    <div class="bank-hero-actions">
                        <a href="{{ url('contact') }}" class="bank-btn">Contact support <i class="ri-arrow-right-line"></i></a>
                        <a href="{{ url('login') }}" class="bank-btn secondary">Open banking</a>
                    </div>
                </div>
                <div class="bank-visual-card" data-bank-reveal>
                    <img src="{{ asset('temp/custom/assets/img/about/about-img-2.jpg') }}" alt="Banking support">
                </div>
            </div>
        </div>
    </section>

    <section class="bank-section">
        <div class="bank-container">
            <div class="bank-section-head" data-bank-reveal>
                <h2>Frequently asked questions.</h2>
                <p>Quick answers for common customer questions.</p>
            </div>

            <div class="bank-legal" data-bank-reveal>
                @forelse($faqs as $faq)
                    <h3>{{ $faq->question ?? $faq->title ?? 'Question' }}</h3>
                    <p>{!! $faq->answer ?? $faq->description ?? '' !!}</p>
                @empty
                    <h3>No FAQs are configured yet.</h3>
                    <p>Please contact support for help with your account or banking questions.</p>
                @endforelse
            </div>
        </div>
    </section>
</main>
@endsection
