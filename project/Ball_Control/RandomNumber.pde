void RandomNumber() {
  if (xAxis == 30 || xAxisv2 == 30 || xAxisv3 == 30 || xAxisv4 == 30)
  {
    Animate = true;
    RandomNumber = round(random(0,3));
    println(RandomNumber);
  }
}
