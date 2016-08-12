/*
 * Based on:
 *
 * Creative Coding
 * Week 2, 02 - Nine Squares, part 2
 * by Indae Hwang and Jon McCormack
 * Updated 2016
 * Copyright (c) 2014-2016 Monash University
 * 
 */

// variables:
int gridSize = 4;  // number of rows/cols

void setup() {
  size(600, 600);
  background(180);
  noLoop(); // only execute the draw function once
  noStroke();
}


void draw() {
  for (int i=0; i<gridSize; i++) { // col
    for (int j=0; j<gridSize; j++) { // row

      // Choose a different colour each time
      fill(random(255), random(255), random(255));
      
      // draw the rectangle
      rect((width / gridSize)*i + 25, (width / gridSize)*j + 25, (width / gridSize) - 50, (width / gridSize) - 50);
    } // end for (j)
  } // end for (i)
}