#!/bin/bash

PAGES=(
"programs.html"
"events.html"
"membership.html"
"gallery.html"
"chop-shop.html"
"contact.html"
)

for PAGE in "${PAGES[@]}"
do
TITLE=$(basename "$PAGE" .html)

cat > "$PAGE" <<EOF
<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>BKBC | ${TITLE^}</title>

    <link rel="stylesheet" href="common/css/bootstrap.css">
    <link rel="stylesheet" href="common/css/main.css">
    <link rel="stylesheet" href="common/css/mobile.css">

</head>

<body>

    <div id="navbar"></div>

    <main>

        <section class="page-hero">

            <div class="container">

                <h1>${TITLE^}</h1>

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

echo "Created $PAGE"

done