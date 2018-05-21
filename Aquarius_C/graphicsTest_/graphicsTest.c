#include <stdio.h>
#include <graphics.h>

#define MAX_X 255
#define MAX_Y 191
#define MIDDLE_X 127
#define MIDDLE_Y 96
#define RADIUS 13

void main(void) {
  int x, y;
  clga(0, 0, MAX_X + 1, MAX_Y + 1);
  for (x = 0; x <= MAX_X; x = x + 7)
    for (y = 0; y <= MAX_Y;  y = y + 5)
      draw(MIDDLE_X, MIDDLE_Y, x, y);

  clga(0, 0, MAX_X + 1, MAX_Y + 1);
  for (x = RADIUS; x < MAX_X - RADIUS; x = x + 5)
    for (y = RADIUS; y <= MAX_Y - RADIUS;  y = y + 3)
        circle(x, y, RADIUS, 1);
}
