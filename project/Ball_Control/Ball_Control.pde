float x; 
float y; 
float radius; 
float xAxis = 30; 
float yAxis = 30; 
float xAxisv2; 
float yAxisv2; 
float xAxisv3;
float yAxisv3;
float xAxisv4;
float yAxisv4;
float radiusv2;
float RandomNumber; 
float RandomNumberV2;
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
PImage img;
void setup() {
  size(500, 500);
  img = loadImage("dodgeball-court.jpg");
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
  RandomNumberV2 = 5;
  RandomNumber = 5;
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
  image(img,0,0,500,500);
  fill(#F5AF19);
  circle(x, y, radius);
  circle(xAxis, yAxis, radiusv2);
  circle(xAxisv2, yAxisv2*5, radiusv2);
  circle(xAxisv3, yAxisv3*10, radiusv2);
  circle(xAxisv4, yAxisv4*15, radiusv2);

  if (RandomNumber == 0 || RandomNumberV2 == 0){
    if (Animate) {
      if (moveRight) {
        xAxis = xAxis + speed;
        if (xAxis >= width - radiusv2/2) {
          moveRight = false;
        }
      } 
      else {
        xAxis = xAxis - 5;
        if (xAxis <= 30) {
          while (xAxis != 30){
            if(xAxis > 30){
            xAxis = xAxis - 1;
          }
          else if(xAxis < 30){
            xAxis = xAxis + 1;
          }
          else{
            break;
          }
          
          }
          moveRight = true;
          Animate = false;
          RandomNumber();
        }
    }
  }
  }


  if (RandomNumber == 1 || RandomNumberV2 == 1) {
    if (Animate) {
      if (moveRight) {
        xAxisv2 = xAxisv2 + speed;
        if (xAxisv2 >= width - radiusv2/2) {
          moveRight = false;
        }
      } 
      else {
        xAxisv2 = xAxisv2 - 5;
        if (xAxisv2 <= 30) {
         while (xAxisv2 != 30){
            if(xAxisv2 > 30){
            xAxisv2 = xAxisv2 - 1;
          }
          else if(xAxisv2 < 30){
            xAxisv2 = xAxisv2 + 1;
          }
          else{
            break;
          }
          
          }
          moveRight = true;
          Animate = false;
          RandomNumber();
        }
    }
    }
  }


  if (RandomNumber == 2 || RandomNumberV2 == 2) {
    if (Animate) {
      if (moveRight) {
        xAxisv3 = xAxisv3 + speed;
        if (xAxisv3 >= width - radiusv2/2) {
          moveRight = false;
        }
      } 
      else {
          xAxisv3 = xAxisv3 - 5;
          if (xAxisv3 <= 30) {  
            while (xAxisv3 != 30){
              if(xAxisv3 > 30){
              xAxisv3 = xAxisv3 - 1;
            }
            else if(xAxisv3 < 30){
              xAxisv3 = xAxisv3 + 1;
            }
            else{
              break;
            }
            
            }
            moveRight = true;
            Animate = false;
            RandomNumber();
          }
    }
  }
  }

  if (RandomNumber == 3 || RandomNumberV2 == 3) {
    if (Animate) {
      if (moveRight) {
        xAxisv4 = xAxisv4 + speed;
        if (xAxisv4 >= width - radiusv2/2) {
          moveRight = false;
        }
      } 
      else {
        xAxisv4 = xAxisv4 - 5;
        if (xAxisv4 <= 30) {
          while (xAxisv4 != 30){
            if(xAxisv4 > 30){
            xAxisv4 = xAxisv4 - 1;
          }
          else if(xAxisv4 < 30){
            xAxisv4 = xAxisv4 + 1;
          }
          else{
            break;
          }
          
          }
          moveRight = true;
          Animate = false;
          RandomNumber();
        }
      }
    }
  }
  fill(0);
  textSize(20);
  text("Level"+" " + level, 410, 40);
  text("Score" +" " + roundscore,410,60);
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


void keyPressed() {
  move();
}
