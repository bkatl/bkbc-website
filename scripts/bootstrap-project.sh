#!/usr/bin/env bash

set -e

echo "=========================================="
echo " BKBC Project Bootstrap"
echo "=========================================="

echo ""
echo "Creating directory structure..."

mkdir -p common/css
mkdir -p common/js
mkdir -p common/data

mkdir -p common/images
mkdir -p common/images/hero
mkdir -p common/images/programs
mkdir -p common/images/events
mkdir -p common/images/gallery
mkdir -p common/images/shop
mkdir -p common/images/logos
mkdir -p common/images/icons
mkdir -p common/images/backgrounds
mkdir -p common/images/team
mkdir -p common/images/sponsors

mkdir -p docs
mkdir -p scripts
mkdir -p components

echo ""
echo "Creating CSS files..."

touch common/css/variables.css
touch common/css/typography.css
touch common/css/layout.css
touch common/css/components.css
touch common/css/pages.css
touch common/css/mobile.css

echo ""
echo "Creating JavaScript files..."

touch common/js/app.js
touch common/js/navigation.js
touch common/js/components.js
touch common/js/animations.js

echo ""
echo "Creating placeholder data..."

touch common/data/programs.json
touch common/data/events.json
touch common/data/products.json

echo ""
echo "Creating HTML pages..."

PAGES=(
index
programs
events
membership
gallery
chop-shop
contact
about
)

for PAGE in "${PAGES[@]}"
do

FILE="${PAGE}.html"

if [ ! -f "$FILE" ]; then

cat > "$FILE" <<EOF
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">
<meta name="viewport"
content="width=device-width, initial-scale=1.0">

<title>BKBC | ${PAGE^}</title>

<link rel="stylesheet"
href="common/css/bootstrap.css">

<link rel="stylesheet"
href="common/css/main.css">

<link rel="stylesheet"
href="common/css/mobile.css">

</head>

<body>

<header>

<h1>BKBC</h1>

</header>

<main>

<h2>${PAGE^}</h2>

<p>Content coming soon...</p>

</main>

<script src="common/js/main.js"></script>

</body>

</html>
EOF

echo "Created ${FILE}"

else

echo "${FILE} already exists...skipping."

fi

done

echo ""
echo "Creating documentation..."

touch README.md
touch CHANGELOG.md

echo ""
echo "Bootstrap Complete."
echo ""