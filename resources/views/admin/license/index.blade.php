@extends('layouts.app')
@section('title', 'License Manager')

@section('content')
    @include('admin.topmenu')
    @include('admin.sidebar')

    <div class="main-panel">
        <div class="content admin-license-page">
            <div class="page-inner">
                <div class="admin-hero-panel mb-4">
                    <div>
                        <span class="admin-hero-kicker">System License</span>
                        <h1>License Manager</h1>
                        <p>Manage domain activation, remote verification, and license status for this BankCore installation.</p>
                    </div>
                    <div class="admin-hero-icon">
                        <i class="ri-shield-keyhole-line"></i>
                    </div>
                </div>

                @if (session('message'))
                    <div class="alert alert-{{ session('type') }} alert-dismissible fade show" role="alert">
                        {{ session('message') }}
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                @endif

                @if ($errors->any())
                    <div class="alert alert-danger">{{ $errors->first() }}</div>
                @endif

                <div class="row">
                    <div class="col-lg-5 mb-4">
                        <div class="card shadow license-status-card">
                            <div class="card-body">
                                <div class="d-flex align-items-center justify-content-between mb-4">
                                    <div>
                                        <h4 class="mb-1">Current License</h4>
                                        <p class="text-muted mb-0">Status and domain binding.</p>
                                    </div>
                                    <span class="license-badge license-badge-{{ $license['status'] }}">
                                        {{ str_replace('-', ' ', $license['status']) }}
                                    </span>
                                </div>

                                <div class="license-meta">
                                    <div>
                                        <span>License Key</span>
                                        <strong>{{ $license['masked_key'] }}</strong>
                                    </div>
                                    <div>
                                        <span>Registered Email</span>
                                        <strong>{{ $license['email'] ?: 'Not set' }}</strong>
                                    </div>
                                    <div>
                                        <span>Licensed Domain</span>
                                        <strong>{{ $license['domain'] }}</strong>
                                    </div>
                                    <div>
                                        <span>Current Domain</span>
                                        <strong>{{ $license['current_domain'] }}</strong>
                                    </div>
                                    <div>
                                        <span>Last Verified</span>
                                        <strong>{{ $license['verified_at'] ?: 'Never' }}</strong>
                                    </div>
                                </div>

                                <form method="post" action="{{ route('admin.license.verify') }}" class="mt-4">
                                    @csrf
                                    <button class="btn btn-primary btn-block" type="submit">
                                        <i class="ri-refresh-line mr-1"></i> Recheck License
                                    </button>
                                </form>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-7 mb-4">
                        <div class="card shadow">
                            <div class="card-header">
                                <h4 class="card-title mb-0">Update License</h4>
                            </div>
                            <div class="card-body">
                                <form method="post" action="{{ route('admin.license.update') }}">
                                    @csrf
                                    <div class="form-group">
                                        <label>License key</label>
                                        <input type="text" class="form-control" name="license_key" value="{{ old('license_key', $license['key']) }}" required autocomplete="off">
                                    </div>
                                    <div class="form-group">
                                        <label>License email</label>
                                        <input type="email" class="form-control" name="license_email" value="{{ old('license_email', $license['email']) }}">
                                    </div>
                                    <div class="form-group">
                                        <label>Remote license endpoint</label>
                                        <input type="url" class="form-control" name="license_endpoint" value="{{ old('license_endpoint', $license['endpoint']) }}" placeholder="https://license-server.com/api/verify">
                                        <small class="form-text text-muted">If this is empty, the manager stores the license locally. Add an endpoint to require server-side validation.</small>
                                    </div>
                                    <button class="btn btn-primary" type="submit">
                                        <i class="ri-shield-check-line mr-1"></i> Save and Verify
                                    </button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <style>
        .admin-license-page .admin-hero-panel {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 20px;
            padding: 28px;
            border-radius: 18px;
            background: linear-gradient(135deg, rgba(19,185,129,.12), rgba(37,99,235,.09)), #fff;
            border: 1px solid rgba(13,27,42,.08);
            box-shadow: 0 18px 55px rgba(13,27,42,.08);
        }
        .admin-license-page .admin-hero-kicker {
            display: inline-flex;
            color: #079667;
            font-weight: 800;
            margin-bottom: 8px;
        }
        .admin-license-page .admin-hero-panel h1 {
            margin: 0 0 8px;
            color: #0d1b2a;
            font-weight: 800;
        }
        .admin-license-page .admin-hero-panel p {
            max-width: 640px;
            margin: 0;
            color: #607086;
        }
        .admin-license-page .admin-hero-icon {
            width: 66px;
            height: 66px;
            display: grid;
            place-items: center;
            border-radius: 18px;
            color: #fff;
            font-size: 30px;
            background: linear-gradient(135deg, #13b981, #2563eb);
            box-shadow: 0 16px 34px rgba(19,185,129,.28);
        }
        .license-meta {
            display: grid;
            gap: 12px;
        }
        .license-meta div {
            padding: 14px;
            border: 1px solid rgba(13,27,42,.08);
            border-radius: 14px;
            background: #f8fafc;
        }
        .license-meta span {
            display: block;
            color: #607086;
            font-size: 12px;
            font-weight: 700;
            text-transform: uppercase;
            margin-bottom: 5px;
        }
        .license-meta strong {
            color: #0d1b2a;
            word-break: break-word;
        }
        .license-badge {
            display: inline-flex;
            align-items: center;
            border-radius: 999px;
            padding: 8px 12px;
            font-size: 12px;
            font-weight: 800;
            text-transform: uppercase;
            background: #eef2ff;
            color: #2563eb;
        }
        .license-badge-remote-verified,
        .license-badge-local-verified {
            background: #d1fae5;
            color: #047857;
        }
        .license-badge-failed {
            background: #fee2e2;
            color: #b91c1c;
        }
        @media (max-width: 767px) {
            .admin-license-page .admin-hero-panel {
                align-items: flex-start;
                flex-direction: column;
            }
        }
    </style>
@endsection
