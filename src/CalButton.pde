class CalcButton {
  // Class variables
  boolean isNumber;
  boolean isSpecial;
  float numButtonValue;
  String opButtonValue;
  String spButtonValue;
  float xpos;
  float ypos;
  int buttonW;
  int buttonH;
  boolean overBox = false;
  color buttonC;
 
  // Constructor
  CalcButton(float tempXpos, float tempYpos, int tempButtonW, int tempButtonH, color tempButtonC) {
    xpos = tempXpos;
    ypos = tempYpos;
    buttonW = tempButtonW;
    buttonH = tempButtonH;
    buttonC = tempButtonC;
    //println(numButtonValue);
  }
  
  CalcButton asNumber(float tempNumButtonValue) {
    isNumber = true;
    numButtonValue = tempNumButtonValue;
    return this;
  }
  CalcButton asOperator(String tempOpButtonValue) {
    opButtonValue = tempOpButtonValue;
    return this;
  }
  CalcButton asSpecial(String buttonValue) {
    isSpecial = true;
    spButtonValue = buttonValue;
    return this;
  }
 
  // Draw the button on the canvas
  void display() {
    // Draw rounded edged button on canvas
    if(isNumber) {
      fill(buttonC);
      stroke(0);
      strokeWeight(2);
      rect(xpos, ypos, buttonW, buttonH, 10);
      fill(122,44,22);
      textSize(24);
      text(int(numButtonValue), xpos+15, ypos+30);
    } else if (isSpecial) {
      fill(buttonC);
      stroke(0);
      strokeWeight(2);
      rect(xpos, ypos, buttonW, buttonH, 10);
      fill(0);
      textSize(24);
      text(spButtonValue, xpos+15, ypos+30);
    } else if (opButtonValue == "+/-") {
      fill(buttonC);
      stroke(0);
      strokeWeight(2);
      rect(xpos, ypos, buttonW, buttonH, 10);
      fill(0);
      textSize(18);
      text(opButtonValue, xpos+8, ypos+30);
    } else if (opButtonValue == "%") {
      fill(buttonC);
      stroke(0);
      strokeWeight(2);
      rect(xpos, ypos, buttonW, buttonH, 10);
      fill(0);
      textSize(24);
      text(opButtonValue, xpos+12, ypos+30);
    } else if (opButtonValue == "Sqrt") {
      fill(buttonC);
      stroke(0);
      strokeWeight(2);
      rect(xpos, ypos, buttonW, buttonH, 10);
      fill(0);
      textSize(17);
      text(opButtonValue, xpos+6, ypos+35);
    } else if (opButtonValue == "Sin") {
      fill(buttonC);
      stroke(0);
      strokeWeight(2);
      rect(xpos, ypos, buttonW, buttonH, 10);
      fill(0);
      textSize(19);
      text(opButtonValue, xpos+8, ypos+30);
    } else if (opButtonValue == "Cos") {
      fill(133);
      stroke(0);
      strokeWeight(2);
      rect(xpos, ypos, buttonW, buttonH, 10);
      fill(0);
      textSize(19);
      text(opButtonValue, xpos+7, ypos+30);
    } else if (opButtonValue == "-") {
      fill(buttonC);
      stroke(0);
      strokeWeight(2);
      rect(xpos, ypos, buttonW, buttonH, 10);
      fill(0);
      textSize(24);
      text(opButtonValue, xpos+18, ypos+30);
    } else if (opButtonValue == "Sq") {
      fill(buttonC);
      stroke(0);
      strokeWeight(2);
      rect(xpos, ypos, buttonW, buttonH, 10);
      fill(0);
      textSize(19);
      text(opButtonValue, xpos+12, ypos+30);
    } else if (opButtonValue == "C") {
      fill(buttonC);
      stroke(0);
      strokeWeight(2);
      rect(xpos, ypos, buttonW, buttonH, 10);
      fill(0);
      textSize(24);
      text(opButtonValue, xpos+11, ypos+30);
    } else if (opButtonValue == "Pow") {
      fill(buttonC);
      stroke(0);
      strokeWeight(2);
      rect(xpos, ypos, buttonW, buttonH, 10);
      fill(0);
      textSize(18);
      text(opButtonValue, xpos+5, ypos+30);
    }  else {
      fill(buttonC);
      stroke(0);
      strokeWeight(2);
      rect(xpos, ypos, buttonW, buttonH, 10);
      fill(0);
      textSize(24);
      text(opButtonValue, xpos+15, ypos+30);
    }
  }
 
  // Handle mouse actions
  void clickButton() {
    overBox = mouseX > xpos && mouseX < xpos+buttonW && mouseY > ypos && mouseY < ypos+buttonH;
  }
}
