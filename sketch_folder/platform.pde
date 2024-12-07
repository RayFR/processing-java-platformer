class Platform {
    float x, y, w, h;
    
    Platform(float startX, float startY, float pWidth, float pHeight) {
        x = startX;
        y = startY;
        w = pWidth;
        h = pHeight;
    }
    
    void draw() {
        fill(255);
        rect(x, y, w, h);
    }
}
