float x;
float y;
float r;
float xPos;
float yPos;
float xAxis = 30;
float yAxis = 30;
float xAxisv2;
float yAxisv2;
float xAxisv3;
float yAxisv3;
float xAxisv4;
float yAxisv4;
float rv2;
float RandomNumber;
String message;
float s;
int l;
boolean Animate;
boolean moveRight;
boolean moveLeft;
void setup() {
  size(500, 500);
  x = width-65;
  y = height/2;
  message = "Start";
  r = 100;
  xPos = width-r;
  yPos = height-r;
  xAxis = 30;
  yAxis = 30;
  xAxisv2 = 30;
  yAxisv2 = 30;
  xAxisv3 = 30;
  yAxisv3 = 30;
  xAxisv4 = 30;
  yAxisv4 = 30;
  s = 0;
  l = 0;
  //RandomNumber = 3;
  rv2 = 20;
  Animate = true;
  moveRight = true;
  moveLeft = false;
  RandomNumber();
}

void draw() {
  //frameRate(500);
  background(250);
  circle(x, y, r);
  /*fill(0,0,255);
   text(message,100,200);
   textSize(100);*/
  //move();
  //Obstacles();
  //frameRate(0.5);
  //xAxis = xAxis + 40;
  circle(xAxis, yAxis, rv2);
  circle(xAxisv2, yAxisv2*5, rv2);
  circle(xAxisv3, yAxisv3*10, rv2);
  circle(xAxisv4, yAxisv4*15, rv2);

  if (RandomNumber == 0) {
    if (Animate) {
      if (moveRight) {
        xAxis++;
        if (xAxis >= width - rv2/2) {
          moveRight = false;
        }
      } else {
        xAxis--;
        if (xAxis == 30) {
          moveRight = true;
          Animate = false;
          RandomNumber();
        }
      }
    }
  }


  if (RandomNumber == 1) {
    //println(xAxisv2);
    if (Animate) {
      if (moveRight) {
        xAxisv2++;
        if (xAxisv2 >= width - rv2/2) {
          moveRight = false;
        }
      } else {
        xAxisv2--;
        if (xAxisv2 == 30) {
          moveRight = true;
          Animate = false;
          RandomNumber();
        }
      }
    }
  }


  if (RandomNumber == 2) {
    //println(xAxisv3);
    if (Animate) {
      if (moveRight) {
        xAxisv3++;
        if (xAxisv3 >= width - rv2/2) {
          moveRight = false;
        }
      } else {
        xAxisv3--;
        if (xAxisv3 == 30) {
          moveRight = true;
          Animate = false;
          RandomNumber();
        }
      }
    }
  }

  if (RandomNumber == 3) {
    //println(xAxisv4);
    if (Animate) {
      if (moveRight) {
        xAxisv4++;
        if (xAxisv4 >= width - rv2/2) {
          moveRight = false;
        }
      } else {
        xAxisv4--;
        if (xAxisv4 == 30) {
          moveRight = true;
          Animate = false;
          RandomNumber();
        }
      }
    }
  }


  GameOver();
}

void move() {

  if (key =='w') {
    y = y - 100;
  } else if (key == 's') {
    y = y + 100;
  }
  if (y >= 500) {
    y = width/2;
  } else if (y<=0) {
    y=height/2;
  }
}


//void Obstacles(){
//  xAxis = 30;
//  yAxis = 30;
//  for(int i=1;i<250;i = i + 5){
//    circle(xAxis,yAxis*i,20);
//  }
//  xAxis = xAxis + 1;
//}

void keyPressed() {
  move();
}

void GameOver() {
  //println(dist(x,y,xAxis,yAxis));
  if (dist(x, y, xAxis, yAxis)<=(rv2/2)+(r/2)) {
    fill(0);
    //textSize(50);
    text("Game Over", width/2, height/2);
    text("Score:", width/2, (height/2)+40);
    text(round(s), width/2+40, (height/2)+40);
    noLoop();
  } else if (dist(x, y, xAxisv2, yAxisv2*5)<=(rv2/2)+(r/2)) {
    //print(dist(x,y,xAxisv2,yAxisv2));
    fill(0);
    //textSize(50);
    text("Game Over", width/2, height/2);
    text("Score:", width/2, (height/2)+40);
    text(round(s), width/2+40, (height/2)+40);
    noLoop();
  } else if (dist(x, y, xAxisv3, yAxisv3*10)<=(rv2/2)+(r/2)) {
    fill(0);
    //textSize(50);
    text("Game Over", width/2, height/2);
    text("Score:", width/2, (height/2)+40);
    text(round(s), width/2+40, (height/2)+40);
    noLoop();
  } else if (dist(x, y, xAxisv4, yAxisv4*15)<=(rv2/2)+(r/2)) {
    fill(0);
    //textSize(50);
    text("Game Over", width/2, height/2);
    text("Score:", width/2, (height/2)+40);
    text(round(s), width/2+40, (height/2)+40);
    noLoop();
  } else {
    s = s + 0.25;
  }
}
