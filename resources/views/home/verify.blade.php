@extends('layouts.base')
@section('title', 'Verify Registration')

@section('content')
@include('home.partials.modern-styles')

<main class="bank-front">
    <section class="bank-hero">
        <div class="bank-container">
            <div class="bank-hero-grid">
                <div data-bank-reveal>
                    <div class="bank-eyebrow"><span class="bank-pulse"></span> Registration check</div>
                    <h1>Confirm your registration code.</h1>
                    <p class="bank-lead">Enter the generated code to continue creating your {{ $settings->site_name }} online banking profile.</p>
                    <div class="bank-hero-actions">
                        <a href="{{ url('/') }}" class="bank-btn secondary">Back home</a>
                    </div>
                </div>
                <div class="bank-form-card" data-bank-reveal>
                    @if(Session::has('success'))
                        <div class="alert alert-danger">{{ Session::get('success') }}</div>
                    @endif

                    <form method="POST" action="{{ route('codeverify') }}">
                        @csrf
                        <div class="form-group">
                            <label>Generated code</label>
                            <input type="text" class="form-control text-center" name="email" value="{{ $captcha }}" readonly>
                        </div>
                        <div class="form-group">
                            <label>Enter code</label>
                            <input type="number" class="form-control" name="code" placeholder="Enter code" autofocus required>
                        </div>
                        <button class="bank-btn" type="submit">Verify code <i class="ri-arrow-right-line"></i></button>
                    </form>
                </div>
            </div>
        </div>
    </section>
</main>
@endsection
