async function loadComponent(id, file) {
    try {
        const response = await fetch(`components/${file}`);
        const html = await response.text();
        document.getElementById(id).innerHTML = html;
    } catch (err) {
        console.error(`Failed to load ${file}`, err);
    }
}

document.addEventListener("DOMContentLoaded", () => {

    loadComponent("navbar", "navbar.html");
    loadComponent("hero", "hero.html");
    loadComponent("mission", "mission.html");
    loadComponent("impact", "impact.html");
    loadComponent("programs", "programs.html");
    loadComponent("events", "events.html");
    loadComponent("shop", "chop-shop.html");
    loadComponent("gallery", "gallery.html");
    loadComponent("cta", "cta.html");
    loadComponent("footer", "footer.html");

});