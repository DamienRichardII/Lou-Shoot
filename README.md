# Lou Shoot — Portfolio v2
## Navigation hiérarchique

```
ÉTAPE 1 — index.html
  │  Vidéo Brand plein cadre  ──── clic ──→  brand.html
  │  Vidéo Editorial plein cadre ─ clic ──→  editorial.html
  └  Image Contact plein cadre ── clic ──→  contact.html

ÉTAPE 2 — brand.html
  │  couv YYB          ── clic ──→  brand/yyb.html
  │  couv Fetcha       ── clic ──→  brand/fetcha.html
  │  couv Dedictd      ── clic ──→  brand/dedictd.html
  │  couv Cinq Visages ── clic ──→  brand/cinq-visages.html
  └  couv Jamais Nue   ── clic ──→  brand/jamais-nue.html

ÉTAPE 2 — editorial.html
  │  couv Enzomnia         ── clic ──→  editorial/enzomnia-someone-else.html
  │  couv Goji Roots       ── clic ──→  editorial/goji-roots-signal.html
  │  couv Selin Animal     ── clic ──→  editorial/selin-animal-instict.html
  └  couv 1723             ── clic ──→  editorial/1723-la-goutte-de-trop.html

ÉTAPE 2 — contact.html
  └  Réseaux sociaux + galerie photo
```

---

## Intégration des médias

### index.html — Vidéos portail (les + importantes)

**Brand portal :**
```html
<!-- Remplacer le <div class="portal-media ph ..."> par : -->
<video class="portal-media" autoplay muted loop playsinline>
  <source src="assets/sections/brand/section-entry/Couv.MOV" type="video/mp4" />
</video>
```

**Editorial portal :**
```html
<video class="portal-media" autoplay muted loop playsinline>
  <source src="assets/sections/editorial/section-entry/Couverture.MP4" type="video/mp4" />
</video>
```

**Contact portal :**
```html
<img class="portal-media" src="assets/sections/contact/section-entry/Couv.jpg" alt="Contact" />
```

---

### brand.html — Couvertures cliquables
```html
<!-- YYB -->
<img src="assets/sections/brand/yyb/couv.jpg" alt="YYB" />
<!-- Fetcha -->
<img src="assets/sections/brand/fetcha/couv.jpg" alt="Fetcha" />
<!-- etc. -->
```

### brand/XXX.html — Chaque page projet
```html
<img src="../assets/sections/brand/XXX/couv.jpg" alt="..." />        ← hero
<img src="../assets/sections/brand/XXX/banniere.jpg" alt="..." />     ← bannière
<img src="../assets/sections/brand/XXX/photo-01.jpg" alt="..." />     ← galerie ×4
```

### editorial.html — Couvertures cliquables
```html
<img src="assets/sections/editorial/enzomnia-someone-else/banniere.jpg" ... />
<img src="assets/sections/editorial/goji-roots-signal/couv.jpg" ... />
```

### contact.html
```html
<img src="assets/sections/contact/section-entry/Couv.jpg" alt="Lou Shoot" />
<img src="assets/sections/contact/gallery/photo-01.jpg" alt="" />
<img src="assets/sections/contact/gallery/photo-02.jpg" alt="" />
```

---

## Réseaux (déjà câblés)
- Instagram : https://www.instagram.com/lou.shoot/
- TikTok : https://www.tiktok.com/@lou.shoot
- Facebook : https://www.facebook.com/fabrifotography/
