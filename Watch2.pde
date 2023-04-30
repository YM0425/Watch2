float s, m, h;

void setup() {
  size(500, 200);
  noStroke();
  smooth();
}

void draw() {
  background(255);

  //時間を取得
  s = second();
  m = minute() + (s/60.0);
  h = hour()%12 + (m/60.0);

  //秒針
  fill(149,149,149);
  float ws = map(s, 0, 60, 0, width);
  rect(0, 20, ws, 20);

  //分針
  //fill(0, 0, 255);
  float wm = map(m, 0, 60, 0, width);
  rect(0, 50, wm, 40);

  ////秒針
  //fill(255, 0, 0);
  float wh = map(h, 0, 12, 0, width);
  rect(0, 100, wh, 60);

  text(hour() + ":" + minute() + ":" + second(), width - 60, height - 10);
}
