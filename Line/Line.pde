// CTRL+SHIFT+B for run with tasks in Visual Studio Code

PVector p1;
PVector p2;
int P1 = 0;
int P2 = 1;

int selected;

void setup() {
    size(800,600);
    
    p1 = new PVector(50, 50);
    p2 = new PVector(100, 200);
    
    this.selected = -1;
}

void line(PVector p1, PVector p2) {
    line(p1.x, p1.y, p2.x, p2.y);
}

void circle(PVector p, float diameter) {
    circle(p.x, p.y, diameter);
}

void draw() {
    background(255);
    line(p1, p2);
    
    PVector mouse = new PVector(mouseX, mouseY);
    
    if (selected == P1) {
        cursor(MOVE);
        p1 = mouse;
    } else if (selected == P2) {
        cursor(MOVE);
        p2 = mouse;
    } else if (selected == -1) {
        cursor(ARROW);
    }
    
    if (PVector.dist(p1, mouse) <= 10 && selected == -1) {
        circle(p1, 10);
        cursor(HAND);
    } else if (PVector.dist(p2, mouse) <= 10 && selected == -1) {
        circle(p2, 10);
        cursor(HAND);
    }
}

void mouseClicked() {
    PVector mouse = new PVector(mouseX, mouseY);
    
    if (PVector.dist(p1, mouse) <= 10) {
        selected = (selected == P1) ? - 1 : P1;
    } else if (PVector.dist(p2, mouse) <= 10) {
        selected = (selected == P2) ? - 1 : P2;
    }
}
