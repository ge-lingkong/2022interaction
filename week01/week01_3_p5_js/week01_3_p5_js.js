function setup() {
    initializeFields();
    createCanvas(500, 500);
}

function draw() {
    background(color(0xFC, 0xFF, 0xB4));
    fill(color(0xB4, 0xEF, 0xFF));
    rect(100, 100, 100, 150);
    rect(mouseX, mouseY, 100, 150);
}

function initializeFields() {
}
