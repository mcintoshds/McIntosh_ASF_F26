const MENU_ITEMS = [
    {
        id: 1,
        name: "Green Lantern Board",
        description: "Chicken skewers, pretzel bites, pickles, and smoked tea tonic.",
        price: 18,
        category: "Lunch"
    },
    {
        id: 2,
        name: "Midnight Courier",
        description: "Brisket sliders, copper fries, onion jam, and cherry cola.",
        price: 17,
        category: "Dinner"
    },
    {
        id: 3,
        name: "Boiler-Room Mushrooms",
        description: "Roasted mushrooms, rye toast, herb cream, and ginger-lime tonic.",
        price: 14,
        category: "Lunch"
    },
    {
        id: 4,
        name: "Signal Lantern Trout",
        description: "Crispy trout, crushed potatoes, dill salad, and citrus tonic.",
        price: 19,
        category: "Dinner"
    },
    {
        id: 5,
        name: "Short-Leg Special",
        description: "Braised pork, buttered noodles, cabbage, and spiced apple tonic.",
        price: 17,
        category: "Dinner"
    },
    {
        id: 6,
        name: "Tunnel Garden Plate",
        description: "Lentil croquettes, roasted roots, herb sauce, and cucumber tonic.",
        price: 15,
        category: "Lunch"
    },
    {
        id: 7,
        name: "First-Shift Griddle",
        description: "Buttermilk pancakes, apple compote, and hot breakfast tea.",
        price: 10.5,
        category: "Breakfast"
    },
    {
        id: 8,
        name: "Engineer’s Eggs",
        description: "Scrambled eggs, crisp potatoes, and sourdough toast.",
        price: 11,
        category: "Breakfast"
    },
    {
        id: 9,
        name: "Courier’s Oats",
        description: "Warm oats with berries, cinnamon, and toasted seeds.",
        price: 8.5,
        category: "Breakfast"
    },
    {
        id: 10,
        name: "Dockside Breakfast",
        description: "Egg and cheddar sandwich with tomato relish and tea.",
        price: 12,
        category: "Breakfast"
    },
    {
        id: 11,
        name: "Pantry-Wall Melt",
        description: "Toasted cheese and mushroom sandwich with tomato soup.",
        price: 13.5,
        category: "Lunch"
    },
    {
        id: 12,
        name: "Last-Lamp Roast",
        description: "Slow-roasted chicken, garlic mash, seasonal greens, and tea tonic.",
        price: 21.5,
        category: "Dinner"
    }
];

const money = new Intl.NumberFormat("en-US", {
    style: "currency",
    currency: "USD"
});

function renderMenu(category) {
    const menuContainer = document.getElementById("menu-items");

    menuContainer.replaceChildren();

    const items = MENU_ITEMS.filter(item =>
        category === "All" || item.category === category
    );

    items.forEach(item => {
        const row = document.createElement("tr");
        row.id = "menu-item-" + item.id;

        const name = document.createElement("th");
        name.scope = "row";
        name.textContent = item.name;

        const description = document.createElement("td");
        description.textContent = item.description;

        const price = document.createElement("td");
        price.className = "table-price";
        price.textContent = money.format(item.price);

        const categoryCell = document.createElement("td");
        categoryCell.textContent = item.category;

        row.append(name, description, price, categoryCell);
        menuContainer.append(row);
    });

    document.getElementById("menu-count").textContent =
        items.length + " items available";
}

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
            " at " + reservation.time +
            " passed validation. This is a lab confirmation; no booking was sent.";

        alert.append(message);
    }

    feedback.replaceChildren(alert);
    alert.focus();
}

const menuContainer = document.getElementById("menu-items");
const categoryFilter = document.getElementById("category-filter");

if (menuContainer && categoryFilter) {
    renderMenu(categoryFilter.value);

    categoryFilter.addEventListener("change", event => {
        renderMenu(event.target.value);
    });
}

const featuredPrice = document.getElementById("featured-price");

if (featuredPrice) {
    featuredPrice.textContent = money.format(MENU_ITEMS[0].price);
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