// CTRL+SHIFT+B for run with tasks in Visual Studio Code

PVector p1;
PVector p2;

void setup() {
    size(800,600);

    p1 = new PVector(50, 50);
    p2 = new PVector(100, 200);
}

void line(PVector p1, PVector p2){
    line(p1.x, p1.y, p2.x, p2.y);
}

void circle(PVector p, float diameter) {
    circle(p.x, p.y, diameter);
}

void draw() {
    background(255);
    line(p1, p2);

    PVector mouse = new PVector(mouseX, mouseY);
    if(PVector.dist(p1, mouse) <= 10) {
        circle(p1, 10);

        if(mousePressed && mouseButton == LEFT) {
            p1 = mouse;
        }
    }

    if(PVector.dist(p2, mouse) <= 10) {
        circle(p2, 10);

        if(mousePressed && mouseButton == LEFT) {
            p2 = mouse;
        }
    }
}
