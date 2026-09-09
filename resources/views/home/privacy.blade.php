@php
    if ($settings->redirect_url != null or !empty($settings->redirect_url)) {
        header("Location: $settings->redirect_url", true, 301);
        exit();
    }
@endphp
@extends('layouts.base')
@section('title', 'Privacy Policy')

@section('content')
@include('home.partials.modern-styles')

<main class="bank-front">
    <section class="bank-hero">
        <div class="bank-container">
            <div data-bank-reveal>
                <div class="bank-eyebrow"><span class="bank-pulse"></span> {{ $settings->site_name }} Privacy</div>
                <h1>Privacy policy.</h1>
                <p class="bank-lead">Review how {{ $settings->site_name }} explains personal information, banking data, and website use.</p>
            </div>
        </div>
    </section>

    <section class="bank-section">
        <div class="bank-container">
            <article class="bank-legal" data-bank-reveal>
                @if(isset($terms) && $terms)
                    {!! $terms->description !!}
                @else
                    <h3>Privacy information</h3>
                    <p>Privacy policy content is not currently configured.</p>
                @endif
            </article>
        </div>
    </section>
</main>
@endsection
