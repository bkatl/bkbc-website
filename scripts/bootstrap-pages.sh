#!/usr/bin/env bash

set -e

PAGES=(
  "programs"
  "events"
  "membership"
  "gallery"
  "chop-shop"
  "contact"
)

echo "Creating BKBC pages..."

for PAGE in "${PAGES[@]}"
do

FILE="${PAGE}.html"

cat > "$FILE" <<EOF
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>BKBC | ${PAGE^}</title>

<link rel="stylesheet" href="common/css/bootstrap.css">
<link rel="stylesheet" href="common/css/main.css">
<link rel="stylesheet" href="common/css/mobile.css">

</head>

<body>

<div id="navbar"></div>

<main>

<section class="page-hero">

<div class="container">

<h1>${PAGE^}</h1>

<p>
Billionaire Kids Book Club
</p>

</div>

</section>

</main>

<div id="footer"></div>

<script src="common/js/main.js"></script>

</body>

</html>
EOF

echo "✔ Created ${FILE}"

done

echo ""
echo "Bootstrap complete."