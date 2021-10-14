void GameOver() {
  if (dist(x, y, xAxis, yAxis)<=(radiusv2/2)+(radius/2)) {
    fill(0);
    text("Game Over", width/2, height/2);
    text("Score:", width/2, (height/2)+40);
    text(round(score), width/2+55, (height/2)+40);
    noLoop();
  } else if (dist(x, y, xAxisv2, yAxisv2*5)<=(radiusv2/2)+(radius/2)) {
    fill(0);
    //textSize(50);
    text("Game Over", width/2, height/2);
    text("Score:", width/2, (height/2)+40);
    text(round(score), width/2+55, (height/2)+40);
    noLoop();
  } else if (dist(x, y, xAxisv3, yAxisv3*10)<=(radiusv2/2)+(radius/2)) {
    fill(0);
    text("Game Over", width/2, height/2);
    text("Score:", width/2, (height/2)+40);
    text(round(score), width/2+55, (height/2)+40);
    noLoop();
  } else if (dist(x, y, xAxisv4, yAxisv4*15)<=(radiusv2/2)+(radius/2)) {
    fill(0);
    text("Game Over", width/2, height/2);
    text("Score:", width/2, (height/2)+40);
    text(round(score), width/2+55, (height/2)+40);
    noLoop();
  } else {
    score = score + 0.25;
  }
}
