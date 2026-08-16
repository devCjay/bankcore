# BankCore Purchase and Installation Guide

This guide is for new buyers installing BankCore on cPanel hosting.

## 1. Server Requirements

Use cPanel MultiPHP Manager or Select PHP Version and enable:

- PHP 7.3 or newer
- `bcmath`
- `ctype`
- `curl`
- `fileinfo`
- `json`
- `mbstring`
- `openssl`
- `pdo`
- `pdo_mysql`
- `tokenizer`
- `xml`
- `zip`

Writable folders:

- `storage`
- `storage/app`
- `storage/app/public`
- `storage/framework`
- `storage/framework/cache`
- `storage/framework/cache/data`
- `storage/framework/sessions`
- `storage/framework/views`
- `storage/logs`
- `bootstrap/cache`

Recommended permissions are usually `755` for folders and `644` for files. Some hosts require `775` for `storage` and `bootstrap/cache`.

## 2. Upload Files to cPanel

1. Upload the project files to your domain root or subfolder.
2. Make sure `vendor` is uploaded if you are not running Composer on the server.
3. If `.env` exists from local development, delete it before a fresh install.
4. Delete stale cached files if present:
   - `bootstrap/cache/config.php`
   - `bootstrap/cache/routes.php`
   - `bootstrap/cache/events.php`
5. Visit:

```text
https://your-domain.com/install
```

The installer checks PHP, extensions, permissions, license, database connection, imports the bundled SQL file, and then asks you to create the first Super Admin account as the final step.

## 3. Database Setup

In cPanel:

1. Open MySQL Databases.
2. Create a database.
3. Create a database user.
4. Assign the user to the database with all privileges.
5. Enter these details in the installer database step:
   - Host: usually `localhost`
   - Port: usually `3306`
   - Database name
   - Database username
   - Database password

The installer imports:

```text
DATABASE/database.sql
```

## 4. License Verification

BankCore supports license verification during install and from the admin panel.

In the banking app `.env`, set:

```env
INSTALL_LICENSE_ENDPOINT=https://your-license-portal.com/api/verify-license
```

If no endpoint is set, the license is stored locally. For production sales, use the license portal created separately and point this value to the portal API.

Admin location:

```text
Admin Panel -> Settings -> License Manager
```

The license manager can save a license key, bind the active domain, and recheck the license.

## 5. License Portal Setup

The separate license portal lives in:

```text
C:\Build\repo\bankcore-license-portal
```

For production:

1. Upload the portal to a separate domain or subdomain, for example:

```text
https://licenses.yourcompany.com
```

2. Configure `.env`:

```env
APP_NAME="BankCore License Portal"
APP_URL=https://licenses.yourcompany.com
LICENSE_PORTAL_PASSWORD=ChangeThisPassword
```

3. Configure database. SQLite is fine for small use, but MySQL is recommended for production:

```env
DB_CONNECTION=mysql
DB_HOST=localhost
DB_PORT=3306
DB_DATABASE=your_license_db
DB_USERNAME=your_license_user
DB_PASSWORD=your_password
```

4. Run migrations if SSH is available:

```bash
php artisan migrate --force
```

5. Login and create licenses:

```text
https://licenses.yourcompany.com/login
```

6. Set the banking app endpoint:

```env
INSTALL_LICENSE_ENDPOINT=https://licenses.yourcompany.com/api/verify-license
```

The portal API accepts:

```json
{
  "license_key": "BANK-XXXXXX-XXXXXX-XXXXXX-XXXXXX",
  "domain": "client-domain.com",
  "email": "client@example.com",
  "product": "BankCore"
}
```

## 6. Create the First Admin

After the database import finishes, the installer shows the final admin creation step.

Enter:

- First name
- Last name
- Email address
- Phone number
- Password
- Password confirmation

This account is created as the first `Super Admin`. The installer locks only after this admin account is created.

## 7. Admin Login

After install, open:

```text
https://your-domain.com/admin/login
```

Create or update admin users from the admin panel after first login.

## 8. SMTP Setup

Go to:

```text
Admin Panel -> Settings -> App Settings -> Email Settings
```

Typical SMTP values:

```text
Mail Server: smtp
SMTP Host: mail.your-domain.com
SMTP Port: 465 or 587
SMTP Encryption: ssl for 465, tls for 587
SMTP Username: your mailbox email
SMTP Password: mailbox password
From Email: your mailbox email
From Name: your bank name
```

For cPanel email, create the mailbox first under Email Accounts, then copy the manual mail client settings.

If emails fail:

- Confirm DNS MX records are correct.
- Confirm SMTP password is correct.
- Try port `587` with `tls`.
- Ask host if outbound SMTP is blocked.
- Clear app cache from admin after saving settings.

## 9. Payment Setup

Payment settings are managed from:

```text
Admin Panel -> Settings -> Payment Settings
```

Common setup tasks:

- Add deposit/withdrawal methods.
- Add manual bank transfer details.
- Configure gateway API keys where supported.
- Confirm gateway webhook/callback URLs match your live domain.
- Keep test keys separate from live keys.

Paystack:

1. Create a Paystack business account.
2. Copy public key and secret key.
3. Add keys under Payment Settings.
4. Set callback URL to your banking app domain if Paystack asks for one.
5. Run a small test deposit before going live.

Flutterwave:

1. Create a Flutterwave account.
2. Copy public key, secret key, and secret hash.
3. Add keys under Payment Settings.
4. Confirm callback URL points to your domain.
5. Test payment flow.

Stripe:

1. Create a Stripe account.
2. Copy publishable and secret keys.
3. Add keys under Payment Settings where available.
4. Use live keys only after testing.

## 10. Frontend CMS Setup

The landing page is CMS-ready.

Open:

```text
Admin Panel -> Settings -> Front Page
```

Use:

- Website Contents: controls landing text, button labels, and URLs.
- Images: controls landing images.
- FAQ(s): controls FAQ content.
- Testimonials: controls testimonials where used.

For landing content, add a Website Content entry where:

- Title of Content = CMS key
- Content Description = text or URL value

Examples:

```text
home.hero.eyebrow
home.hero.title.line1
home.hero.description
home.hero.primary_button
home.hero.primary_url
home.features.heading
home.feature.1.title
home.feature.1.description
home.cta.heading
```

For landing images, upload an image and set Title of Image to one of:

```text
home.visual.phone.image
home.security.image.large
home.security.image.small
home.app.image
home.testimonial.1.image
home.testimonial.2.image
home.testimonial.3.image
```

If a CMS key is missing, the landing page uses the built-in default text/image.

## 11. Appearance and Theme Colors

Open:

```text
Admin Panel -> Appearance Settings
```

Recommended brand colors:

```text
Primary: #13b981
Primary Dark: #079667
Secondary: #2563eb
Text: #0d1b2a
Background: #f7fafc
```

## 12. Common cPanel Issues

### Please provide a valid cache path

Create these folders if missing:

```text
storage/framework/views
storage/framework/cache/data
storage/framework/sessions
bootstrap/cache
```

Then make them writable.

### App still tries to connect to database before install

Delete:

```text
.env
storage/installed
bootstrap/cache/config.php
bootstrap/cache/routes.php
bootstrap/cache/events.php
```

Then revisit:

```text
/install
```

### 500 error after moving to server

Check:

- `.env` exists after install.
- `APP_KEY` is set.
- PHP extensions are enabled.
- `storage` and `bootstrap/cache` are writable.
- Database credentials are correct.
- `APP_URL` matches the live domain.

### Email verification or KYC settings

Use the admin settings where possible. If direct database control is needed, check the `settings` table:

```text
enable_verification
enable_kyc
enable_kyc_registration
```

## 13. Post-Install Checklist

- Set correct site name, URL, logo, and favicon.
- Configure SMTP.
- Configure payment methods/gateways.
- Create or update admin users.
- Set frontend CMS content.
- Review Appearance Settings.
- Test registration.
- Test login.
- Test deposit and withdrawal workflow.
- Test password reset and email delivery.
- Confirm license status in License Manager.
