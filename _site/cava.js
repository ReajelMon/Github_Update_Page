// cava.js

// Function to handle the button click
function handleButtonClick() {
    // Get the info-popup element
    var popup = document.getElementById("info-popup");

    // Toggle the display of the popup (show/hide)
    if (popup.style.display === "none" || popup.style.display === "") {
        popup.style.display = "block";
    } else {
        popup.style.display = "none";
    }
}

// Add a click event listener to the button
document.getElementById("info-button").addEventListener("click", handleButtonClick);
