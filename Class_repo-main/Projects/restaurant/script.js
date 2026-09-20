const money = new Intl.NumberFormat("en-US", { style: "currency", currency: "USD" });
const navToggle = document.querySelector(".navbar-toggler");
const navigation = document.getElementById("main-nav");
if (navToggle && navigation) {
    navToggle.addEventListener("click", () => {
        const expanded = navToggle.getAttribute("aria-expanded") === "true";
        navToggle.setAttribute("aria-expanded", String(!expanded));
        navigation.classList.toggle("show", !expanded);
    });
}

// Each carousel slide is a complete set of cards for one meal.
const mealCategories = ["Breakfast", "Lunch", "Dinner"];
let menuItems = [];
let currentMealIndex = 0;
const menuCards = document.getElementById("menu-cards");
const featuredPrice = document.getElementById("featured-price");

function renderMeal() {
    const category = mealCategories[currentMealIndex];
    const items = menuItems.filter(item => item.category === category);
    menuCards.replaceChildren();
    document.getElementById("meal-heading").textContent = category;

    items.forEach(item => {
        const card = document.createElement("article");
        card.className = "card meal-card";

        const image = document.createElement("img");
        image.className = "meal-card-image";
        image.src = "images/" + item.img;
        image.alt = item.imageAlt || item.name;
        image.loading = "lazy";

        const content = document.createElement("div");
        content.className = "meal-card-content";

        const name = document.createElement("h3");
        name.textContent = item.name;

        const description = document.createElement("p");
        description.textContent = item.description;

        const price = document.createElement("p");
        price.className = "menu-price";
        price.textContent = money.format(item.price);

        content.append(name, description, price);
        card.append(image, content);
        menuCards.append(card);
    });

    document.getElementById("menu-count").textContent = category + " · " +
        (currentMealIndex + 1) + " of " + mealCategories.length + " · " +
        (items.length ? items.length + " dishes" : "No dishes available");
    document.getElementById("prev-button").disabled = false;
    document.getElementById("next-button").disabled = false;
}

function prevImage() {
    if (!menuItems.length || !menuCards) return;
    currentMealIndex = (currentMealIndex - 1 + mealCategories.length) % mealCategories.length;
    renderMeal();
}

function nextImage() {
    if (!menuItems.length || !menuCards) return;
    currentMealIndex = (currentMealIndex + 1) % mealCategories.length;
    renderMeal();
}

async function loadMenu() {
    try {
        const response = await fetch("menu.json");
        if (!response.ok) throw new Error("Menu request failed.");
        menuItems = await response.json();
        if (!Array.isArray(menuItems) || menuItems.length < 10 ||
            !menuItems.every(item => typeof item.name === "string" &&
                typeof item.description === "string" && Number.isFinite(item.price) &&
                ["Breakfast", "Lunch", "Dinner"].includes(item.category) &&
                typeof item.img === "string")) {
            throw new Error("Invalid menu data.");
        }
        if (featuredPrice) featuredPrice.textContent = money.format(menuItems[0].price);
        if (menuCards) renderMeal();
    } catch (error) {
        if (featuredPrice) featuredPrice.textContent = "Price unavailable. ";
        const status = document.getElementById("menu-count");
        if (status) {
            status.textContent = "The menu is unavailable. Please try again later. ";
            const link = document.createElement("a");
            link.href = "error.html";
            link.textContent = "Return to a familiar page";
            status.append(link);
        }
        console.error(error);
    }
}

if (menuCards) {
    document.getElementById("prev-button").addEventListener("click", prevImage);
    document.getElementById("next-button").addEventListener("click", nextImage);
}
if (menuCards || featuredPrice) loadMenu();

function validateReservation(reservation) {
    const errors = [];

    if (!reservation.name) {
        errors.push("Enter your name.");
    } else if (reservation.name.length > 20) {
        errors.push("Name must be 20 characters or fewer.");
    }

    if (!/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(reservation.email)) {
        errors.push("Enter a valid email address, such as guest@example.com.");
    }

    if (
        !Number.isInteger(reservation.partySize) ||
        reservation.partySize < 1 ||
        reservation.partySize > 8
    ) {
        errors.push("Choose a party size from 1 to 8.");
    }

    const date = new Date(reservation.date + "T00:00:00");
    const today = new Date();
    today.setHours(0, 0, 0, 0);

    const validDate =
        /^\d{4}-\d{2}-\d{2}$/.test(reservation.date) &&
        !Number.isNaN(date.getTime()) &&
        date.getFullYear() === Number(reservation.date.slice(0, 4)) &&
        date.getMonth() + 1 === Number(reservation.date.slice(5, 7)) &&
        date.getDate() === Number(reservation.date.slice(8, 10));

    if (!validDate) {
        errors.push("Choose a valid reservation date.");
    } else if (date < today) {
        errors.push("Choose today or a future date.");
    } else if (date.getDay() === 1) {
        errors.push("The cellar is closed on Mondays. Choose Tuesday through Sunday.");
    }

    if (!/^([01]\d|2[0-3]):[0-5]\d$/.test(reservation.time)) {
        errors.push("Choose a reservation time.");
    } else if (reservation.time < "08:00" || reservation.time > "22:00") {
        errors.push("Choose a time between 8:00 a.m. and 10:00 p.m.");
    } else if (
        validDate &&
        new Date(reservation.date + "T" + reservation.time) <= new Date()
    ) {
        errors.push("Choose a reservation time in the future.");
    }

    const seatingOptions = [
        "cellar-booth",
        "boiler-table",
        "lamp-counter"
    ];

    if (!seatingOptions.includes(reservation.seating)) {
        errors.push("Choose a seating preference.");
    }

    if (reservation.dietaryNotes.length > 30) {
        errors.push("Dietary notes must be 30 characters or fewer.");
    }

    return errors;
}

function showReservationFeedback(errors, reservation) {
    const feedback = document.getElementById("reservation-feedback");

    if (!feedback) {
        return;
    }

    const alert = document.createElement("div");
    alert.className = errors.length
        ? "alert alert-danger"
        : "alert alert-success";

    alert.tabIndex = -1;
    alert.setAttribute("role", errors.length ? "alert" : "status");

    const message = document.createElement("p");
    message.className = "mb-0";

    if (errors.length) {
        message.textContent = "Please correct the following:";

        const list = document.createElement("ul");
        list.className = "mt-2 mb-0";

        errors.forEach(error => {
            const listItem = document.createElement("li");
            listItem.textContent = error;
            list.append(listItem);
        });

        alert.append(message, list);
    } else {
        message.textContent =
            "Thank you, " + reservation.name + "! Your request for " +
            reservation.partySize + " guest(s) on " + reservation.date +
            " at " + reservation.time + ". This demo has not sent or confirmed a booking.";

        alert.append(message);
    }

    feedback.replaceChildren(alert);
    alert.focus();
}

const reservationForm = document.getElementById("reservation-form");

if (reservationForm) {
    reservationForm.noValidate = true;

    reservationForm.addEventListener("submit", event => {
        event.preventDefault();

        const formData = new FormData(reservationForm);

        const reservation = {
            name: (formData.get("guest-name") || "").trim(),
            email: (formData.get("guest-email") || "").trim(),
            partySize: Number(formData.get("party-size")),
            date: formData.get("reservation-date") || "",
            time: formData.get("reservation-time") || "",
            seating: formData.get("seating") || "",
            dietaryNotes: (formData.get("dietary-notes") || "").trim(),
            newsletter: formData.has("newsletter")
        };

        const errors = validateReservation(reservation);
        showReservationFeedback(errors, reservation);
        if (errors.length === 0) {
            console.log(JSON.stringify(reservation, null, 2));
        }
    });

    function clearReservationFeedback() {
        const feedback = document.getElementById("reservation-feedback");

        if (feedback) {
            feedback.replaceChildren();
        }
    }

    reservationForm.addEventListener("reset", clearReservationFeedback);
    reservationForm.addEventListener("input", clearReservationFeedback);
}
