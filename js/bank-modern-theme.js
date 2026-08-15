(function () {
    function replaceBrokenLogo(image) {
        if (!image || image.dataset.bankLogoChecked === "1") {
            return;
        }

        var looksLikeLogo = /logo/i.test(image.alt || "") ||
            /navbar-brand-img|footer-logo|auth__logo/.test(image.className || "") ||
            (image.closest && image.closest(".navbar-brand, .footer-logo"));

        if (!looksLikeLogo || image.naturalWidth > 0) {
            return;
        }

        image.dataset.bankLogoChecked = "1";
        image.style.display = "none";

        var parent = image.parentElement;
        if (!parent || parent.querySelector(".bank-logo-text")) {
            return;
        }

        var brand = document.createElement("span");
        brand.className = "bank-logo-text";
        brand.textContent = document.title.split(" - ").pop().split(" | ")[0] || "Bank";
        parent.appendChild(brand);
    }

    function checkLogos() {
        document.querySelectorAll("img").forEach(function (image) {
            if (image.complete) {
                replaceBrokenLogo(image);
            } else {
                image.addEventListener("error", function () {
                    replaceBrokenLogo(image);
                }, { once: true });
                image.addEventListener("load", function () {
                    if (image.naturalWidth === 0) {
                        replaceBrokenLogo(image);
                    }
                }, { once: true });
            }
        });
    }

    if (document.readyState === "loading") {
        document.addEventListener("DOMContentLoaded", checkLogos);
    } else {
        checkLogos();
    }

    window.setTimeout(checkLogos, 700);
})();
