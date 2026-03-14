# Image Generation Prompts for Hải Phát IDC App

Use these prompts with Midjourney, Galileo AI, or similar tools to generate assets. Replace placeholders in the app with the generated images.

---

## 1. Hero Banner (Home Screen)

**Aspect ratio:** 3:1 or 16:9 (e.g. 1200×400 or 1920×1080)

**Prompt (English):**
Professional hero banner for a Vietnamese construction company. Wide landscape image showing modern construction or infrastructure: clean industrial building, crane, or completed civil project. Color palette: deep navy blue (#003366) and white, with subtle orange accent. Minimal text area left clear for overlay "HAI PHAT IDC". Corporate, trustworthy, high-quality. No people. Photorealistic, daylight, sharp. --ar 3:1 --v 6

---

## 2. Company Logo (Splash & App Identity)

**Format:** Transparent PNG or white-on-transparent. Safe for use on navy blue (#003366) background.

**Prompt (English):**
Minimalist company logo for "HAI PHAT IDC" construction company. Text-based or abstract mark suggesting building or growth (e.g. upward lines, roof shape). Colors: white and optionally soft orange. Clean, professional, scalable. No photo. Flat design, vector style. White logo on transparent background. --v 6

---

## 3. App Launcher Icon (1024×1024)

**Requirements:** 1024×1024 px, works when cropped to circle (Android adaptive icon).

**Prompt (English):**
App icon for construction company "Hai Phat IDC". Simple, recognizable symbol: abstract building, letter "H" and "P", or geometric shape suggesting construction. Primary color deep navy blue (#003366), accent white or orange. Flat, no gradients. No text. Looks good at small sizes. Square format, centered. --v 6

---

## 4. Service Icons (Optional – 4 icons)

**Style:** Consistent set, 512×512 or 256×256. Same style as app (flat, navy/orange).

- **Civil / Dân dụng:** Icon for residential and civil construction (house, building, school).
- **Industrial / Công nghiệp:** Icon for factories, warehouses, industrial buildings.
- **Traffic / Giao thông:** Icon for roads, bridges, tunnels, traffic infrastructure.
- **Infrastructure / Hạ tầng kỹ thuật:** Icon for utilities: water, electricity, telecom (pipes, cables, towers).

**Prompt (English) – use for each:**
Flat icon, single concept [DESCRIPTION], deep navy blue (#003366) and white, minimal detail. No text. Professional, consistent line weight. Transparent or white background. --v 6

---

## 5. Map / Location Placeholder (Contact Screen)

**Optional.** If you want a custom map-style image instead of Google Maps:

**Prompt (English):**
Stylized map placeholder for business location in Hanoi, Vietnam. Subtle map texture or abstract location pin. Navy blue and light gray. Professional, minimal. No real map data. --ar 3:2 --v 6

---

## Usage After Generation

1. **Hero:** Save as high-res JPG/PNG. Use URL in app or add to `assets/images/` and reference in code.
2. **Logo:** Save as PNG with transparency. Use in Splash screen (asset or network).
3. **App icon:** Save as 1024×1024 PNG. Place at `assets/icon/app_icon.png` and run:  
   `dart run flutter_launcher_icons`
4. **Service icons:** Save each as PNG. Add to `assets/images/` and use in `ServiceCard` or home grid.
