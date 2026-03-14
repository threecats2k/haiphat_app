# Hải Phát IDC - Business Showcase App

Flutter mobile app (Android focus) for **Công ty Cổ phần Đầu tư Phát triển và Xây dựng Hải Phát**.

## Features

- **Splash:** Logo with fade-in, then Home
- **Home:** Hero banner, company intro, 4 services grid (Dân dụng, Công nghiệp, Giao thông, Hạ tầng kỹ thuật), stats (100+ dự án, 50+ đối tác, 95% hài lòng, 6+ năm)
- **Giới thiệu:** Company profile, 6 value props, partners, quality commitment
- **Chính sách:** Bảo hành (12 tháng nội thất), giao hàng, đổi trả
- **Liên hệ:** Map placeholder, address/phone/email, one-tap Call (`tel:0945838333`)

## Run

```bash
flutter pub get
flutter run
```

## Build AAB for Play Store

### 1. Generate upload keystore (once)

```bash
keytool -genkey -v -keystore upload-keystore.jks -storetype JKS -keyalg RSA -keysize 2048 -validity 10000 -alias upload
```

Place `upload-keystore.jks` in the project root (same level as `android/`).

### 2. Configure signing

Copy the template and set your passwords:

```bash
cp android/key.properties.template android/key.properties
```

Edit `android/key.properties`:

```properties
storePassword=<your-store-password>
keyPassword=<your-key-password>
keyAlias=upload
storeFile=../upload-keystore.jks
```

### 3. Build release AAB

```bash
flutter pub get
dart run flutter_launcher_icons   # optional: regenerate icons from assets/icon/app_icon.png
flutter build appbundle --release
```

Output: `build/app/outputs/bundle/release/app-release.aab`

## Assets

- Placeholder hero/logo use `placehold.co`; replace with real assets or URLs.
- App icon: replace `assets/icon/app_icon.png` (1024×1024) and run `dart run flutter_launcher_icons`.
- See `image_generation_prompts.md` for AI image prompts (Hero, Logo, App icon, Service icons).

## Store listing

Use `play_store_metadata.txt` for Play Console: title, short description, full description, privacy policy URL.

## Package

- Application ID: `com.haiphatidc.app`
- App name: **Hải Phát IDC**
