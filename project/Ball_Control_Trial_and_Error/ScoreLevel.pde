void ScoreLevel() {
   roundscore = round(score);
  //println(rs);
  //print(" l: "+l);
  if (roundscore%200 == 0) {
    levelcheck = true;
    if (levelcheck) {
      level = roundscore/200;
      levelcheck = false;
    }
    if (level>1) {
      speedcheck = true;
      if (speedcheck) {
        speed = 3;
        xAxis = xAxis + speed;
        if(xAxis<=30){
          xAxis = 30;
          speed = 0;
        }
        else{
          xAxis = xAxis - 1;
          if(xAxis==30){
          xAxis = 30;
        }
        }
      }
    }
   else {
    score = score + 0.25;
  }
}


}
