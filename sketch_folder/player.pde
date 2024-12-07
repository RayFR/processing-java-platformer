class Player {
    float x, y;
    float vx, vy = 0;
    float radius = 20;
    int playerColor;
    float gravity = 0.5;
    float maxSpeed = 5;
    float acceleration = 2;
    float friction = 0.1;
    float jumpForce = 25;
    boolean grounded;
    
    Player(float startX, float startY) {
        x = startX;
        y = startY;
        playerColor = 255;
    }
    
    void move() {
        if (vx > 0) { // adds friction to player movements 
            vx -= friction;
            if (vx <0) vx = 0;
        } else if (vx < 0) {
            vx += friction;
            if (vx > 0) vx = 0;
        }
        
        if (vx > maxSpeed) vx = maxSpeed;
        if (vx < -maxSpeed) vx = -maxSpeed;
      
        vy += gravity;
        
        x += vx;
        y += vy;
        
        if (y > height - radius) {
            y = height - radius;
            vy = 0;
            grounded = true;
            friction = 0.1;
        } else {
            grounded = false;
            friction = 0;
        }
        
    }
    
    void draw() {
        fill(playerColor);
        ellipse(x, y, radius * 2, radius * 2);
    }
}
