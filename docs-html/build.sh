#!/usr/bin/env bash
# Render all Pedia markdown docs as simple HTML, EN and FR.
# Output: docs-html/{NAME}-EN.html  and  docs-html/{NAME}-FR.html
# Usage:  ./build.sh   (from docs-html/)

set -euo pipefail

cd "$(dirname "$0")"
OUT_DIR="$(pwd)"
REPO_ROOT="$(cd .. && pwd)"

# Doc list: filename stem matches both EN and FR source files.
DOCS=(README CLAUDE PRD PITCH BUSINESS_PLAN PRACTICE_QUESTIONS RGPD ANAMNESIS_REPORT BRAND canva-prompts pitch-script)

# Pretty labels for the index
declare -A LABELS=(
  [README]="README - project orientation"
  [CLAUDE]="CLAUDE - guidance for Claude Code"
  [PRD]="PRD - product requirements"
  [PITCH]="PITCH - slide-by-slide pitch script"
  [BUSINESS_PLAN]="BUSINESS_PLAN - seed one-pager"
  [PRACTICE_QUESTIONS]="PRACTICE_QUESTIONS - jury Q&A"
  [RGPD]="RGPD - regulatory brief"
  [ANAMNESIS_REPORT]="ANAMNESIS_REPORT - semiology skeleton"
  [BRAND]="BRAND - slide palette"
  [canva-prompts]="canva-prompts - per-slide briefs"
  [pitch-script]="pitch-script - 3-min spoken script"
)

declare -A LABELS_FR=(
  [README]="README - orientation du projet"
  [CLAUDE]="CLAUDE - consignes pour Claude Code"
  [PRD]="PRD - exigences produit"
  [PITCH]="PITCH - script de pitch slide par slide"
  [BUSINESS_PLAN]="BUSINESS_PLAN - one-pager seed"
  [PRACTICE_QUESTIONS]="PRACTICE_QUESTIONS - Q&R jury"
  [RGPD]="RGPD - brief réglementaire"
  [ANAMNESIS_REPORT]="ANAMNESIS_REPORT - squelette sémiologique"
  [BRAND]="BRAND - palette slides"
  [canva-prompts]="canva-prompts - briefs slide par slide"
  [pitch-script]="pitch-script - script oral 3 min"
)

render() {
  local lang="$1"   # EN or FR
  local stem="$2"
  local src
  local out="${OUT_DIR}/${stem}-${lang}.html"
  local label
  local other_lang
  local other_label

  if [ "$lang" = "EN" ]; then
    src="${REPO_ROOT}/${stem}.md"
    label="${LABELS[$stem]}"
    other_lang="FR"
    other_label="Français"
  else
    src="${OUT_DIR}/fr/${stem}.md"
    label="${LABELS_FR[$stem]}"
    other_lang="EN"
    other_label="English"
  fi

  local header_html
  header_html=$(cat <<EOF
<header class="topbar">
  <div><span class="brand">Pedia</span> · ${label}</div>
  <div class="lang">
    <a class="current">${lang}</a> · <a href="${stem}-${other_lang}.html">${other_label}</a> · <a href="index-${lang}.html">index</a>
  </div>
</header>
EOF
)

  local footer_html="<footer>Pedia · Hackathon ANDCS × MIT 2026 · Track 2 - AI in Pediatrics · rendered $(date +%Y-%m-%d)</footer>"

  pandoc "$src" \
    --from gfm \
    --to html5 \
    --standalone \
    --metadata title="Pedia - ${stem} (${lang})" \
    --css style.css \
    --include-before-body <(echo "$header_html") \
    --include-after-body <(echo "$footer_html") \
    --output "$out"
}

for stem in "${DOCS[@]}"; do
  render EN "$stem"
  render FR "$stem"
  echo "rendered: ${stem}-EN.html + ${stem}-FR.html"
done

# Index pages
make_index() {
  local lang="$1"
  local -n labels_ref="$2"
  local title subtitle
  local other_lang other_label
  if [ "$lang" = "EN" ]; then
    title="Pedia docs"
    subtitle="Pedia · Hackathon ANDCS × MIT 2026 · Track 2 - AI in Pediatrics"
    other_lang="FR"
    other_label="Français"
  else
    title="Documents Pedia"
    subtitle="Pedia · Hackathon ANDCS × MIT 2026 · Track 2 - AI in Pediatrics"
    other_lang="EN"
    other_label="English"
  fi

  local out="${OUT_DIR}/index-${lang}.html"
  {
    cat <<EOF
<!DOCTYPE html>
<html lang="${lang,,}">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>${title}</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
<header class="topbar">
  <div><span class="brand">Pedia</span> · ${title}</div>
  <div class="lang">
    <a class="current">${lang}</a> · <a href="index-${other_lang}.html">${other_label}</a>
  </div>
</header>
<h1>${title}</h1>
<p>${subtitle}</p>
<div class="docs-grid">
EOF

    for stem in "${DOCS[@]}"; do
      local lbl="${labels_ref[$stem]}"
      local name="${lbl%% - *}"
      local sub="${lbl#* - }"
      cat <<EOF
  <a href="${stem}-${lang}.html">
    <div class="name">${name}</div>
    <div class="sub">${sub}</div>
  </a>
EOF
    done

    cat <<EOF
</div>
<footer>Pedia · rendered $(date +%Y-%m-%d)</footer>
</body>
</html>
EOF
  } > "$out"
  echo "index: ${out}"
}

make_index EN LABELS
make_index FR LABELS_FR

echo "done."
