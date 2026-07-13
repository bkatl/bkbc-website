#!/usr/bin/env bash

set -e

echo "======================================="
echo "Building BKBC Homepage Components"
echo "======================================="

mkdir -p components

########################################
# HERO
########################################

cat > components/hero.html <<'EOF'
<section class="hero">

    <div class="hero-overlay">

        <div class="hero-content">

            <span class="eyebrow">
                Building Leaders Since Day One
            </span>

            <h1>
                Building Tomorrow's
                <br>
                Billionaires Today
            </h1>

            <p>
                Empowering youth through literacy,
                STEM, entrepreneurship,
                sports, leadership and life skills.
            </p>

            <div class="hero-buttons">

                <a href="membership.html" class="btn-primary">
                    Become A Member
                </a>

                <a href="programs.html" class="btn-secondary">
                    Explore Programs
                </a>

            </div>

        </div>

    </div>

</section>
EOF

echo "✔ hero.html"

########################################
# MISSION
########################################

cat > components/mission.html <<'EOF'
<section class="mission">

    <div class="container">

        <h2>
            Our Mission
        </h2>

        <p>

            The Billionaire Kids Book Club prepares
            young people to become readers,
            innovators, entrepreneurs and servant
            leaders by combining education,
            athletics, technology and creativity
            into one transformational experience.

        </p>

    </div>

</section>
EOF

echo "✔ mission.html"

########################################
# IMPACT
########################################

cat > components/impact.html <<'EOF'
<section class="impact">

    <div class="counter">

        <h2>13+</h2>

        <p>Programs</p>

    </div>

    <div class="counter">

        <h2>300+</h2>

        <p>Youth Served</p>

    </div>

    <div class="counter">

        <h2>1000+</h2>

        <p>Books Read</p>

    </div>

    <div class="counter">

        <h2>50+</h2>

        <p>Community Events</p>

    </div>

</section>
EOF

echo "✔ impact.html"

echo ""
echo "======================================="
echo "Homepage components created successfully"
echo "======================================="