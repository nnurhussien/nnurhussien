float x; //xAxis of the big circle
float y; //yAxis of the big circle
float radius; //radius of the big circle
float xAxis = 30; //x axis of the  1st small circle above
float yAxis = 30; //y axis of the 1st small circle above
float xAxisv2; //x axis of the 2nd small circle above
float yAxisv2; // y axis of the 2nd small circle above 
float xAxisv3;
float yAxisv3;
float xAxisv4;
float yAxisv4;
float radiusv2;
float RandomNumber; 
String message;
float score;
int level;
boolean Animate;
boolean moveRight;
boolean moveLeft;
int roundscore;
float speed;
boolean speedcheck;
boolean levelcheck;
void setup() {
  size(500, 500);
  x = width-65;
  y = height/2;
  message = "Start";
  radius = 100;
  xAxis = 30;
  yAxis = 30;
  xAxisv2 = 30;
  yAxisv2 = 30;
  xAxisv3 = 30;
  yAxisv3 = 30;
  xAxisv4 = 30;
  yAxisv4 = 30;
  score = 0;

  //RandomNumber = 3;
  radiusv2 = 20;
  Animate = true;
  moveRight = true;
  moveLeft = false;
  RandomNumber();
  level = 0;
  roundscore = 0;
  speed = 1;
  speedcheck = false;
  levelcheck = false;
}

void draw() {
  ScoreLevel();
  fill(255);
  background(250);
  circle(x, y, radius);
  circle(xAxis, yAxis, radiusv2);
  circle(xAxisv2, yAxisv2*5, radiusv2);
  circle(xAxisv3, yAxisv3*10, radiusv2);
  circle(xAxisv4, yAxisv4*15, radiusv2);

  if (RandomNumber == 0) {
    if (Animate) {
      if (moveRight) {
        xAxis = xAxis + speed;
        if (xAxis >= width - radiusv2/2) {
          moveRight = false;
        }
      } else {
        xAxis = xAxis - speed;
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
        if (xAxisv2 >= width - radiusv2/2) {
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
        if (xAxisv3 >= width - radiusv2/2) {
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
        if (xAxisv4 >= width - radiusv2/2) {
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
  fill(0);
  textSize(20);
  text("Level"+" " + level, 410, 100);
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
  } 
  else if (y<=0) {
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
