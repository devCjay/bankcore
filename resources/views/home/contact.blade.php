@php
    if ($settings->redirect_url != null or !empty($settings->redirect_url)) {
        header("Location: $settings->redirect_url", true, 301);
        exit();
    }
@endphp
@extends('layouts.base')
@section('title', 'Contact Us')

@section('content')
@include('home.partials.modern-styles')

<main class="bank-front">
    <section class="bank-hero">
        <div class="bank-container">
            <div class="bank-hero-grid">
                <div data-bank-reveal>
                    <div class="bank-eyebrow"><span class="bank-pulse"></span> {{ $settings->site_name }} Support</div>
                    <h1>Support for your banking questions.</h1>
                    <p class="bank-lead">Reach the team for account, transfer, card, loan, verification, or product support.</p>
                    <div class="bank-hero-actions">
                        <a href="{{ url('login') }}" class="bank-btn">Open online banking <i class="ri-arrow-right-line"></i></a>
                        <a href="{{ url('register') }}" class="bank-btn secondary">Create account</a>
                    </div>
                </div>
                <div class="bank-visual-card" data-bank-reveal>
                    <img src="{{ asset('temp/custom/images/support.gif') }}" alt="Customer support">
                </div>
            </div>
        </div>
    </section>

    <section class="bank-section">
        <div class="bank-container">
            <div class="bank-grid">
                <article class="bank-card" data-bank-reveal>
                    <span class="bank-icon"><i class="ri-map-pin-line"></i></span>
                    <h3>Our location</h3>
                    <p>{{ $settings->address }}</p>
                </article>
                <article class="bank-card" data-bank-reveal>
                    <span class="bank-icon"><i class="ri-mail-send-line"></i></span>
                    <h3>Email us</h3>
                    <p>{{ $settings->contact_email }}<br>{{ $settings->emailfrom }}</p>
                </article>
                <article class="bank-card" data-bank-reveal>
                    <span class="bank-icon"><i class="ri-phone-line"></i></span>
                    <h3>Phone support</h3>
                    <p>VIP ONLY<br>VVIP DIAL</p>
                </article>
            </div>
        </div>
    </section>

    <section class="bank-section bank-band">
        <div class="bank-container">
            <div class="bank-split">
                <div data-bank-reveal>
                    <div class="bank-eyebrow"><span class="bank-pulse"></span> Message us</div>
                    <h2>Send a secure support request.</h2>
                    <p style="margin-top:18px;">Use the form for product questions, account help, or support follow-up.</p>
                    <ul class="bank-check-list">
                        <li><i class="ri-check-line"></i><span>Account and profile support.</span></li>
                        <li><i class="ri-check-line"></i><span>Transfer, card, and loan assistance.</span></li>
                        <li><i class="ri-check-line"></i><span>Verification and onboarding questions.</span></li>
                    </ul>
                </div>
                <div class="bank-form-card" data-bank-reveal>
                    @if(Session::has('success'))
                        <div class="alert alert-success">{{ Session::get('success') }}</div>
                    @endif
                    @if(Session::has('message'))
                        <div class="alert alert-danger">{{ Session::get('message') }}</div>
                    @endif

                    <form method="POST" action="{{ route('homesendcontact') }}">
                        @csrf
                        <div class="form-group">
                            <input type="text" name="fullname" placeholder="Name*" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <input type="email" name="email" class="form-control" required placeholder="Email*">
                        </div>
                        <div class="form-group">
                            <input type="text" name="phone" placeholder="Phone*" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <textarea name="message" placeholder="Your message*" class="form-control" rows="5" required></textarea>
                        </div>
                        <div class="form-group form-check">
                            <input name="gridCheck" value="I agree to the terms and privacy policy." class="form-check-input" type="checkbox" id="gridCheck" required>
                            <label class="form-check-label" for="gridCheck">
                                I agree to the <a class="bank-card-link" href="{{ url('terms') }}">Terms &amp; Conditions</a> and <a class="bank-card-link" href="{{ url('privacy') }}">Privacy Policy</a>
                            </label>
                        </div>
                        <button type="submit" class="bank-btn">Send message <i class="ri-arrow-right-line"></i></button>
                    </form>
                </div>
            </div>
        </div>
    </section>
</main>
@endsection
