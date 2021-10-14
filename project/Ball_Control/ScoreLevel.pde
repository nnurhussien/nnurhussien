void ScoreLevel() {
   roundscore = round(score);
  if (roundscore%200 == 0) {
    levelcheck = true;
    if (levelcheck) {
      level = (roundscore/200);
      levelcheck = false;
    }
    
    if (level>1) {
      speedcheck = true;
      if (speedcheck) {
        speed = level;
        }
      }
    }
    
   else {
    score = score + 0.25;
  }
}
