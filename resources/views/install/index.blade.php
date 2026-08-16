<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>BankCore Installer</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap" rel="stylesheet">
    <style>
        :root {
            --bg: #f7fafc;
            --panel: #ffffff;
            --panel-soft: #edf8f5;
            --text: #0d1b2a;
            --muted: #607086;
            --primary: #13b981;
            --primary-dark: #079667;
            --blue: #2563eb;
            --danger: #dc2626;
            --border: rgba(13, 27, 42, .1);
            --shadow: 0 24px 80px rgba(13, 27, 42, .12);
        }
        * { box-sizing: border-box; }
        body {
            margin: 0;
            min-height: 100vh;
            font-family: Inter, system-ui, -apple-system, BlinkMacSystemFont, "Segoe UI", sans-serif;
            color: var(--text);
            background:
                radial-gradient(circle at 12% 12%, rgba(19, 185, 129, .18), transparent 26rem),
                radial-gradient(circle at 86% 8%, rgba(37, 99, 235, .13), transparent 24rem),
                var(--bg);
        }
        .shell { width: min(1120px, calc(100% - 32px)); margin: 0 auto; padding: 40px 0; }
        .topbar { display: flex; align-items: center; justify-content: space-between; gap: 16px; margin-bottom: 30px; }
        .brand { display: flex; align-items: center; gap: 12px; font-weight: 800; font-size: 20px; }
        .brand-mark {
            width: 42px; height: 42px; border-radius: 14px;
            background: linear-gradient(135deg, var(--primary), var(--blue));
            box-shadow: 0 12px 34px rgba(19, 185, 129, .36);
            display: grid; place-items: center; color: #fff;
        }
        .pill { padding: 10px 14px; border: 1px solid var(--border); border-radius: 999px; color: var(--muted); background: rgba(255,255,255,.72); }
        .grid { display: grid; grid-template-columns: 320px 1fr; gap: 24px; align-items: start; }
        .sidebar, .card {
            background: rgba(255,255,255,.86);
            border: 1px solid var(--border);
            border-radius: 22px;
            box-shadow: var(--shadow);
            backdrop-filter: blur(18px);
        }
        .sidebar { padding: 22px; position: sticky; top: 24px; }
        .hero { padding: 34px; overflow: hidden; position: relative; }
        .hero:before {
            content: ""; position: absolute; inset: -80px -120px auto auto; width: 260px; height: 260px; border-radius: 50%;
            background: radial-gradient(circle, rgba(19,185,129,.22), transparent 68%);
            animation: glow 5s ease-in-out infinite alternate;
        }
        @keyframes glow { from { transform: translateY(0); opacity: .55; } to { transform: translateY(24px); opacity: 1; } }
        h1 { margin: 0 0 12px; font-size: clamp(30px, 5vw, 54px); line-height: 1.02; letter-spacing: 0; }
        h2 { margin: 0 0 10px; font-size: 24px; }
        p { color: var(--muted); line-height: 1.7; margin: 0; }
        .steps { display: grid; gap: 12px; }
        .step {
            display: flex; gap: 12px; align-items: center; padding: 13px;
            border: 1px solid var(--border); border-radius: 16px; color: var(--muted); background: #fff;
        }
        .step.active { color: var(--text); border-color: rgba(19,185,129,.45); background: var(--panel-soft); }
        .num { width: 28px; height: 28px; border-radius: 10px; display: grid; place-items: center; background: #e8eef7; color: var(--text); font-weight: 800; font-size: 13px; }
        .step.active .num { background: var(--primary); color: #fff; box-shadow: 0 8px 22px rgba(19,185,129,.36); }
        .content { display: grid; gap: 20px; }
        .card { padding: 28px; }
        .checks { display: grid; grid-template-columns: repeat(2, minmax(0, 1fr)); gap: 12px; margin-top: 22px; }
        .check { border: 1px solid var(--border); border-radius: 16px; padding: 14px; background: #fff; }
        .check strong { display: block; font-size: 14px; margin-bottom: 6px; }
        .check span { display: block; color: var(--muted); font-size: 12px; word-break: break-word; }
        .status { display: inline-flex; align-items: center; gap: 8px; font-weight: 800; font-size: 12px; margin-bottom: 8px; }
        .status.ok { color: var(--primary-dark); }
        .status.bad { color: var(--danger); }
        .form { display: grid; gap: 16px; margin-top: 22px; }
        label { display: grid; gap: 7px; font-weight: 700; color: var(--text); }
        input {
            width: 100%; min-height: 48px; border-radius: 14px; border: 1px solid var(--border);
            padding: 0 14px; color: var(--text); background: #fff; outline: none; transition: .2s ease;
        }
        input:focus { border-color: var(--primary); box-shadow: 0 0 0 4px rgba(19,185,129,.16); }
        .row { display: grid; grid-template-columns: 1fr 130px; gap: 14px; }
        .actions { display: flex; flex-wrap: wrap; gap: 12px; margin-top: 22px; }
        .btn {
            appearance: none; border: 0; border-radius: 14px; padding: 14px 18px; font-weight: 800;
            color: #fff; background: linear-gradient(135deg, var(--primary), var(--blue));
            box-shadow: 0 16px 36px rgba(19, 185, 129, .26); cursor: pointer; text-decoration: none;
            display: inline-flex; align-items: center; justify-content: center;
        }
        .btn.secondary { color: var(--text); background: #fff; border: 1px solid var(--border); box-shadow: none; }
        .alert { border-radius: 16px; padding: 14px 16px; margin-top: 18px; font-weight: 700; }
        .alert.error { color: #991b1b; background: #fee2e2; border: 1px solid #fecaca; }
        .alert.success { color: #065f46; background: #d1fae5; border: 1px solid #a7f3d0; }
        .small { font-size: 13px; color: var(--muted); margin-top: 10px; }
        @media (max-width: 860px) {
            .grid { grid-template-columns: 1fr; }
            .sidebar { position: static; }
            .checks { grid-template-columns: 1fr; }
            .row { grid-template-columns: 1fr; }
            .topbar { align-items: flex-start; flex-direction: column; }
        }
    </style>
</head>
<body>
    @php
        $steps = ['requirements' => 'Requirements', 'license' => 'License', 'database' => 'Database', 'import' => 'Import', 'admin' => 'Create Admin', 'complete' => 'Complete'];
        $allChecksPassed = collect($checks)->every(function ($check) {
            return $check['ok'];
        });
    @endphp

    <main class="shell">
        <header class="topbar">
            <div class="brand">
                <div class="brand-mark">B</div>
                <span>BankCore Installer</span>
            </div>
            <div class="pill">cPanel ready setup wizard</div>
        </header>

        <section class="grid">
            <aside class="sidebar">
                <div class="steps">
                    @foreach ($steps as $key => $label)
                        <div class="step {{ $step === $key ? 'active' : '' }}">
                            <div class="num">{{ $loop->iteration }}</div>
                            <strong>{{ $label }}</strong>
                        </div>
                    @endforeach
                </div>
            </aside>

            <div class="content">
                <div class="card hero">
                    <h1>Install your banking platform.</h1>
                    <p>Verify hosting requirements, validate the license, connect your MySQL database, and import the bundled database file from one clean setup flow.</p>
                </div>

                @if ($errors->any())
                    <div class="alert error">{{ $errors->first() }}</div>
                @endif

                @if (session('success'))
                    <div class="alert success">{{ session('success') }}</div>
                @endif

                @if ($step === 'locked')
                    <div class="card">
                        <h2>Installation is locked</h2>
                        <p>This application is already installed. Remove <strong>storage/installed</strong> and set <strong>APP_INSTALLED=false</strong> only when you intentionally want to reinstall.</p>
                        <div class="actions">
                            <a class="btn" href="{{ url('/') }}">Open site</a>
                            <a class="btn secondary" href="{{ url('/admin/login') }}">Admin login</a>
                        </div>
                    </div>
                @elseif ($step === 'requirements')
                    <div class="card">
                        <h2>Hosting requirements</h2>
                        <p>For cPanel, make sure the selected PHP version has these extensions enabled and the listed folders are writable.</p>
                        <div class="checks">
                            @foreach ($checks as $check)
                                <div class="check">
                                    <div class="status {{ $check['ok'] ? 'ok' : 'bad' }}">{{ $check['ok'] ? 'PASS' : 'FIX' }}</div>
                                    <strong>{{ $check['label'] }}</strong>
                                    <span>{{ $check['value'] }}</span>
                                </div>
                            @endforeach
                        </div>
                        <div class="actions">
                            @if ($allChecksPassed)
                                <a class="btn" href="{{ route('install.license') }}">Continue to license</a>
                            @else
                                <a class="btn secondary" href="{{ route('install.index') }}">Recheck requirements</a>
                            @endif
                        </div>
                    </div>
                @elseif ($step === 'license')
                    <div class="card">
                        <h2>License verification</h2>
                        <p>Enter the purchase license. If <strong>INSTALL_LICENSE_ENDPOINT</strong> is set in .env, the installer will verify the key remotely against this domain.</p>
                        <form class="form" method="post" action="{{ route('install.license.verify') }}">
                            @csrf
                            <label>License key
                                <input name="license_key" value="{{ old('license_key') }}" required autocomplete="off">
                            </label>
                            <label>License email
                                <input type="email" name="license_email" value="{{ old('license_email') }}">
                            </label>
                            <div class="actions">
                                <button class="btn" type="submit">Verify license</button>
                                <a class="btn secondary" href="{{ route('install.index') }}">Back</a>
                            </div>
                        </form>
                    </div>
                @elseif ($step === 'database')
                    <div class="card">
                        <h2>Database configuration</h2>
                        <p>Create a MySQL database and user in cPanel, assign all privileges, then enter those credentials here.</p>
                        <form class="form" method="post" action="{{ route('install.database.save') }}">
                            @csrf
                            <div class="row">
                                <label>Database host
                                    <input name="db_host" value="{{ old('db_host', 'localhost') }}" required>
                                </label>
                                <label>Port
                                    <input name="db_port" value="{{ old('db_port', '3306') }}" required>
                                </label>
                            </div>
                            <label>Database name
                                <input name="db_database" value="{{ old('db_database') }}" required>
                            </label>
                            <label>Database username
                                <input name="db_username" value="{{ old('db_username') }}" required>
                            </label>
                            <label>Database password
                                <input type="password" name="db_password" value="{{ old('db_password') }}">
                            </label>
                            <div class="actions">
                                <button class="btn" type="submit">Test connection</button>
                                <a class="btn secondary" href="{{ route('install.license') }}">Back</a>
                            </div>
                        </form>
                    </div>
                @elseif ($step === 'import')
                    <div class="card">
                        <h2>Import database file</h2>
                        <p>The installer will import the bundled SQL file into the verified database. The installer will stay unlocked until the first admin is created.</p>
                        <p class="small">SQL file: {{ $databaseFile ?: 'Missing' }}</p>
                        <form class="form" method="post" action="{{ route('install.import.run') }}">
                            @csrf
                            <div class="actions">
                                <button class="btn" type="submit">Import database</button>
                                <a class="btn secondary" href="{{ route('install.database') }}">Back</a>
                            </div>
                        </form>
                    </div>
                @elseif ($step === 'admin')
                    <div class="card">
                        <h2>Create first admin</h2>
                        <p>This Super Admin account will be used to log in after installation. The installer locks only after this account is created.</p>
                        <form class="form" method="post" action="{{ route('install.admin.save') }}">
                            @csrf
                            <div class="row">
                                <label>First name
                                    <input name="first_name" value="{{ old('first_name') }}" required>
                                </label>
                                <label>Last name
                                    <input name="last_name" value="{{ old('last_name') }}" required>
                                </label>
                            </div>
                            <label>Email address
                                <input type="email" name="email" value="{{ old('email') }}" required>
                            </label>
                            <label>Phone number
                                <input name="phone" value="{{ old('phone') }}">
                            </label>
                            <div class="row">
                                <label>Password
                                    <input type="password" name="password" required>
                                </label>
                                <label>Confirm password
                                    <input type="password" name="password_confirmation" required>
                                </label>
                            </div>
                            <div class="actions">
                                <button class="btn" type="submit">Create admin and lock installer</button>
                            </div>
                        </form>
                    </div>
                @elseif ($step === 'complete')
                    <div class="card">
                        <h2>Installation complete</h2>
                        <p>The application is configured, the database file has been imported, the first admin is ready, and the installer is now locked.</p>
                        <div class="actions">
                            <a class="btn" href="{{ url('/') }}">Open site</a>
                            <a class="btn secondary" href="{{ url('/admin/login') }}">Admin login</a>
                        </div>
                    </div>
                @endif
            </div>
        </section>
    </main>
</body>
</html>
