import java.util.HashSet;

Player player;
Platform platform;

HashSet<Integer> activeKeys = new HashSet<>(); // initialised the hash set to track current key pressing list --> this lets me have multiple different inputs at once
// idk what the fuck this hashsset shit is :skull: -- UPDATE i understand it now

void setup() {
   size(1024, 768); 
   player = new Player(400, 100);
}

void draw() {
   background(0); 
   player.move();
   player.draw();
   
   platform.draw
   
    if (activeKeys.contains(68)) { 
        player.vx += player.acceleration; 
    } 
    if (activeKeys.contains(65)) { 
        player.vx -= player.acceleration;
    }
    if (activeKeys.contains(32) && player.grounded) { 
        player.vy -= player.jumpForce;
    }
   
}

void keyPressed() {
    activeKeys.add((int) keyCode); // adds the pressed key to the HashSet blah ablaj l
}

void keyReleased() {
    activeKeys.remove((int) keyCode); // removes the key from HashSet on release
}
