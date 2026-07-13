#!/usr/bin/env bash

set -e

echo "Creating BKBC component architecture..."

mkdir -p components

COMPONENTS=(
navbar
hero
mission
impact
programs
events
chop-shop
gallery
cta
footer
)

for COMPONENT in "${COMPONENTS[@]}"
do

FILE="components/${COMPONENT}.html"

if [ ! -f "$FILE" ]; then

cat > "$FILE" <<EOF
<section id="${COMPONENT}">

<!--
=========================================
${COMPONENT^^}
=========================================
-->

</section>
EOF

echo "Created ${FILE}"

fi

done

echo ""
echo "Done."