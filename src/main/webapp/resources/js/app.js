// Simple JavaScript example
document.addEventListener('DOMContentLoaded', function () {
    console.log('Spring MVC app loaded successfully!');

    // Add current year to footer
    const yearElement = document.getElementById('current-year');
    if (yearElement) {
        yearElement.textContent = new Date().getFullYear();
    }

    // Add click event to buttons
    const buttons = document.querySelectorAll('.button');
    buttons.forEach(button => {
        button.addEventListener('click', function () {
            alert('Button clicked: ' + this.textContent);
        });
    });
});