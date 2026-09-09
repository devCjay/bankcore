<style>
    :root {
        --bank-bg: #f7fafc;
        --bank-surface: rgba(255, 255, 255, 0.88);
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

    body.bank-modern-home,
    body.bank-modern-home .page-wrapper {
        background: var(--bank-bg);
        color: var(--bank-text);
        overflow-x: hidden;
    }

    body.bank-modern-home .preloader.js-preloader {
        display: none !important;
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

    body.bank-modern-home .header-bottom,
    body.bank-modern-home .navbar {
        background: transparent !important;
    }

    body.bank-modern-home .navbar-brand img {
        max-height: 54px;
        width: auto;
        object-fit: contain;
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

    .bank-btn:hover {
        color: #ffffff !important;
        transform: translateY(-2px);
        filter: saturate(1.08);
    }

    .bank-btn.secondary {
        background: var(--bank-surface-strong);
        color: var(--bank-text) !important;
        border: 1px solid var(--bank-line);
        box-shadow: 0 14px 34px rgba(15, 23, 42, 0.08);
    }

    .bank-front {
        min-height: 100vh;
        overflow: hidden;
        font-family: Inter, ui-sans-serif, system-ui, -apple-system, BlinkMacSystemFont, "Segoe UI", sans-serif;
    }

    .bank-container {
        width: min(1180px, calc(100% - 32px));
        margin: 0 auto;
    }

    .bank-section {
        padding: 92px 0;
        position: relative;
    }

    .bank-section.tight {
        padding: 62px 0;
    }

    .bank-hero {
        padding: 104px 0 76px;
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
        mask-image: linear-gradient(to bottom, rgba(0, 0, 0, 0.78), transparent 84%);
        opacity: 0.5;
    }

    .bank-hero-grid,
    .bank-split {
        display: grid;
        grid-template-columns: minmax(0, 1fr) minmax(340px, 0.88fr);
        gap: 48px;
        align-items: center;
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

    .bank-hero h1,
    .bank-section-head h2,
    .bank-split h2 {
        margin: 0;
        color: var(--bank-text);
        letter-spacing: 0;
    }

    .bank-hero h1 {
        font-size: clamp(42px, 6vw, 76px);
        line-height: 0.98;
        max-width: 820px;
    }

    .bank-lead,
    .bank-section-head p,
    .bank-split p,
    .bank-card p,
    .bank-legal p,
    .bank-legal li {
        color: var(--bank-muted);
        line-height: 1.75;
    }

    .bank-lead {
        margin: 24px 0 0;
        max-width: 690px;
        font-size: 18px;
    }

    .bank-hero-actions {
        display: flex;
        flex-wrap: wrap;
        gap: 14px;
        margin-top: 34px;
    }

    .bank-visual-card,
    .bank-card,
    .bank-stat,
    .bank-form-card,
    .bank-legal {
        border: 1px solid var(--bank-line);
        border-radius: 8px;
        background: var(--bank-surface);
        box-shadow: 0 18px 48px rgba(15, 23, 42, 0.08);
        backdrop-filter: blur(16px);
    }

    .bank-visual-card {
        overflow: hidden;
        min-height: 420px;
        position: relative;
    }

    .bank-visual-card img {
        width: 100%;
        height: 100%;
        min-height: 420px;
        object-fit: cover;
        display: block;
    }

    .bank-visual-card:after {
        content: "";
        position: absolute;
        inset: auto 18px 18px 18px;
        height: 98px;
        border-radius: 8px;
        background: linear-gradient(135deg, rgba(19, 185, 129, 0.92), rgba(37, 99, 235, 0.92));
        box-shadow: var(--bank-glow);
    }

    .bank-stats,
    .bank-grid {
        display: grid;
        gap: 18px;
    }

    .bank-stats {
        grid-template-columns: repeat(3, minmax(0, 1fr));
        margin-top: 40px;
    }

    .bank-grid {
        grid-template-columns: repeat(3, minmax(0, 1fr));
    }

    .bank-card,
    .bank-stat,
    .bank-form-card,
    .bank-legal {
        padding: 26px;
    }

    .bank-card {
        min-height: 245px;
        display: flex;
        flex-direction: column;
        transition: transform 220ms ease, box-shadow 220ms ease, border-color 220ms ease;
    }

    .bank-card:hover {
        transform: translateY(-5px);
        border-color: rgba(19, 185, 129, 0.34);
        box-shadow: var(--bank-glow);
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

    .bank-card h3,
    .bank-stat strong {
        color: var(--bank-text);
    }

    .bank-card h3 {
        margin: 22px 0 10px;
        font-size: 22px;
        line-height: 1.2;
    }

    .bank-card-link {
        margin-top: auto;
        padding-top: 22px;
        color: var(--bank-primary-strong);
        font-weight: 800;
    }

    .bank-section-head {
        display: flex;
        align-items: flex-end;
        justify-content: space-between;
        gap: 30px;
        margin-bottom: 34px;
    }

    .bank-section-head h2,
    .bank-split h2 {
        max-width: 710px;
        font-size: clamp(32px, 4vw, 54px);
        line-height: 1.04;
    }

    .bank-section-head p {
        margin: 0;
        max-width: 410px;
    }

    .bank-band {
        background:
            linear-gradient(135deg, rgba(19, 185, 129, 0.12), transparent 48%),
            linear-gradient(45deg, rgba(246, 183, 60, 0.12), transparent 45%);
        border-top: 1px solid var(--bank-line);
        border-bottom: 1px solid var(--bank-line);
    }

    .bank-stat strong {
        display: block;
        font-size: 28px;
        line-height: 1;
    }

    .bank-stat span {
        display: block;
        margin-bottom: 9px;
        color: var(--bank-muted);
        font-size: 13px;
        font-weight: 800;
        text-transform: uppercase;
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

    .bank-form-card input,
    .bank-form-card textarea {
        min-height: 52px;
        border: 1px solid var(--bank-line);
        border-radius: 8px;
        color: var(--bank-text);
        background: var(--bank-surface-strong);
    }

    .bank-form-card textarea {
        min-height: 150px;
    }

    .bank-legal {
        max-width: 940px;
        margin: 0 auto;
    }

    .bank-legal h3 {
        margin: 30px 0 12px;
        color: var(--bank-text);
        font-size: 24px;
    }

    .bank-legal h3:first-child {
        margin-top: 0;
    }

    .bank-cta {
        display: flex;
        align-items: center;
        justify-content: space-between;
        gap: 24px;
        padding: 34px;
        border-radius: 8px;
        background: linear-gradient(135deg, rgba(19, 185, 129, 0.95), rgba(37, 99, 235, 0.95));
        color: #ffffff;
        box-shadow: var(--bank-glow);
    }

    .bank-cta h2,
    .bank-cta p {
        color: #ffffff;
        margin: 0;
    }

    .bank-cta h2 {
        font-size: clamp(26px, 3vw, 42px);
        line-height: 1.1;
    }

    .bank-cta p {
        margin-top: 10px;
        max-width: 640px;
        opacity: 0.86;
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

    [data-bank-reveal] {
        opacity: 0;
        transform: translateY(20px);
        transition: opacity 520ms ease, transform 520ms ease;
    }

    [data-bank-reveal].is-visible {
        opacity: 1;
        transform: translateY(0);
    }

    @keyframes bankPulse {
        0% { box-shadow: 0 0 0 0 rgba(19, 185, 129, 0.52); }
        80% { box-shadow: 0 0 0 14px rgba(19, 185, 129, 0); }
        100% { box-shadow: 0 0 0 0 rgba(19, 185, 129, 0); }
    }

    @media (max-width: 991px) {
        .bank-hero-grid,
        .bank-split,
        .bank-grid,
        .bank-stats {
            grid-template-columns: 1fr;
        }

        .bank-section-head,
        .bank-cta {
            align-items: flex-start;
            flex-direction: column;
        }
    }

    @media (max-width: 575px) {
        .bank-section {
            padding: 68px 0;
        }

        .bank-hero {
            padding: 76px 0 58px;
        }

        .bank-card,
        .bank-stat,
        .bank-form-card,
        .bank-legal,
        .bank-cta {
            padding: 22px;
        }

        .bank-visual-card,
        .bank-visual-card img {
            min-height: 310px;
        }
    }
</style>

<script>
    (function () {
        document.body.classList.add('bank-modern-home');

        function reveal() {
            var items = document.querySelectorAll('[data-bank-reveal]');

            if (!('IntersectionObserver' in window)) {
                items.forEach(function (item) { item.classList.add('is-visible'); });
                return;
            }

            var observer = new IntersectionObserver(function (entries) {
                entries.forEach(function (entry) {
                    if (entry.isIntersecting) {
                        entry.target.classList.add('is-visible');
                        observer.unobserve(entry.target);
                    }
                });
            }, { threshold: 0.16 });

            items.forEach(function (item) { observer.observe(item); });
        }

        if (document.readyState === 'loading') {
            document.addEventListener('DOMContentLoaded', reveal);
        } else {
            reveal();
        }
    })();
</script>
