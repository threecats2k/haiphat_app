# Play Store Release Checklist - Hải Phát IDC

## Compliance Status

### Android API Level (CRITICAL)
- **targetSdkVersion**: 35 (Android 15) — **Compliant** for Aug 31, 2025 deadline
- **minSdkVersion**: 21 — Acceptable (covers most devices)
- **compileSdk**: Set by Flutter (typically 35)

### Dependencies Updated (Mar 2025)
| Package | Before | After | Notes |
|---------|--------|-------|-------|
| url_launcher | ^6.2.5 | ^6.3.0 | Security/ compatibility |
| google_fonts | ^6.2.1 | ^8.0.0 | Font loading, network |
| flutter_lints | ^5.0.0 | ^6.0.0 | Dev only |
| flutter_launcher_icons | ^0.13.1 | ^0.14.0 | Dev only |

Run `flutter pub get` and `flutter pub upgrade` to resolve to latest.

### Play Store Requirements
- [x] targetSdk 35 (required by Aug 31, 2025 for new apps)
- [x] App Bundle (.aab) — use `flutter build appbundle --release`
- [x] 64-bit native libraries (Flutter includes by default)
- [ ] Privacy Policy URL — replace placeholder in `play_store_metadata.txt`
- [ ] Signing — ensure `key.properties` and `upload-keystore.jks` exist for release

### Before Submitting
1. Run `flutter pub get` and `flutter analyze`
2. Build release: `flutter build appbundle --release`
3. Test on real device: `flutter run --release`
4. Update `play_store_metadata.txt` with real Privacy Policy URL
5. Fill `android/key.properties` from `key.properties.template`
