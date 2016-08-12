/*
 * Creative Coding
 * Week 2, 03 - n squares
 * by Indae Hwang and Jon McCormack
 * Updated 2016
 * Copyright (c) 2014-2016 Monash University
 *
 * In the next iteration of the square drawing sketch, this version selects a random number of squares
 * and a random gap between them. From this it calculates the width of each square then draws the squares
 * using two nested for loops.
 *
 * A simple drop shadow is also drawn to give the illusion of depth.
 * 
 */

void setup() {
  size(600, 600);
  rectMode(CORNER);
  noStroke();
  noLoop();
}


void draw() {

  background(234, 233, 240); // clear the screen to grey

  int gridSize = (int) 5;   // select a random number of squares each frame

  // calculate the size of each square for the given number of squares and gap between them
  float cellsize = ( (width-30) - (gridSize + 1) ) / (float)gridSize;

  // print out the size of each square
  println("cellsize = " + cellsize);

  for (int i=0; i<gridSize; i++) {
    for (int j=0; j<gridSize; j++) {
      int gap = (int) random(-3, 4); // select a random gap between each square
      
      if (random(5) > 4) {
        fill(183, 56, 6, 230);
      } else {
        fill(209, 97, 11, 230);
      };
      
      rect((gap * (i+1) + cellsize * i)+15, (gap * (j+1) + cellsize * j)+15, cellsize, cellsize);
    }
  }
} //end of draw 