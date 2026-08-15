@extends('layouts.base')
@section('title', 'Home')

@section('content')
<style>
    :root {
        --bank-bg: #f7fafc;
        --bank-surface: rgba(255, 255, 255, 0.86);
        --bank-surface-strong: #ffffff;
        --bank-text: #0d1b2a;
        --bank-muted: #5c6b7a;
        --bank-line: rgba(13, 27, 42, 0.1);
        --bank-primary: #13b981;
        --bank-primary-strong: #079667;
        --bank-secondary: #2563eb;
        --bank-accent: #f6b73c;
        --bank-shadow: 0 24px 70px rgba(25, 47, 79, 0.12);
        --bank-glow: 0 0 0 1px rgba(19, 185, 129, 0.16), 0 18px 55px rgba(19, 185, 129, 0.22);
    }

    body.bank-dark {
        --bank-bg: #071118;
        --bank-surface: rgba(12, 24, 34, 0.84);
        --bank-surface-strong: #0d1b25;
        --bank-text: #f3f8fb;
        --bank-muted: #a6b7c4;
        --bank-line: rgba(255, 255, 255, 0.12);
        --bank-primary: #2ee59d;
        --bank-primary-strong: #13b981;
        --bank-secondary: #75a7ff;
        --bank-accent: #ffd36b;
        --bank-shadow: 0 28px 80px rgba(0, 0, 0, 0.38);
        --bank-glow: 0 0 0 1px rgba(46, 229, 157, 0.2), 0 18px 60px rgba(46, 229, 157, 0.18);
        background: var(--bank-bg);
    }

    body.bank-modern-home,
    body.bank-modern-home .page-wrapper {
        background: var(--bank-bg);
        color: var(--bank-text);
        overflow-x: hidden;
    }

    .preloader.js-preloader {
        display: none !important;
        visibility: hidden !important;
        opacity: 0 !important;
    }

    body.bank-modern-home .header-wrap {
        position: sticky;
        top: 0;
        z-index: 1000;
        background: rgba(255, 255, 255, 0.88) !important;
        border-bottom: 1px solid var(--bank-line);
        box-shadow: 0 16px 45px rgba(15, 23, 42, 0.08);
        backdrop-filter: blur(18px);
    }

    body.bank-dark.bank-modern-home .header-wrap {
        background: rgba(7, 17, 24, 0.9) !important;
    }

    body.bank-modern-home .header-bottom,
    body.bank-modern-home .navbar {
        background: transparent !important;
    }

    body.bank-modern-home .navbar-brand {
        display: inline-flex;
        align-items: center;
        min-width: 150px;
        min-height: 54px;
        color: var(--bank-text) !important;
        font-size: 0;
        font-weight: 900;
        letter-spacing: 0;
    }

    body.bank-modern-home .navbar-brand:after {
        content: "{{ $settings->site_name }}";
        display: none;
        color: var(--bank-text);
        font-size: 20px;
        line-height: 1;
    }

    body.bank-modern-home .navbar-brand.bank-logo-fallback:after {
        display: inline-block;
    }

    body.bank-modern-home .navbar-brand img {
        max-height: 54px;
        width: auto;
        object-fit: contain;
    }

    body.bank-modern-home .navbar-brand.bank-logo-fallback img {
        display: none !important;
    }

    body.bank-modern-home .main-menu-wrap .nav-link,
    body.bank-modern-home .navbar-light .navbar-nav .nav-link,
    body.bank-modern-home .other-options .user-login span,
    body.bank-modern-home .other-options .user-login i {
        color: var(--bank-text) !important;
        font-weight: 700;
    }

    body.bank-modern-home .main-menu-wrap .nav-link:hover,
    body.bank-modern-home .navbar-light .navbar-nav .nav-link.active {
        color: var(--bank-primary-strong) !important;
    }

    body.bank-modern-home .btn.style1,
    .bank-btn {
        display: inline-flex;
        align-items: center;
        justify-content: center;
        gap: 10px;
        min-height: 48px;
        padding: 0 22px;
        border: 0;
        border-radius: 8px;
        background: linear-gradient(135deg, var(--bank-primary), var(--bank-secondary));
        color: #ffffff !important;
        font-weight: 800;
        letter-spacing: 0;
        box-shadow: var(--bank-glow);
        transition: transform 180ms ease, box-shadow 180ms ease, filter 180ms ease;
    }

    body.bank-modern-home .btn.style1:hover,
    .bank-btn:hover {
        color: #ffffff !important;
        transform: translateY(-2px);
        filter: saturate(1.08);
    }

    .bank-home {
        min-height: 100vh;
        overflow: hidden;
        font-family: Inter, ui-sans-serif, system-ui, -apple-system, BlinkMacSystemFont, "Segoe UI", sans-serif;
    }

    .bank-container {
        width: min(1180px, calc(100% - 32px));
        margin: 0 auto;
    }

    .bank-section {
        padding: 96px 0;
        position: relative;
    }

    .bank-section.tight {
        padding: 64px 0;
    }

    .bank-hero {
        padding: 110px 0 82px;
        position: relative;
        isolation: isolate;
        background:
            linear-gradient(120deg, rgba(19, 185, 129, 0.12), transparent 36%),
            linear-gradient(220deg, rgba(37, 99, 235, 0.12), transparent 34%);
    }

    .bank-hero:before {
        content: "";
        position: absolute;
        inset: 0;
        z-index: -1;
        background-image:
            linear-gradient(var(--bank-line) 1px, transparent 1px),
            linear-gradient(90deg, var(--bank-line) 1px, transparent 1px);
        background-size: 54px 54px;
        mask-image: linear-gradient(to bottom, rgba(0, 0, 0, 0.8), transparent 82%);
        opacity: 0.5;
    }

    .bank-hero-grid {
        display: grid;
        grid-template-columns: minmax(0, 1fr) minmax(360px, 0.82fr);
        gap: 54px;
        align-items: center;
    }

    .bank-hero-grid > *,
    .bank-grid > *,
    .bank-rates > *,
    .bank-steps > *,
    .bank-testimonials > * {
        min-width: 0;
    }

    .bank-eyebrow {
        display: inline-flex;
        align-items: center;
        gap: 10px;
        margin-bottom: 18px;
        padding: 8px 12px;
        border: 1px solid var(--bank-line);
        border-radius: 999px;
        background: var(--bank-surface);
        color: var(--bank-primary-strong);
        font-size: 13px;
        font-weight: 800;
        text-transform: uppercase;
        letter-spacing: 0;
        box-shadow: 0 12px 32px rgba(15, 23, 42, 0.06);
    }

    .bank-pulse {
        width: 9px;
        height: 9px;
        border-radius: 50%;
        background: var(--bank-primary);
        box-shadow: 0 0 0 0 rgba(19, 185, 129, 0.52);
        animation: bankPulse 1.8s ease-out infinite;
    }

    .bank-hero h1 {
        margin: 0;
        color: var(--bank-text);
        font-size: clamp(44px, 6vw, 82px);
        line-height: 0.96;
        letter-spacing: 0;
        max-width: 820px;
    }

    .bank-hero h1 .bank-accent-word {
        color: var(--bank-primary-strong);
    }

    .bank-hero-line {
        display: inline;
    }

    .bank-lead {
        margin: 24px 0 0;
        max-width: 690px;
        color: var(--bank-muted);
        font-size: 18px;
        line-height: 1.75;
    }

    .bank-hero-actions {
        display: flex;
        flex-wrap: wrap;
        gap: 14px;
        margin-top: 34px;
    }

    .bank-btn.secondary {
        background: var(--bank-surface-strong);
        color: var(--bank-text) !important;
        border: 1px solid var(--bank-line);
        box-shadow: 0 14px 34px rgba(15, 23, 42, 0.08);
    }

    .bank-btn.secondary:hover {
        color: var(--bank-primary-strong) !important;
    }

    .bank-trust-row {
        display: grid;
        grid-template-columns: repeat(3, minmax(0, 1fr));
        gap: 12px;
        margin-top: 40px;
        max-width: 660px;
    }

    .bank-stat {
        padding: 18px;
        border: 1px solid var(--bank-line);
        border-radius: 8px;
        background: var(--bank-surface);
        box-shadow: 0 14px 40px rgba(15, 23, 42, 0.07);
    }

    .bank-stat strong {
        display: block;
        color: var(--bank-text);
        font-size: 24px;
        line-height: 1;
    }

    .bank-stat span {
        display: block;
        margin-top: 8px;
        color: var(--bank-muted);
        font-size: 13px;
        line-height: 1.35;
    }

    .bank-device {
        position: relative;
        min-height: 620px;
        max-width: 100%;
    }

    .bank-device,
    .bank-device * {
        box-sizing: border-box;
    }

    .bank-card-shell {
        position: absolute;
        right: 0;
        top: 8px;
        width: min(430px, 100%);
        border: 1px solid rgba(255, 255, 255, 0.22);
        border-radius: 28px;
        background: linear-gradient(145deg, #0b2631, #102a4a 54%, #143f36);
        box-shadow: 0 34px 90px rgba(7, 17, 24, 0.34);
        color: #ffffff;
        overflow: hidden;
        animation: bankFloat 5.5s ease-in-out infinite;
    }

    .bank-card-shell:before {
        content: "";
        position: absolute;
        inset: 0;
        background: linear-gradient(105deg, transparent 22%, rgba(255, 255, 255, 0.2), transparent 46%);
        transform: translateX(-120%);
        animation: bankSweep 5s ease-in-out infinite;
    }

    .bank-card-visual {
        padding: 28px;
        position: relative;
        min-height: 256px;
    }

    .bank-card-top,
    .bank-card-bottom {
        display: flex;
        align-items: center;
        justify-content: space-between;
        gap: 16px;
    }

    .bank-chip {
        width: 52px;
        height: 40px;
        border-radius: 8px;
        background: linear-gradient(135deg, #ffe6a7, #d59a2d);
        box-shadow: inset 0 0 0 1px rgba(0, 0, 0, 0.16);
    }

    .bank-card-balance {
        margin-top: 54px;
    }

    .bank-card-balance span,
    .bank-card-bottom span {
        display: block;
        color: rgba(255, 255, 255, 0.68);
        font-size: 12px;
        text-transform: uppercase;
        font-weight: 800;
    }

    .bank-card-balance strong {
        display: block;
        margin-top: 8px;
        font-size: 34px;
        letter-spacing: 0;
    }

    .bank-card-bottom {
        margin-top: 38px;
    }

    .bank-card-bottom strong {
        display: block;
        margin-top: 6px;
        font-size: 16px;
    }

    .bank-phone {
        position: absolute;
        left: 8px;
        bottom: 0;
        width: min(310px, 72%);
        padding: 16px;
        border: 1px solid var(--bank-line);
        border-radius: 34px;
        background: var(--bank-surface-strong);
        box-shadow: var(--bank-shadow);
        transform: rotate(-3deg);
    }

    .bank-phone-screen {
        border-radius: 24px;
        overflow: hidden;
        background: var(--bank-bg);
        color: var(--bank-text);
    }

    .bank-phone-hero {
        height: 170px;
        background: url("{{ asset('temp/custom/assets/img/hero/hero-img-5.jpg') }}") center/cover;
    }

    .bank-phone-content {
        padding: 18px;
    }

    .bank-mini-row {
        display: flex;
        justify-content: space-between;
        gap: 12px;
        padding: 12px 0;
        border-bottom: 1px solid var(--bank-line);
        color: var(--bank-muted);
        font-size: 13px;
    }

    .bank-mini-row strong {
        color: var(--bank-text);
    }

    .bank-floating-panel {
        position: absolute;
        right: 18px;
        bottom: 62px;
        width: 250px;
        padding: 18px;
        border: 1px solid var(--bank-line);
        border-radius: 8px;
        background: var(--bank-surface);
        box-shadow: var(--bank-glow);
        backdrop-filter: blur(18px);
        animation: bankFloatAlt 6s ease-in-out infinite;
    }

    .bank-floating-panel h3 {
        margin: 0 0 12px;
        color: var(--bank-text);
        font-size: 15px;
    }

    .bank-progress {
        height: 8px;
        border-radius: 999px;
        background: rgba(127, 144, 160, 0.22);
        overflow: hidden;
    }

    .bank-progress span {
        display: block;
        height: 100%;
        width: 74%;
        border-radius: inherit;
        background: linear-gradient(90deg, var(--bank-primary), var(--bank-secondary));
    }

    .bank-section-head {
        display: flex;
        align-items: flex-end;
        justify-content: space-between;
        gap: 30px;
        margin-bottom: 34px;
    }

    .bank-section-head h2 {
        margin: 0;
        max-width: 690px;
        color: var(--bank-text);
        font-size: clamp(32px, 4vw, 54px);
        line-height: 1.04;
        letter-spacing: 0;
    }

    .bank-section-head p {
        margin: 0;
        max-width: 390px;
        color: var(--bank-muted);
        line-height: 1.7;
    }

    .bank-grid {
        display: grid;
        grid-template-columns: repeat(3, minmax(0, 1fr));
        gap: 18px;
    }

    .bank-feature-card,
    .bank-glass-card,
    .bank-testimonial,
    .bank-step,
    .bank-rate-card {
        border: 1px solid var(--bank-line);
        border-radius: 8px;
        background: var(--bank-surface);
        box-shadow: 0 18px 48px rgba(15, 23, 42, 0.08);
        backdrop-filter: blur(16px);
        transition: transform 220ms ease, box-shadow 220ms ease, border-color 220ms ease;
    }

    .bank-feature-card:hover,
    .bank-glass-card:hover,
    .bank-testimonial:hover,
    .bank-rate-card:hover {
        transform: translateY(-5px);
        border-color: rgba(19, 185, 129, 0.34);
        box-shadow: var(--bank-glow);
    }

    .bank-feature-card {
        min-height: 280px;
        padding: 28px;
        display: flex;
        flex-direction: column;
    }

    .bank-icon {
        width: 52px;
        height: 52px;
        display: inline-flex;
        align-items: center;
        justify-content: center;
        border-radius: 8px;
        background: rgba(19, 185, 129, 0.12);
        color: var(--bank-primary-strong);
        font-size: 26px;
        box-shadow: inset 0 0 0 1px rgba(19, 185, 129, 0.14);
    }

    .bank-feature-card h3,
    .bank-glass-card h3,
    .bank-step h3,
    .bank-testimonial h3 {
        margin: 22px 0 10px;
        color: var(--bank-text);
        font-size: 22px;
        line-height: 1.2;
    }

    .bank-feature-card p,
    .bank-glass-card p,
    .bank-step p,
    .bank-testimonial p {
        margin: 0;
        color: var(--bank-muted);
        line-height: 1.7;
    }

    .bank-card-link {
        margin-top: auto;
        padding-top: 24px;
        color: var(--bank-primary-strong);
        font-weight: 800;
    }

    .bank-band {
        background:
            linear-gradient(135deg, rgba(19, 185, 129, 0.12), transparent 48%),
            linear-gradient(45deg, rgba(246, 183, 60, 0.12), transparent 45%);
        border-top: 1px solid var(--bank-line);
        border-bottom: 1px solid var(--bank-line);
    }

    .bank-security {
        display: grid;
        grid-template-columns: 0.9fr 1.1fr;
        gap: 42px;
        align-items: center;
    }

    .bank-image-stack {
        position: relative;
        min-height: 500px;
    }

    .bank-image-card {
        position: absolute;
        overflow: hidden;
        border-radius: 8px;
        border: 1px solid var(--bank-line);
        box-shadow: var(--bank-shadow);
    }

    .bank-image-card img {
        width: 100%;
        height: 100%;
        object-fit: cover;
        display: block;
    }

    .bank-image-card.large {
        inset: 0 70px 80px 0;
    }

    .bank-image-card.small {
        right: 0;
        bottom: 0;
        width: 48%;
        height: 220px;
        box-shadow: var(--bank-glow);
    }

    .bank-security-list {
        display: grid;
        gap: 14px;
        margin-top: 28px;
    }

    .bank-glass-card {
        padding: 22px;
        display: grid;
        grid-template-columns: 52px 1fr;
        gap: 16px;
        align-items: start;
    }

    .bank-glass-card h3 {
        margin-top: 0;
    }

    .bank-rates {
        display: grid;
        grid-template-columns: 1fr 1fr 1fr 1.25fr;
        gap: 14px;
    }

    .bank-rate-card {
        padding: 20px;
    }

    .bank-rate-card span {
        color: var(--bank-muted);
        font-size: 13px;
        font-weight: 800;
    }

    .bank-rate-card strong {
        display: block;
        margin-top: 8px;
        color: var(--bank-text);
        font-size: 28px;
        line-height: 1;
    }

    .bank-rate-card em {
        display: block;
        margin-top: 12px;
        color: var(--bank-primary-strong);
        font-style: normal;
        font-weight: 800;
        font-size: 13px;
    }

    .bank-rate-card.highlight {
        background: linear-gradient(135deg, rgba(19, 185, 129, 0.95), rgba(37, 99, 235, 0.95));
        color: #ffffff;
        box-shadow: var(--bank-glow);
    }

    .bank-rate-card.highlight span,
    .bank-rate-card.highlight strong,
    .bank-rate-card.highlight em {
        color: #ffffff;
    }

    .bank-steps {
        display: grid;
        grid-template-columns: repeat(4, minmax(0, 1fr));
        gap: 16px;
    }

    .bank-step {
        padding: 24px;
    }

    .bank-step-number {
        width: 42px;
        height: 42px;
        display: inline-flex;
        align-items: center;
        justify-content: center;
        border-radius: 8px;
        background: var(--bank-text);
        color: var(--bank-bg);
        font-weight: 900;
    }

    .bank-app {
        display: grid;
        grid-template-columns: 1.05fr 0.95fr;
        gap: 42px;
        align-items: center;
    }

    .bank-app-panel {
        border: 1px solid var(--bank-line);
        border-radius: 8px;
        overflow: hidden;
        background: var(--bank-surface-strong);
        box-shadow: var(--bank-shadow);
    }

    .bank-app-panel img {
        width: 100%;
        min-height: 460px;
        object-fit: cover;
        display: block;
    }

    .bank-check-list {
        display: grid;
        gap: 13px;
        margin: 30px 0;
        padding: 0;
        list-style: none;
    }

    .bank-check-list li {
        display: flex;
        gap: 12px;
        align-items: flex-start;
        color: var(--bank-muted);
        line-height: 1.55;
    }

    .bank-check-list i {
        color: var(--bank-primary-strong);
        font-size: 20px;
        line-height: 1.2;
    }

    .bank-testimonials {
        display: grid;
        grid-template-columns: repeat(3, minmax(0, 1fr));
        gap: 18px;
    }

    .bank-testimonial {
        padding: 26px;
    }

    .bank-avatar {
        display: flex;
        align-items: center;
        gap: 14px;
        margin-bottom: 18px;
    }

    .bank-avatar img {
        width: 52px;
        height: 52px;
        border-radius: 50%;
        object-fit: cover;
    }

    .bank-avatar strong,
    .bank-avatar span {
        display: block;
    }

    .bank-avatar strong {
        color: var(--bank-text);
    }

    .bank-avatar span {
        color: var(--bank-muted);
        font-size: 13px;
    }

    .bank-cta {
        border: 1px solid var(--bank-line);
        border-radius: 8px;
        padding: 46px;
        display: flex;
        align-items: center;
        justify-content: space-between;
        gap: 28px;
        background:
            linear-gradient(135deg, rgba(19, 185, 129, 0.18), transparent 52%),
            var(--bank-surface);
        box-shadow: var(--bank-shadow);
    }

    .bank-cta h2 {
        margin: 0;
        color: var(--bank-text);
        font-size: clamp(30px, 4vw, 50px);
        line-height: 1.06;
    }

    .bank-cta p {
        margin: 14px 0 0;
        color: var(--bank-muted);
        line-height: 1.7;
        max-width: 650px;
    }

    .bank-theme-toggle {
        position: fixed;
        right: 18px;
        bottom: 86px;
        z-index: 1001;
        width: 54px;
        height: 54px;
        display: inline-flex;
        align-items: center;
        justify-content: center;
        border: 1px solid var(--bank-line);
        border-radius: 999px;
        background: var(--bank-surface-strong);
        color: var(--bank-text);
        box-shadow: var(--bank-glow);
        cursor: pointer;
        transition: transform 180ms ease;
    }

    .bank-theme-toggle:hover {
        transform: translateY(-3px);
    }

    .bank-theme-toggle i {
        font-size: 22px;
    }

    [data-bank-reveal] {
        opacity: 0;
        transform: translateY(24px);
        transition: opacity 700ms ease, transform 700ms ease;
    }

    [data-bank-reveal].is-visible {
        opacity: 1;
        transform: translateY(0);
    }

    body.bank-modern-home .footer-wrap {
        position: relative;
        overflow: hidden;
        margin-top: 0;
        background:
            radial-gradient(circle at 8% 0%, rgba(19, 185, 129, 0.14), transparent 28%),
            radial-gradient(circle at 92% 12%, rgba(37, 99, 235, 0.12), transparent 30%),
            linear-gradient(180deg, #ffffff 0%, #eef7f4 100%) !important;
        border-top: 1px solid var(--bank-line);
        color: var(--bank-text);
        box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.74);
    }

    body.bank-dark.bank-modern-home .footer-wrap {
        background:
            radial-gradient(circle at 8% 0%, rgba(46, 229, 157, 0.15), transparent 28%),
            radial-gradient(circle at 92% 12%, rgba(117, 167, 255, 0.12), transparent 30%),
            linear-gradient(180deg, #0d1b25 0%, #071118 100%) !important;
        box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.08);
    }

    body.bank-modern-home .footer-wrap:before {
        content: "";
        position: absolute;
        inset: 0;
        pointer-events: none;
        background-image:
            linear-gradient(var(--bank-line) 1px, transparent 1px),
            linear-gradient(90deg, var(--bank-line) 1px, transparent 1px);
        background-size: 54px 54px;
        opacity: 0.34;
        mask-image: linear-gradient(to bottom, rgba(0, 0, 0, 0.72), transparent 78%);
    }

    body.bank-modern-home .footer-wrap .container {
        position: relative;
        z-index: 1;
    }

    body.bank-modern-home .footer-wrap .row.pt-100 {
        padding-top: 76px !important;
        padding-bottom: 52px !important;
    }

    body.bank-modern-home .footer-widget {
        margin-bottom: 28px;
    }

    body.bank-modern-home .footer-logo {
        display: inline-flex;
        align-items: center;
        min-height: 50px;
        margin-bottom: 18px;
    }

    body.bank-modern-home .footer-logo img {
        max-height: 54px;
        width: auto;
        object-fit: contain;
    }

    body.bank-modern-home .footer-widget-title {
        margin-bottom: 20px;
        color: var(--bank-text) !important;
        font-size: 17px;
        font-weight: 900;
        letter-spacing: 0;
    }

    body.bank-modern-home .footer-widget .comp-desc,
    body.bank-modern-home .footer-widget p,
    body.bank-modern-home .contact-info p,
    body.bank-modern-home .copyright-text {
        color: var(--bank-muted) !important;
        line-height: 1.72;
    }

    body.bank-modern-home .footer-menu li,
    body.bank-modern-home .contact-info li {
        margin-bottom: 12px;
    }

    body.bank-modern-home .footer-menu a,
    body.bank-modern-home .copyright-text a {
        color: var(--bank-muted) !important;
        font-weight: 700;
        transition: color 180ms ease, transform 180ms ease;
    }

    body.bank-modern-home .footer-menu a:hover,
    body.bank-modern-home .copyright-text a:hover {
        color: var(--bank-primary-strong) !important;
        transform: translateX(2px);
    }

    body.bank-modern-home .contact-info i,
    body.bank-modern-home .footer-menu a:before {
        color: var(--bank-primary-strong) !important;
    }

    body.bank-modern-home .contact-info h6 {
        margin-bottom: 4px;
        color: var(--bank-text) !important;
        font-weight: 900;
    }

    body.bank-modern-home .social-profile li a {
        width: 40px;
        height: 40px;
        display: inline-flex;
        align-items: center;
        justify-content: center;
        border: 1px solid rgba(19, 185, 129, 0.18);
        border-radius: 999px;
        background: rgba(255, 255, 255, 0.78) !important;
        color: var(--bank-primary-strong) !important;
        box-shadow: 0 12px 30px rgba(25, 47, 79, 0.08);
        transition: transform 180ms ease, box-shadow 180ms ease, background 180ms ease;
    }

    body.bank-dark.bank-modern-home .social-profile li a {
        background: rgba(255, 255, 255, 0.06) !important;
    }

    body.bank-modern-home .social-profile li a:hover {
        background: linear-gradient(135deg, var(--bank-primary), var(--bank-secondary)) !important;
        color: #ffffff !important;
        box-shadow: var(--bank-glow);
        transform: translateY(-2px);
    }

    body.bank-modern-home .copyright-text {
        margin: 0;
        padding: 22px 0;
        border-top: 1px solid var(--bank-line);
        text-align: center;
    }

    @keyframes bankPulse {
        0% { box-shadow: 0 0 0 0 rgba(19, 185, 129, 0.52); }
        72% { box-shadow: 0 0 0 12px rgba(19, 185, 129, 0); }
        100% { box-shadow: 0 0 0 0 rgba(19, 185, 129, 0); }
    }

    @keyframes bankFloat {
        0%, 100% { transform: translateY(0) rotate(2deg); }
        50% { transform: translateY(-16px) rotate(2deg); }
    }

    @keyframes bankFloatAlt {
        0%, 100% { transform: translateY(0); }
        50% { transform: translateY(14px); }
    }

    @keyframes bankSweep {
        0%, 42% { transform: translateX(-120%); }
        64%, 100% { transform: translateX(130%); }
    }

    @media (max-width: 991px) {
        .bank-hero {
            padding-top: 76px;
        }

        .bank-hero-grid,
        .bank-security,
        .bank-app {
            grid-template-columns: 1fr;
        }

        .bank-device {
            min-height: 560px;
        }

        .bank-grid,
        .bank-testimonials {
            grid-template-columns: repeat(2, minmax(0, 1fr));
        }

        .bank-rates,
        .bank-steps {
            grid-template-columns: repeat(2, minmax(0, 1fr));
        }

        .bank-section-head {
            align-items: flex-start;
            flex-direction: column;
        }

        .bank-cta {
            align-items: flex-start;
            flex-direction: column;
        }

        body.bank-modern-home .footer-wrap .row.pt-100 {
            padding-top: 56px !important;
            padding-bottom: 28px !important;
        }
    }

    @media (max-width: 640px) {
        .bank-container {
            width: min(calc(100vw - 22px), 1180px);
            max-width: calc(100vw - 22px);
        }

        .bank-section {
            padding: 66px 0;
        }

        .bank-hero h1 {
            max-width: 100%;
            font-size: 34px;
            line-height: 1.08;
            overflow-wrap: break-word;
        }

        .bank-hero-grid,
        .bank-hero-grid > div {
            width: 100%;
            max-width: calc(100vw - 22px);
            overflow: hidden;
        }

        .bank-hero-grid > div:first-child {
            width: min(100%, 340px) !important;
            max-width: 340px !important;
            justify-self: start;
        }

        .bank-hero-line {
            display: block;
        }

        .bank-lead {
            width: 100%;
            max-width: calc(100vw - 22px);
            font-size: 16px;
            overflow-wrap: break-word;
        }

        .bank-trust-row,
        .bank-grid,
        .bank-rates,
        .bank-steps,
        .bank-testimonials {
            grid-template-columns: 1fr;
        }

        .bank-device {
            min-height: 620px;
        }

        .bank-hero-actions {
            width: 100%;
        }

        .bank-hero-actions .bank-btn {
            flex: 1 1 100%;
            max-width: 100%;
            white-space: normal;
            text-align: center;
        }

        .bank-card-shell,
        .bank-phone,
        .bank-floating-panel {
            position: relative;
            width: 100% !important;
            max-width: calc(100vw - 22px);
            right: auto;
            left: auto;
            top: auto;
            bottom: auto;
            transform: none;
        }

        .bank-phone,
        .bank-floating-panel {
            margin-top: 18px;
        }

        .bank-card-shell {
            animation: none;
            border-radius: 18px;
        }

        .bank-card-visual {
            padding: 22px;
            min-height: 236px;
        }

        .bank-card-balance strong {
            font-size: 30px;
        }

        .bank-card-top strong {
            max-width: 190px;
            text-align: right;
            overflow-wrap: break-word;
        }

        .bank-image-stack {
            min-height: 420px;
        }

        .bank-image-card.large {
            inset: 0 28px 96px 0;
        }

        .bank-image-card.small {
            width: 66%;
        }

        .bank-cta {
            padding: 28px;
        }

        .bank-theme-toggle {
            right: 12px;
            bottom: 72px;
        }

        body.bank-modern-home .footer-widget-title {
            margin-bottom: 14px;
        }

        body.bank-modern-home .footer-menu li,
        body.bank-modern-home .contact-info li {
            margin-bottom: 10px;
        }
    }

    @media (prefers-reduced-motion: reduce) {
        *,
        *:before,
        *:after {
            animation-duration: 0.01ms !important;
            animation-iteration-count: 1 !important;
            scroll-behavior: auto !important;
            transition-duration: 0.01ms !important;
        }
    }
</style>

<main class="bank-home">
    <button class="bank-theme-toggle" type="button" aria-label="Toggle light and dark mode" data-bank-theme-toggle>
        <i class="ri-moon-clear-line" aria-hidden="true"></i>
    </button>

    <section class="bank-hero">
        <div class="bank-container">
            <div class="bank-hero-grid">
                <div data-bank-reveal>
                    <div class="bank-eyebrow"><span class="bank-pulse"></span> Secure digital banking</div>
                    <h1>
                        <span class="bank-hero-line">Bank smarter</span>
                        <span class="bank-hero-line">with a <span class="bank-accent-word">cleaner</span></span>
                        <span class="bank-hero-line">way to move money.</span>
                    </h1>
                    <p class="bank-lead">
                        {{ $settings->site_name }} brings accounts, cards, transfers, loans, and support into one fast online banking experience built for modern customers and growing businesses.
                    </p>
                    <div class="bank-hero-actions">
                        <a href="{{ url('login') }}" class="bank-btn">Open online banking <i class="ri-arrow-right-line"></i></a>
                        <a href="{{ url('register') }}" class="bank-btn secondary">Create account</a>
                    </div>
                    <div class="bank-trust-row">
                        <div class="bank-stat">
                            <strong>{{ number_format($total_users) }}+</strong>
                            <span>Customers onboarded</span>
                        </div>
                        <div class="bank-stat">
                            <strong>24/7</strong>
                            <span>Digital account access</span>
                        </div>
                        <div class="bank-stat">
                            <strong>256-bit</strong>
                            <span>Security-first encryption</span>
                        </div>
                    </div>
                </div>

                <div class="bank-device" data-bank-reveal>
                    <div class="bank-card-shell">
                        <div class="bank-card-visual">
                            <div class="bank-card-top">
                                <div class="bank-chip"></div>
                                <strong>{{ $settings->site_name }}</strong>
                            </div>
                            <div class="bank-card-balance">
                                <span>Available balance</span>
                                <strong>$24,850.00</strong>
                            </div>
                            <div class="bank-card-bottom">
                                <div>
                                    <span>Card holder</span>
                                    <strong>Digital Client</strong>
                                </div>
                                <div>
                                    <span>Status</span>
                                    <strong>Active</strong>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="bank-phone">
                        <div class="bank-phone-screen">
                            <div class="bank-phone-hero"></div>
                            <div class="bank-phone-content">
                                <div class="bank-mini-row"><span>Transfer sent</span><strong>$1,250</strong></div>
                                <div class="bank-mini-row"><span>Card payment</span><strong>$89.40</strong></div>
                                <div class="bank-mini-row"><span>Savings goal</span><strong>74%</strong></div>
                            </div>
                        </div>
                    </div>

                    <div class="bank-floating-panel">
                        <h3>Monthly cashflow</h3>
                        <div class="bank-progress"><span></span></div>
                        <div class="bank-mini-row"><span>Income</span><strong>+18.6%</strong></div>
                        <div class="bank-mini-row"><span>Spend control</span><strong>On track</strong></div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="bank-section">
        <div class="bank-container">
            <div class="bank-section-head" data-bank-reveal>
                <h2>Everything customers expect from online banking.</h2>
                <p>Clear tools for everyday banking, global transfers, card controls, and support without the clutter.</p>
            </div>
            <div class="bank-grid">
                <article class="bank-feature-card" data-bank-reveal>
                    <span class="bank-icon"><i class="ri-exchange-dollar-line"></i></span>
                    <h3>Instant transfers</h3>
                    <p>Move money between accounts, send to other customers, and track every transaction from a clean dashboard.</p>
                    <a class="bank-card-link" href="{{ url('login') }}">Send money <i class="ri-arrow-right-line"></i></a>
                </article>
                <article class="bank-feature-card" data-bank-reveal>
                    <span class="bank-icon"><i class="ri-bank-card-line"></i></span>
                    <h3>Smart cards</h3>
                    <p>Apply for cards, manage limits, review card transactions, and block or activate cards when needed.</p>
                    <a class="bank-card-link" href="{{ url('cards') }}">Explore cards <i class="ri-arrow-right-line"></i></a>
                </article>
                <article class="bank-feature-card" data-bank-reveal>
                    <span class="bank-icon"><i class="ri-line-chart-line"></i></span>
                    <h3>Financial insight</h3>
                    <p>Readable activity views, balance summaries, notifications, and savings progress help customers stay in control.</p>
                    <a class="bank-card-link" href="{{ url('personal') }}">View banking <i class="ri-arrow-right-line"></i></a>
                </article>
            </div>
        </div>
    </section>

    <section class="bank-section bank-band">
        <div class="bank-container">
            <div class="bank-security">
                <div class="bank-image-stack" data-bank-reveal>
                    <div class="bank-image-card large">
                        <img src="{{ asset('temp/custom/assets/img/about/about-img-7.jpg') }}" alt="Customer using secure online banking">
                    </div>
                    <div class="bank-image-card small">
                        <img src="{{ asset('temp/custom/assets/img/why-choose-us/wh-img-6.jpg') }}" alt="Banking support specialist">
                    </div>
                </div>
                <div data-bank-reveal>
                    <div class="bank-eyebrow"><span class="bank-pulse"></span> Protected by design</div>
                    <div class="bank-section-head" style="display:block;margin-bottom:0;">
                        <h2>Modern security without slowing customers down.</h2>
                        <p style="margin-top:18px;max-width:620px;">Security, verification, notifications, and account controls are built around fast daily banking workflows.</p>
                    </div>
                    <div class="bank-security-list">
                        <div class="bank-glass-card">
                            <span class="bank-icon"><i class="ri-shield-check-line"></i></span>
                            <div>
                                <h3>Layered protection</h3>
                                <p>Sign-in checks, activity monitoring, and session-aware account tools reduce risk across the platform.</p>
                            </div>
                        </div>
                        <div class="bank-glass-card">
                            <span class="bank-icon"><i class="ri-notification-3-line"></i></span>
                            <div>
                                <h3>Real-time alerts</h3>
                                <p>Customers stay informed when transfers, account updates, card actions, or admin notices occur.</p>
                            </div>
                        </div>
                        <div class="bank-glass-card">
                            <span class="bank-icon"><i class="ri-customer-service-2-line"></i></span>
                            <div>
                                <h3>Human support</h3>
                                <p>Contact and support workflows keep help close when customers need review, verification, or guidance.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="bank-section tight">
        <div class="bank-container">
            <div class="bank-rates" data-bank-reveal>
                <div class="bank-rate-card">
                    <span>Processed deposits</span>
                    <strong>${{ number_format((float) $total_deposits, 0) }}</strong>
                    <em>Tracked in platform</em>
                </div>
                <div class="bank-rate-card">
                    <span>Processed withdrawals</span>
                    <strong>${{ number_format((float) $total_withdrawals, 0) }}</strong>
                    <em>Visible history</em>
                </div>
                <div class="bank-rate-card">
                    <span>Digital products</span>
                    <strong>{{ count($plans) }}+</strong>
                    <em>Plans available</em>
                </div>
                <div class="bank-rate-card highlight">
                    <span>Online readiness</span>
                    <strong>Always on</strong>
                    <em>Accounts, cards, loans, transfers, and support</em>
                </div>
            </div>
        </div>
    </section>

    <section class="bank-section">
        <div class="bank-container">
            <div class="bank-section-head" data-bank-reveal>
                <h2>Open an account in a few direct steps.</h2>
                <p>The onboarding flow is simple enough for personal users and capable enough for business banking clients.</p>
            </div>
            <div class="bank-steps">
                <article class="bank-step" data-bank-reveal>
                    <span class="bank-step-number">1</span>
                    <h3>Create profile</h3>
                    <p>Register securely and start your online banking profile.</p>
                </article>
                <article class="bank-step" data-bank-reveal>
                    <span class="bank-step-number">2</span>
                    <h3>Verify account</h3>
                    <p>Complete identity and account checks from the dashboard.</p>
                </article>
                <article class="bank-step" data-bank-reveal>
                    <span class="bank-step-number">3</span>
                    <h3>Add funds</h3>
                    <p>Deposit, transfer, or connect the products you use most.</p>
                </article>
                <article class="bank-step" data-bank-reveal>
                    <span class="bank-step-number">4</span>
                    <h3>Bank daily</h3>
                    <p>Manage transfers, cards, withdrawals, alerts, and support.</p>
                </article>
            </div>
        </div>
    </section>

    <section class="bank-section bank-band">
        <div class="bank-container">
            <div class="bank-app">
                <div data-bank-reveal>
                    <div class="bank-eyebrow"><span class="bank-pulse"></span> Mobile-ready experience</div>
                    <div class="bank-section-head" style="display:block;margin-bottom:0;">
                        <h2>A dashboard built for quick decisions.</h2>
                        <p style="margin-top:18px;max-width:630px;">Customers can understand balances, recent activity, card status, transfer options, and notifications without digging through dense screens.</p>
                    </div>
                    <ul class="bank-check-list">
                        <li><i class="ri-check-line"></i><span>Responsive layout for mobile, tablet, and desktop banking.</span></li>
                        <li><i class="ri-check-line"></i><span>Clean shadows, focused cards, and strong visual hierarchy.</span></li>
                        <li><i class="ri-check-line"></i><span>Light and dark mode with persistent user preference.</span></li>
                    </ul>
                    <a href="{{ url('login') }}" class="bank-btn">Go to dashboard <i class="ri-arrow-right-line"></i></a>
                </div>
                <div class="bank-app-panel" data-bank-reveal>
                    <img src="{{ asset('temp/custom/assets/img/about/converter-1.jpg') }}" alt="Online banking dashboard preview">
                </div>
            </div>
        </div>
    </section>

    <section class="bank-section">
        <div class="bank-container">
            <div class="bank-section-head" data-bank-reveal>
                <h2>Trusted by customers who bank online.</h2>
                <p>Clear banking experiences reduce friction and make digital service feel more dependable.</p>
            </div>
            <div class="bank-testimonials">
                <article class="bank-testimonial" data-bank-reveal>
                    <div class="bank-avatar">
                        <img src="{{ asset('temp/custom/assets/img/testimonials/client-1.jpg') }}" alt="Customer portrait">
                        <div><strong>Harry Jackson</strong><span>Entrepreneur</span></div>
                    </div>
                    <p>Transfers, card controls, and notifications are easy to find. The dashboard feels fast and focused.</p>
                </article>
                <article class="bank-testimonial" data-bank-reveal>
                    <div class="bank-avatar">
                        <img src="{{ asset('temp/custom/assets/img/testimonials/client-5.jpg') }}" alt="Customer portrait">
                        <div><strong>Tom Haris</strong><span>Engineer</span></div>
                    </div>
                    <p>I can review account history and support messages without feeling like I am searching through old banking software.</p>
                </article>
                <article class="bank-testimonial" data-bank-reveal>
                    <div class="bank-avatar">
                        <img src="{{ asset('temp/custom/assets/img/testimonials/client-2.jpg') }}" alt="Customer portrait">
                        <div><strong>Chris Haris</strong><span>Managing Director</span></div>
                    </div>
                    <p>The platform gives our team a simple way to manage business banking tasks and keep records visible.</p>
                </article>
            </div>
        </div>
    </section>

    <section class="bank-section tight">
        <div class="bank-container">
            <div class="bank-cta" data-bank-reveal>
                <div>
                    <h2>Ready to bank with {{ $settings->site_name }}?</h2>
                    <p>Open online banking, create a secure account, or speak with support to find the right personal or business banking path.</p>
                </div>
                <div class="bank-hero-actions" style="margin-top:0;">
                    <a href="{{ url('register') }}" class="bank-btn">Get started</a>
                    <a href="{{ url('contact') }}" class="bank-btn secondary">Contact support</a>
                </div>
            </div>
        </div>
    </section>
</main>

<script>
    (function () {
        var body = document.body;
        var toggle = document.querySelector('[data-bank-theme-toggle]');
        var icon = toggle ? toggle.querySelector('i') : null;
        var storedTheme = localStorage.getItem('bankTheme');
        var prefersDark = window.matchMedia && window.matchMedia('(prefers-color-scheme: dark)').matches;

        body.classList.add('bank-modern-home');

        document.querySelectorAll('.navbar-brand').forEach(function (brand) {
            var images = brand.querySelectorAll('img');
            var hasLoadedLogo = false;

            function updateBrand() {
                hasLoadedLogo = Array.prototype.some.call(images, function (image) {
                    return image.complete && image.naturalWidth > 0;
                });
                brand.classList.toggle('bank-logo-fallback', !hasLoadedLogo);
            }

            images.forEach(function (image) {
                image.addEventListener('load', updateBrand);
                image.addEventListener('error', updateBrand);
            });

            updateBrand();
            window.setTimeout(updateBrand, 800);
        });

        function applyTheme(theme) {
            var dark = theme === 'dark';
            body.classList.toggle('bank-dark', dark);
            if (icon) {
                icon.className = dark ? 'ri-sun-line' : 'ri-moon-clear-line';
            }
        }

        applyTheme(storedTheme || (prefersDark ? 'dark' : 'light'));

        if (toggle) {
            toggle.addEventListener('click', function () {
                var nextTheme = body.classList.contains('bank-dark') ? 'light' : 'dark';
                localStorage.setItem('bankTheme', nextTheme);
                applyTheme(nextTheme);
            });
        }

        var revealItems = document.querySelectorAll('[data-bank-reveal]');
        if ('IntersectionObserver' in window) {
            var observer = new IntersectionObserver(function (entries) {
                entries.forEach(function (entry) {
                    if (entry.isIntersecting) {
                        entry.target.classList.add('is-visible');
                        observer.unobserve(entry.target);
                    }
                });
            }, { threshold: 0.16 });

            revealItems.forEach(function (item) {
                observer.observe(item);
            });
        } else {
            revealItems.forEach(function (item) {
                item.classList.add('is-visible');
            });
        }
    })();
</script>
@endsection
