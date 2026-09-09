@include('home.partials.modern-styles')

<main class="bank-front">
    <section class="bank-hero">
        <div class="bank-container">
            <div class="bank-hero-grid">
                <div data-bank-reveal>
                    <div class="bank-eyebrow"><span class="bank-pulse"></span> {{ $page['eyebrow'] }}</div>
                    <h1>{{ $page['heading'] }}</h1>
                    <p class="bank-lead">{{ $page['description'] }}</p>
                    <div class="bank-hero-actions">
                        <a href="{{ $page['primary']['url'] }}" class="bank-btn">{{ $page['primary']['label'] }} <i class="ri-arrow-right-line"></i></a>
                        <a href="{{ $page['secondary']['url'] }}" class="bank-btn secondary">{{ $page['secondary']['label'] }}</a>
                    </div>
                </div>
                <div class="bank-visual-card" data-bank-reveal>
                    <img src="{{ asset($page['image']) }}" alt="{{ $page['image_alt'] }}">
                </div>
            </div>

            @if (!empty($page['stats']))
                <div class="bank-stats" data-bank-reveal>
                    @foreach ($page['stats'] as $stat)
                        <div class="bank-stat">
                            <span>{{ $stat['label'] }}</span>
                            <strong>{{ $stat['value'] }}</strong>
                            <p>{{ $stat['text'] }}</p>
                        </div>
                    @endforeach
                </div>
            @endif
        </div>
    </section>

    @if (!empty($page['cards']))
        <section class="bank-section">
            <div class="bank-container">
                <div class="bank-section-head" data-bank-reveal>
                    <h2>{{ $page['cards_heading'] }}</h2>
                    <p>{{ $page['cards_description'] }}</p>
                </div>
                <div class="bank-grid">
                    @foreach ($page['cards'] as $card)
                        <article class="bank-card" data-bank-reveal>
                            <span class="bank-icon"><i class="{{ $card['icon'] }}"></i></span>
                            <h3>{{ $card['title'] }}</h3>
                            <p>{{ $card['text'] }}</p>
                            @if (!empty($card['url']))
                                <a class="bank-card-link" href="{{ $card['url'] }}">{{ $card['label'] }} <i class="ri-arrow-right-line"></i></a>
                            @endif
                        </article>
                    @endforeach
                </div>
            </div>
        </section>
    @endif

    @if (!empty($page['split']))
        <section class="bank-section bank-band">
            <div class="bank-container">
                <div class="bank-split">
                    <div data-bank-reveal>
                        <div class="bank-eyebrow"><span class="bank-pulse"></span> {{ $page['split']['eyebrow'] }}</div>
                        <h2>{{ $page['split']['heading'] }}</h2>
                        <p style="margin-top:18px;">{{ $page['split']['text'] }}</p>
                        @if (!empty($page['split']['bullets']))
                            <ul class="bank-check-list">
                                @foreach ($page['split']['bullets'] as $bullet)
                                    <li><i class="ri-check-line"></i><span>{{ $bullet }}</span></li>
                                @endforeach
                            </ul>
                        @endif
                    </div>
                    <div class="bank-visual-card" data-bank-reveal>
                        <img src="{{ asset($page['split']['image']) }}" alt="{{ $page['split']['image_alt'] }}">
                    </div>
                </div>
            </div>
        </section>
    @endif

    @if (!empty($page['cta']))
        <section class="bank-section tight">
            <div class="bank-container">
                <div class="bank-cta" data-bank-reveal>
                    <div>
                        <h2>{{ $page['cta']['heading'] }}</h2>
                        <p>{{ $page['cta']['text'] }}</p>
                    </div>
                    <a href="{{ $page['cta']['url'] }}" class="bank-btn secondary">{{ $page['cta']['label'] }}</a>
                </div>
            </div>
        </section>
    @endif
</main>
